const service = require("../services/members.service.js");

// Create and Save a new Member
exports.create = (req, res) => {};

// Retrieve all Members from the database.
exports.findAll = (req, res) => {
  service.findAll(req, res);
};

// Find a single Member with an id
exports.findOne = (req, res) => {
  service.findOne(req, res);
};

// Find Members is Admin
exports.findAdmins = (req, res) => {
  service.findAdmins(req, res);
};

// Find Members has birtday in current month
exports.findBirthday = (req, res) => {
  service.findBirthday(req, res);
};

// Update a Member by the id in the request
exports.update = (req, res) => {
  service.update(req, res);
};

// Delete a Member with the specified id in the request
exports.delete = (req, res) => {};

// Delete all Members from the database.
exports.deleteAll = (req, res) => {};

// Upload avatar
exports.uploadAvatar = (req, res) => {
  service.uploadAvatar(req, res);
};

// Retrieve roles
exports.findRoles = (req, res) => {
  service.findRoles(req, res);
};

// Retrieve levels
exports.findLevels = (req, res) => {
  service.findLevels(req, res);
};
