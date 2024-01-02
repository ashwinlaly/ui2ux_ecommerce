const { DataTypes } = require('sequelize');
const { sequelize } = require("../Config/db");

const Category = sequelize.define('Category', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false,  
        },
        isActive: {
            type: DataTypes.STRING
        }
    }, {
        timestamps: true,
        tableName: "categories"
    }
);

module.exports = Category;