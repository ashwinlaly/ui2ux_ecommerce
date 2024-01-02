const { USER } = require("../../Constant");
const { check, validationResult } = require('express-validator');
const { errorFormatter } = require('../../Utils/auth-helpers');
const User = require("../../Model/User");



module.exports = [
    check('name')
        .trim()
        .escape()
        .notEmpty()
        .withMessage("Name Cannot be Empty")
        .bail()
        .isLength({min:4, max:15})
        .withMessage("Enter valid Name")
        .bail(),
    check('email')
        .trim()
        .escape()
        .notEmpty()
        .withMessage("Email Cannot be Empty")
        .bail()
        .isEmail()
        .withMessage("Email Format is Invalid")
        .bail()
        .isLength({min:6, max:50})
        .withMessage("Enter valid Email")
        .bail(),
    check("password")
        .trim()
        .escape()
        .notEmpty()
        .withMessage("Password Cannot be Empty")
        .bail()
        .isLength({min:5, max:15})
        .withMessage("Password must be minimum 5 and Maximum 15")
        .bail(),
    (req, res, next) => {
        let errors = validationResult(req).formatWith(errorFormatter);
        if(!errors.isEmpty()){
            const {code, message} = USER.USER_SIGNUP_ERROR;
            return res.status(code).json({code, message, error: errors});
        }
        next()
    }
];