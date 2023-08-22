const service = require("../services/fund.service.js")

// Get fund members
exports.findFundMember = (req, res) => {
    service.findFundMember(req, res)
};

// Webhook PayOS
exports.webhook = (req, res) => {
    console.log('Time: ' + new Date())
    console.log(req.body)
    res.status(200).json(req.body)
};