const db = require("./db.service.js");

const billingByMember = (request, response) => {
  var data = request.body;
  db.pool.query(
    "SELECT * FROM billing WHERE member_id = $1 AND year = $2 AND quarter = $3 ORDER BY billing_id ASC",
    [data.member_id, data.year, data.quarter],
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rows);
    }
  );
};

module.exports = {
  billingByMember,
};
