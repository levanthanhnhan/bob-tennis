const service = require("../services/fund.service.js")

// Get fund members
exports.findFundMember = (req, res) => {
    service.findFundMember(req, res)
};

// Get max OrderCode
exports.maxOrderCode = (req, res) => {
    service.maxOrderCode(req, res)
};

// Creare Order PayOS
exports.createOrder = (req, res) => {
    service.createOrder(req, res)
};

// Webhook PayOS
exports.webhook = (req, res) => {
    console.log('Time: ' + new Date())
    console.log(req.body)
    res.status(200).json(req.body)
};