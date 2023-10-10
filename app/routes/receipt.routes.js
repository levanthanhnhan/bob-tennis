module.exports = app => {
    const controller = require("../controllers/receipt.controller.js");
  
    var router = require("express").Router();

    // Retrieve receipts
    router.post("/", controller.find);
  
    app.use('/api/receipt', router);
  };