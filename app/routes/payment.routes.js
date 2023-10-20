module.exports = app => {
    const controller = require("../controllers/payment.controller.js");
  
    var router = require("express").Router();

    // Retrieve payments
    router.post("/find", controller.find);

    // Insert
    router.post("/insert", controller.insert);

    // Update
    router.post("/update", controller.update);

    // Delete
    router.post("/delete", controller.delete);
  
    app.use('/api/payment', router);
  };