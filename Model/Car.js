const { DataTypes } = require('sequelize');
const { sequelize } = require("../Config/db");

const Car = sequelize.define('Car', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        model: {
            type: DataTypes.STRING,
            allowNull: false,  
        },
        isActive: {
            type: DataTypes.STRING
        }
    }, {
        timestamps: true,
        tableName: "cars"
    }
);

module.exports = Car;