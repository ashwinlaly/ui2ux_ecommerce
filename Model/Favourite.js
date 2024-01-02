const { DataTypes } = require('sequelize');
const { sequelize } = require("../Config/db");
const User = require('./User');
const Product = require('./Product');

const Favourite = sequelize.define('Favourite', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        user_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: "User", key: "id"
            }
        },
        product_id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: "Product", key: "id"
            }
        },
        isActive: {
            type: DataTypes.STRING
        }
    }, {
        timestamps: true,
        tableName: "favorites"
    }
);

Favourite.belongsTo(User, {
    foreignKey: 'user_id'
});

Favourite.belongsTo(Product, {
    foreignKey: 'product_id'
})

module.exports = Favourite;