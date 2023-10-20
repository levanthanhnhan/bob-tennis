const service = require("../services/payment.service.js")

 // Retrieve payment
exports.find = (req, res) => {
    service.find(req, res)
};

// Insert payment
exports.insert = (req, res) => {
   service.insert(req, res)
};

// Update payment
exports.update = (req, res) => {
   deactiveservice.update(req, res)
};

// Delete payment
exports.delete = (req, res) => {
   service.deactive(req, res)
};