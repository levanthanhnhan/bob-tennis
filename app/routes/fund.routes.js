module.exports = app => {
    const controller = require("../controllers/fund.controller.js");
  
    var router = require("express").Router();

    // Define route b.o.b
    router.get('/', controller.findFundMember)
    router.get('/maxOrderCode', controller.maxOrderCode)
  
    // Define route PayOS
    router.post("/webhook", controller.webhook);
    router.post("/createOrder", controller.createOrder);
  
    app.use('/api/fund', router);
  };