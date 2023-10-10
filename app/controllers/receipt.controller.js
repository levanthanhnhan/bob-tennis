const service = require("../services/receipt.service.js")

 // Retrieve receipt
exports.find = (req, res) => {
    service.find(req, res)
};