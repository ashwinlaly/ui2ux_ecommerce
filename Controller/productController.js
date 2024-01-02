const { Sequelize } = require("sequelize");
const { PRODUCT } = require("../Constant");
const Favourite = require("../Model/Favourite");
const Product = require("../Model/Product");

const getFavourite = async (req, res) => {
    try {
        data = await Favourite.findAll({
            where: {
                user_id: req.user_id,
                isActive: 1
            },
            attributes: ["product_id"],
            include: [{
                model: Product,
                attributes: ["image_path", "price", "name", "part_number"]
            }]
        });
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

const updateFavourite = async (req, res) => {
    let { id } = req.body;
    try {
        favouriteInfo = await Favourite.findOne({
            where: {
                user_id: req.user_id,
                product_id: id
            }
        });
        if(favouriteInfo) {
            favouriteInfo.isActive = !favouriteInfo.isActive;
            await favouriteInfo.save();
            const {code, message} = (favouriteInfo.isActive) ? PRODUCT.PRODUCT_ADDED_TO_FAVOURITE : PRODUCT.PRODUCT_REMOVED_FAVOURITE;
            return res.status(code).json({ code, message });
        } else {
            await Favourite.create({user_id: req.user_id, product_id: id});
            const {code, message} = PRODUCT.PRODUCT_ADDED_TO_FAVOURITE;
            return res.status(code).json({message, code});
        }
    } catch(error) {
        const {code, message} = PRODUCT.ERROR_PRODUCT_FAVORITE;
        return res.status(code).json({message, code, error});
    }
}


module.exports = {
    getFavourite,
    updateFavourite
}
