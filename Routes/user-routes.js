const express = require("express"),
      router = express.Router();

const userValidator = require("../Middleware/users");

const { verifyToken, 
        verifyUser } = require("../Utils/auth-helpers");

const userController = require("../Controller/userController");

module.exports = (function() {
    router.post("/signin", [userValidator.userSignInValidator], userController.Signin);
    router.post("/signup", [userValidator.userSignupValidator], userController.Signup);

    router.use("*", [verifyToken, verifyUser]);
    return router;
});