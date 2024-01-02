const {sequelize} = require("../Config/db");
const Sequelize = require("sequelize");

const selectQuery = (query) => {
    return sequelize.query(query, { type: Sequelize.QueryTypes.SELECT });
}

module.exports = {
    selectQuery
}