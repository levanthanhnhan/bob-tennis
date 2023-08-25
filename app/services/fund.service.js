const db = require("./db.service.js");
const payOS = require("./payOS.service.js");

const findFundMember = (request, response) => {
  db.pool.query(
    "SELECT m.member_name, m.sort_name, f.* " +
      "FROM members AS m " +
      "INNER JOIN fund AS f ON m.member_id = f.member_id " +
      "ORDER BY m.member_id ASC",
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
    "SELECT order_code FROM billing ORDER BY order_code DESC LIMIT 1",
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
  // Create order link by PayOS
  var res = await payOS.createOrder(request.body);

  // Error from PayOS
  if (res == null) response.status(500).json("PayOS Create Link Error");

  // Response code
  // 00: success
  // Other: error description
  if (res.code == "00") {
    insertOrder(request.body, res.data);
    response.status(200).json({ code: 0, desc: res.data.checkoutUrl });
  } else {
    response.status(200).json({ code: 1, desc: res.desc });
  }
};

const insertOrder = (data, dataPayOS) => {
  db.pool.query(
    "INSERT INTO billing( " +
      "order_code, member_id, year, quarter, amount, description, reference, transaction_time, payment_id, status) " +
      "VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)",
    [
      data.orderCode,
      data.memberId,
      data.year,
      data.quarter,
      dataPayOS.amount,
      dataPayOS.description,
      "",
      "",
      dataPayOS.paymentLinkId,
      0,
    ],
    (error, results) => {
      if (error) {
        console.log(error.message);
      }
      console.log("Create billing success: " + results.rowCount);
    }
  );
};

const updateBilling = (dataPayOS) => {
  db.pool.query(
    "UPDATE billing " +
      "SET reference=$1, transaction_time=$2, status=$3 " +
      "WHERE order_code = $4 ",
    [
      dataPayOS.reference,
      dataPayOS.transactionDateTime,
      1,
      dataPayOS.orderCode,
    ],
    (error, results) => {
      if (error) {
        return false;
      }
      console.log("Update billing success: " + results.rowCount);
      return true;
    }
  );
};

const updateFundByMember = (dataPayOS) => {
  getBillingByOrderCode(dataPayOS.orderCode, function (billing) {
    var strQuery = getQuarterUpdate(billing.quarter);

    db.pool.query(
      strQuery,
      [
        parseInt(billing.member_id),
        parseInt(billing.year),
      ],
      (error, results) => {
        if (error) {
          return false;
        }
        console.log("Update fund success: " + results.rowCount);
        return true;
      }
    );
  });
};

const getBillingByOrderCode = (orderCode, callback) => {
  db.pool.query(
    "SELECT member_id, year, quarter FROM billing WHERE order_code = $1 ORDER BY member_id",
    [orderCode],
    (error, results) => {
      if (error) {
        db.error(response, error);
        return null;
      }
      return callback(results.rows[0]);
    }
  );
};

const getQuarterUpdate = (quarter) => {
  var query = "UPDATE fund ";
  query += "SET quarter" + quarter.toString() + "=1 ";
  query += "WHERE member_id=$1 AND year=$2";

  return query;
};

module.exports = {
  findFundMember,
  maxOrderCode,
  createOrder,
  updateBilling,
  updateFundByMember,
};
