const { DataTypes } = require('sequelize');
const { sequelize } = require("../Config/db");
const Category = require("./Category");
const CategoryMapping = require('./CategoryMapping');

const Product = sequelize.define('Product', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false,  
        },
        price: {
            type: DataTypes.DECIMAL,
            allowNull: false,  
        },
        image_path: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        isActive: {
            type: DataTypes.STRING
        }
    }, {
        timestamps: true,
        tableName: "products"
    }
);

module.exports = Product;