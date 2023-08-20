const service = require("../services/auth.service.js")

exports.verificationCode = (req, res) => {
    service.verificationCode(req, res)
};

exports.signInWithPhoneNumber = (req, res) => {
    service.signInWithPhoneNumber(req, res)
};