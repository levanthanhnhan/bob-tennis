const db = require("./db.service.js");
const payOS = require("./payOS.service.js");

const findFundMember = (request, response) => {
  db.pool.query(
    "SELECT m.member_name, m.sort_name, f.* " +
      "FROM members AS m " +
      "INNER JOIN fund AS f ON m.member_id = f.member_id " +
      "ORDER BY m.member_id ASC" +
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

const maxOrderCode = (request, response) => {
  db.pool.query(
    "SELECT order_code FROM billing ORDER BY order_code DESC LIMIT 1" + "",
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rows);
    }
  );
};

const createOrder = async (request, response) => {
  var data = request.body;
  var orderUrl = await payOS.createOrder(data);
  response.status(200).json({ orderUrl: orderUrl });
};

module.exports = {
  findFundMember,
  maxOrderCode,
  createOrder,
};
