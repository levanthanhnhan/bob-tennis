module.exports = app => {
    const controller = require("../controllers/payment.controller.js");
  
    var router = require("express").Router();

    // Retrieve payments
    router.post("/", controller.find);
  
    app.use('/api/payment', router);
  };