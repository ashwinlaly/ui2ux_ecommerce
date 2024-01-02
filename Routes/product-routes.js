const express = require("express"),
      router = express.Router();

const { verifyToken, verifyUser } = require("../Utils/auth-helpers");

const productController = require("../Controller/productController");

module.exports = (function() {
    router.use("*", [verifyToken, verifyUser]);
    router.get("/favourite", productController.getFavourite);
    router.post("/update/favourite", productController.updateFavourite);
    return router;
});