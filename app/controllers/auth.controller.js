const service = require("../services/auth.service.js")

// Find member has phone number
exports.findByPhoneNumber = (req, res) => {
    service.findByPhoneNumber(req, res)
};