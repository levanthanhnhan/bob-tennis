module.exports = app => {
    const controller = require("../controllers/level.controller.js");
  
    var router = require("express").Router();

    // Retrieve levels
    router.get("/", controller.findAll);
  
    app.use('/api/level', router);
  };