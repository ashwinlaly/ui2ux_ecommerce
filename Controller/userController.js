const User = require("../Model/User");
const { USER } = require("../Constant");

const { 
        comparePassword, 
        accessToken, 
        hashPassword } = require('../Utils/auth-helpers');

const Signup = async (req, res) => {
    let {name, lname, email, password} = req.body;
    let userExists = await checkEmailExists(req.body);
    try {
        if(userExists) {
            const {code, message} = USER.USER_EMAIL_EXISTS;
            return res.status(code).json({code, message});
        }
        password = await hashPassword(password);
        let user = await User.create({
            firstName: name,
            lastName: lname,
            isActive: 1,
            email,
            password
        });
        if(user.id) {
            const {code, message} = USER.USER_SIGNUP_SUCCESS;
            return res.status(code).json({ code, message });
        } else {
            const {code, message} = USER.USER_SIGNUP_ERROR;
            return res.status(code).json({code, message });
        }
    } catch(error) {
        const {code, message} = USER.USER_SIGNUP_ERROR;
        return res.status(code).json({code, message, error});
    }
}

const Signin = async (req, res) => {
    let {email, password} = req.body;
    let userExists = await checkEmailExists(req.body);
    try {
        if(userExists) {
            data = await accessToken({id: userExists.id, email});
            isValid = await comparePassword(password, userExists.password);
            if (isValid) {
                userExists.token = data;
                await userExists.save();
                const {code, message} = USER.USER_LOGIN_SUCCESS;
                return res.status(code).json({ data, code, message });
            } else {
                return res.status(code).json(USER.USER_LOGIN_ERROR);
            }
        } else {
            const {code, message} = USER.USER_DOENT_EXISTS;
            return res.status(code).json({code, message});
        }
    } catch(error) {
        const {code, message} = USER.USER_DOENT_EXISTS;
        return res.status(code).json({code, message, error});
    }
}

const checkEmailExists = async (req) => {
    let user = await User.findOne({
        where:{
            email: req.email
        }
    });
    return user;
}

module.exports = {
    Signup,
    Signin
}