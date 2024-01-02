const express = require("express"),
      router = express.Router();

const categoryController = require("../Controller/categoryController");

module.exports = (function() {
    router.get("/", categoryController.getList);
    router.get("/feature-filter/:type?", categoryController.getFeatureProducts);
    router.get("/currency/:type?", categoryController.getCurrencyInfo);
    return router;
});