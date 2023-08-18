module.exports = app => {
    const controller = require("../controllers/fund.controller.js");
  
    var router = require("express").Router();

    router.get('/', controller.findFundMember)
  
    // Webhook PayOS (IPN)
    router.post("/webhook", controller.webhook);
  
    app.use('/api/fund', router);
  };