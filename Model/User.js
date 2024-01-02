const { Sequelize, DataTypes } = require('sequelize');
const { sequelize } = require("../Config/db");
// const Favourite = require('./Favourite');

const User = sequelize.define('User', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        firstName: {
            type: DataTypes.STRING,
            allowNull: false,  
        },
        lastName: {
            type: DataTypes.STRING
        },
        email: {
            type: DataTypes.STRING,
            unique: true
        },
        token: {
            type: DataTypes.STRING,
            unique: true
        },
        password: DataTypes.STRING,
        isActive: DataTypes.INTEGER
    }, {
        timestamps: true,
        tableName: "users"
    }
);

// User.hasMany(Favourite, {
//     foreignKey: 'user_id'
// });

module.exports = User;