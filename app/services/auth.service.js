const db = require("../services/db.service.js");
const firebase = require("../firebase/admin");

const findByPhoneNumber = (request, response) => {
  var phoneNumber = request.body.phoneNumber;

  db.pool.query(
    "SELECT COUNT(m.member_id) " +
      "FROM members AS m " +
      "WHERE m.phone_number like '%" +
      phoneNumber +
      "%'" +
      "",
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rows);
    }
  );
};

const isAuthenticated = async (request, response) => {
  const token = request.body.token;
  await firebase
    .auth()
    .verifyIdToken(token)
    .then(() => response.status(200).json(true))
    .catch(() => response.status(200).json(false));

  return 
};

module.exports = {
  findByPhoneNumber,
  isAuthenticated,
};
