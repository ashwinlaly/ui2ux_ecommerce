const express = require("express"),
      router = express.Router();

const carController = require("../Controller/carController");

module.exports = (function() {
    router.get("/", carController.getList);
    return router;
});