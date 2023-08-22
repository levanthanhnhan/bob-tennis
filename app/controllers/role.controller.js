const service = require("../services/role.service.js")

 // Retrieve roles
exports.findAll = (req, res) => {
    service.findAll(req, res)
};