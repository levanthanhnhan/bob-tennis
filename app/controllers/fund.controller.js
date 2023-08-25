const service = require("../services/fund.service.js")

// Get fund members
exports.findFundMember = (req, res) => {
    service.findFundMember(req, res);
};

// Get max OrderCode
exports.maxOrderCode = (req, res) => {
    service.maxOrderCode(req, res);
};

// Creare Order
exports.createOrder = (req, res) => {
    service.createOrder(req, res);
};