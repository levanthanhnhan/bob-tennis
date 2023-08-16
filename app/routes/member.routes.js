module.exports = app => {
    const members = require("../controllers/member.controller.js");
  
    var router = require("express").Router();
  
    // Create a new member
    router.post("/", members.create);
  
    // Retrieve all members
    router.get("/", members.findAll);
  
    // Retrieve all admin members
    router.get("/admins", members.findAdmins);
  
    // Retrieve all members has birthday in current month
    router.get("/birthday", members.findBirthday);
  
    // Retrieve a single member with id
    router.get("/:id", members.findOne);
  
    // Update a member with id
    router.put("/:id", members.update);
  
    // Delete a member with id
    router.delete("/:id", members.delete);
  
    // Create a new member
    router.delete("/", members.deleteAll);
  
    app.use('/api/members', router);
  };