const express = require("express"),
      router = express.Router();

const carRoutes = require("./car-routes")();
const userRoutes = require("./user-routes")();
const categoryRoutes = require("./category-routes")();
const productRoutes = require("./product-routes")();

module.exports = (function() {
    router.use("/user", userRoutes);
    router.use("/vechile", carRoutes);
    router.use("/product", productRoutes);
    router.use("/category", categoryRoutes);
    return router;
});