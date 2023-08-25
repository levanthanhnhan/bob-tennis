module.exports = (app) => {
  const controller = require("../controllers/payos.controller.js");

  var router = require("express").Router();
  router.post("/webhook", controller.webhook);

  app.use("/payos", router);
};
