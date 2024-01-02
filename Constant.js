const OK_CODE =  200;
const Created_CODE =  201;
const Accepted_CODE =  202;

const Bad_Request_CODE = 400;
const Unauthorized_CODE = 401;
const Payment_Required_CODE = 402;
const Forbidden_CODE = 403;
const Not_Found_CODE = 404;
const Method_Not_Allowed_CODE = 405;
const Not_Acceptable_CODE = 406;
const Request_Timeout_CODE = 408;

const Internal_Server_Error_CODE = 500;
const Not_Implemented_CODE = 501;
const Bad_Gateway_CODE = 502;
const Service_Unavailable_CODE = 503;
const Gateway_Timeout_CODE = 504;

const CARS = {
    GET_ALL_CARS_SUCCESS: {
        code: OK_CODE,
        message: "GET_ALL_CARS_SUCCESS"
    },
    GET_ALL_CARS_ERROR: {
        code: Not_Found_CODE,
        message: "GET_ALL_CARS_ERROR"
    }
}

const CATEGORY = {
    GET_ALL_CATEGORY_SUCCESS: {
        code: OK_CODE,
        message: "GET_ALL_CATEGORY_SUCCESS"
    },
    GET_ALL_CATEGORY_ERROR: {
        code: Not_Found_CODE,
        message: "GET_ALL_CATEGORY_ERROR"
    }
}

const PRODUCT = {
    GET_ALL_PRODUCT_SUCCESS: {
        code: OK_CODE,
        message: "GET_ALL_PRODUCT_SUCCESS"
    },
    GET_ALL_PRODUCT_ERROR: {
        code: Not_Found_CODE,
        message: "GET_ALL_PRODUCT_ERROR"
    },
    ERROR_PRODUCT_FAVORITE:{
        code: Not_Found_CODE,
        message: "ERROR_PRODUCT_FAVORITE"
    },
    PRODUCT_ADDED_TO_FAVOURITE: {
        code: OK_CODE,
        message: "PRODUCT_ADDED_TO_FAVOURITE"
    },
    PRODUCT_REMOVED_FAVOURITE: {
        code: OK_CODE,
        message: "PRODUCT_REMOVED_FAVOURITE"
    },
}

const USER = {
    TOKEN_EXPIRED: "TOKEN_EXPIRED",
    INVALID_TOKEN: "INVALID_TOKEN",
    INVALID_USER_ACCESS: "INVALID_USER_ACCESS",

    USER_SIGNUP_ERROR: {
        code: Unauthorized_CODE,
        message: "USER_SIGNUP_ERROR",
    },
    USER_SIGNUP_SUCCESS: {
        code: OK_CODE,
        message: "USER_SIGNUP_SUCCESS",
    },
    USER_EMAIL_EXISTS: {
        code: Unauthorized_CODE,
        message: "USER_EMAIL_EXISTS",
    },
    USER_LOGIN_ERROR: {
        code: Unauthorized_CODE,
        message: "USER_LOGIN_ERROR",
    },
    USER_LOGIN_SUCCESS: {
        code: OK_CODE,
        message: "USER_LOGIN_SUCCESS",
    },
    USER_DOENT_EXISTS: {
        code: Not_Found_CODE,
        message: "USER_DOENT_EXISTS"
    }
}

const CURRENCY = {
    GET_ALL_CURRENCY_SUCCESS: {
        code: OK_CODE,
        message: "GET_ALL_CURRENCY_SUCCESS"
    },
    GET_ALL_CURRENCY_ERROR: {
        code: Not_Found_CODE,
        message: "GET_ALL_CURRENCY_ERROR"
    }
}

module.exports = {
    INVALID_URL: "INVALID REQUEST",
    CONNETION_ERROR : "CONNETION_ERROR",
    CONNETION_SUCCESS : "CONNETION_SUCCESS",

    INVALID_PAYLOAD_PROVIDED: {
        code: 406,
        message: "INVALID PAYLOAD PROVIDED"
    },

    INVALID_USER_REQUEST_ACCESS: {
        code: 404,
        message: "INVALID_USER_ACCESS"
    },

    USER_SIGNIN_SUCCESS: "USER_SIGNIN_SUCCESS",
    USER_SIGNIN_ERROR: "USER_SIGNIN_ERROR",

    CARS,
    USER,
    PRODUCT,
    CURRENCY,
    CATEGORY,
}