const Car = require("../Model/Car");
const { CARS } = require("../Constant");

const getList = async (req, res) => {
    try {
        data = await Car.findAll();
        if(data) {
            const {code, message} = CARS.GET_ALL_CARS_SUCCESS;
            return res.status(code).json({ data, code, message });
        } else {
            const {code, message} = CARS.GET_ALL_CARS_ERROR;
            return res.status(code).json({message, code});
        }
    } catch(error) {
        const {code, message} = CARS.GET_ALL_CARS_ERROR;
        return res.status(code).json({message, code, error});
    }
}


module.exports = {
    getList
}