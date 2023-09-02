module.exports = app => {
    const controller = require("../controllers/auth.controller.js");
  
    var router = require("express").Router();
  
    // Retrieve member has phone number
    router.post("/phoneNumber", controller.findByPhoneNumber);

    // Authenticated Token
    router.post("/isAuthenticated", controller.isAuthenticated);
  
    app.use('/auth', router);
  };