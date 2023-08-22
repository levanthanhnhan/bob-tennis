const service = require("../services/level.service.js")

 // Retrieve levels
exports.findAll = (req, res) => {
    service.findAll(req, res)
};