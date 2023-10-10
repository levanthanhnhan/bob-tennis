const service = require("../services/payment.service.js")

 // Retrieve payment
exports.find = (req, res) => {
    service.find(req, res)
};