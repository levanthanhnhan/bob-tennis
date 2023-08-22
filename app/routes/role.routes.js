module.exports = app => {
    const controller = require("../controllers/role.controller.js");
  
    var router = require("express").Router();

    // Retrieve roles
    router.get("/", controller.findAll);
  
    app.use('/api/role', router);
  };