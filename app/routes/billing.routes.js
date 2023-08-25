module.exports = (app) => {
  const controller = require("../controllers/billing.controller.js");

  var router = require("express").Router();
  router.post("/billingByMember", controller.billingByMember);

  app.use("/api/billing", router);
};
