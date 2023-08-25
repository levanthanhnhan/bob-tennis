module.exports = app => {
    const controller = require("../controllers/fund.controller.js");
  
    var router = require("express").Router();
    router.get('/', controller.findFundMember);
    router.get('/maxOrderCode', controller.maxOrderCode);
    router.post('/createOrder', controller.createOrder);
  
    app.use('/api/fund', router);
  };