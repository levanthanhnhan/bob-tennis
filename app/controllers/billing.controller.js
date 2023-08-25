const service = require("../services/billing.service");

// Get billing by Member
exports.billingByMember = (req, res) => {
    service.billingByMember(req, res)
}