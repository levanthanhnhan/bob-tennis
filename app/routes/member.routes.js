module.exports = app => {
    const controller = require("../controllers/member.controller.js");
    const multer = require('multer')
    const upload = multer({
        storage: multer.memoryStorage()
    })
    var router = require("express").Router();
  
    // Create a new member
    router.post("/", controller.create);
  
    // Retrieve all members
    router.get("/", controller.findAll);
  
    // Retrieve all admin members
    router.get("/admins", controller.findAdmins);
  
    // Retrieve all members has birthday in current month
    router.get("/birthday", controller.findBirthday);
  
    // Retrieve a single member with id
    router.get("/:id", controller.findOne);
  
    // Update a member with id
    router.put("/:id", controller.update);
  
    // Delete a member with id
    router.delete("/:id", controller.delete);
  
    // Create a new member
    router.delete("/", controller.deleteAll);

    // Upload avatar
    router.post("/uploadAvatar", upload.single("filename"), controller.uploadAvatar);

    // Update member
    router.post("/update", controller.update);
  
    app.use('/api/members', router);
  };