const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(
    'ui2ux', 
    'root', 
    '', {
        host: "localhost", 
        dialect: "mysql"
    }
);
const connect = async () => await sequelize.authenticate();
const close = () => sequelize.close();

module.exports = {
    close,
    connect,
    sequelize
}