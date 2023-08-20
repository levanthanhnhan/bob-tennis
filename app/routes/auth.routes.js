module.exports = app => {
    const controller = require("../controllers/auth.controller.js");
  
    var router = require("express").Router();

    router.post('/verificationCode', controller.verificationCode)
    router.post('/signInWithPhoneNumber', controller.signInWithPhoneNumber)
  
    app.use('/auth', router);
  };