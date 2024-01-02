const { DataTypes } = require('sequelize'),
    { sequelize } = require("../Config/db"),
    Category = require("./Category"),
    Product = require("./Product");

const CategoryMapping = sequelize.define('CategoryMapping', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        product_id: {
            type: DataTypes.INTEGER,
            allowNull: false,  
            references: {
                model: "Product", key: "id"
            }
        },
        category_id: {
            type: DataTypes.INTEGER,
            allowNull: false,  
        },
        isActive: {
            type: DataTypes.STRING
        }
    }, {
        timestamps: true,
        tableName: "category_mapping"
    }
);
module.exports = CategoryMapping;