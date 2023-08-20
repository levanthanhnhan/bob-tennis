const pool = require("./auth.service.js")
const firebase = require('../../node_modules/firebase-admin');
const auth = firebase.auth();

const signInWithPhoneNumber = (request, response) => {
    var phoneNumber = req.body.phoneNumber
    var verificationCode = req.body.verificationCode
}

const verificationCode = (req, res) => {
    var phoneNumber = req.body.phoneNumber
}

module.exports = {
    signInWithPhoneNumber,
    verificationCode,
}