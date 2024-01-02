require("dotenv").config()
const axios = require("axios");
const Category = require("../Model/Category");
const {selectQuery} = require("../Utils/db-helper");
const { CATEGORY, PRODUCT, CURRENCY } = require("../Constant");

const getList = async (req, res) => {
    try {
        data = await Category.findAll();
        if(data) {
            const {code, message} = CATEGORY.GET_ALL_CATEGORY_SUCCESS;
            return res.status(code).json({ data, code, message });
        } else {
            const {code, message} = CATEGORY.GET_ALL_CATEGORY_ERROR;
            return res.status(code).json({message, code});
        }
    } catch(error) {
        const {code, message} = CATEGORY.GET_ALL_CATEGORY_ERROR;
        return res.status(code).json({message, code, error});
    }
};

const getFeatureProducts = async (req, res) => {
    try {
        let data;
        let type = req.params.type || "all";
        if(type.toLowerCase() == "all") {
            data = await selectQuery(`select P.id, P.name, P.price, P.image_path from products as P join category_mapping as CM on CM.product_id = P.id`);
        } else {
            data = await selectQuery(`
                select P.id, P.name, P.price, P.image_path from products as P
                left join category_mapping as CM on CM.product_id = P.id
                left join categories as C on C.id = CM.category_id
                where C.name like '%${type}%'`);
        }
        if(data) {
            const {code, message} = PRODUCT.GET_ALL_PRODUCT_SUCCESS;
            return res.status(code).json({ data, code, message });
        } else {
            const {code, message} = PRODUCT.GET_ALL_PRODUCT_ERROR;
            return res.status(code).json({message, code});
        }
    } catch(error) {
        const {code, message} = PRODUCT.GET_ALL_PRODUCT_ERROR;
        return res.status(code).json({message, code, error});
    }
}

const getCurrencyInfo = async (req, res) => {
    try {
        let data;
        let type = req.params.type || '';
        if(type) {
            data = await axios({
                method: 'get',
                url: `https://api.currencyapi.com/v3/latest?apikey=${process.env.CURRENCY_CONVERSION}&currencies=${type}`,
                responseType: 'json'
            });
        } else {
            data = await axios({
                method: 'get',
                url: `https://api.currencyapi.com/v3/latest?apikey=${process.env.CURRENCY_CONVERSION}`,
                responseType: 'json'
            });
        }
        if(data) {
            const {code, message} = CURRENCY.GET_ALL_CURRENCY_SUCCESS;
            let currenyData = data?.data?.data;
            return res.status(code).json({ data: currenyData, code, message });
        } else {
            const {code, message} = CURRENCY.GET_ALL_CURRENCY_ERROR;
            return res.status(code).json({message, code});
        }
    } catch(error) {
        const {code, message} = CURRENCY.GET_ALL_CURRENCY_ERROR;
        return res.status(code).json({message, code, error});
    }
}

module.exports = {
    getList,
    getCurrencyInfo,
    getFeatureProducts
}