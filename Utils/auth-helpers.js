require("dotenv").config();
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const User = require("../Model/User");
const { USER } = require("../Constant");

const hashPassword = async (pass) => {
    try {
        const salt = await bcrypt.genSalt(10);
        const password = await bcrypt.hash(pass, salt);
        return password;
    } catch(err) {
        console.log(error);
        throw new Error(err);
    }
}

const accessToken = async (payload) => {
    try {
        let {ACCESS_TOKEN_SECRET} = process.env
        let access_token = await jwt.sign(payload, ACCESS_TOKEN_SECRET, {
            expiresIn: "1h"
        });
        return access_token;
    } catch(error) {
        console.log(error);
        throw new Error(err);
    }
}

const verifyToken = async (req, res, next) => {
    let {ACCESS_TOKEN_SECRET} = process.env;
    message = USER.INVALID_USER_ACCESS
    try {
        let access_token = req.headers['authorization'];
        if(!access_token){
            return res.status(403).send({message, code: 403})
        }
        access_token = req.headers['authorization'].split(" ")[1];
        req.user_id = await jwt.decode(access_token)["id"];
        await jwt.verify(access_token, ACCESS_TOKEN_SECRET);
    } catch(error) {
        if(error.name === "TokenExpiredError") {
            message = USER.TOKEN_EXPIRED
        } else if (error.name === "JsonWebTokenError") {
            message = USER.INVALID_TOKEN
        }
        return res.status(403).send({message, code: 403})
    }
    next();
}

const verifyUser = async (req, res, next) => {
    let userExists = await User.findByPk(req.user_id);
    if(!userExists) {
        const {code, message} = USER.INVALID_USER_REQUEST_ACCESS;
        return res.status(code).json({code, message});
    }
    next();
}

const errorFormatter = ({location, msg, param, value, nestedErrors}) => {
    return { msg, param }
}

const comparePassword = async (input_password, db_password) => {
    try {
        return await bcrypt.compare(input_password, db_password).then(result => result);
    } catch(error) {
        console.log(error)
    }
}

module.exports = {
    verifyUser,
    accessToken,
    verifyToken,
    hashPassword,
    errorFormatter,
    comparePassword
}