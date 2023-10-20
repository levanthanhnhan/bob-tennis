const db = require("./db.service.js");

const find = (request, response) => {
    var year = request.body.year
    var quarter = request.body.quarter

    db.pool.query(
        'SELECT * FROM payments WHERE year = ' + year + ' AND quarter = ' + quarter + ' AND invalid = false ORDER BY payment_id ASC', (error, results) => {
        if (error) {
            db.error(response, error);
            return;
        }
        response.status(200).json(results.rows)
    })
}

const insert = (request, response) => {
    var year = request.body.year
    var quarter = request.body.quarter
    var amount = request.body.amount
    var description = request.body.description

    db.pool.query(
        "INSERT INTO payments( " +
          "year, quarter, amount, description) " +
          "VALUES ($1, $2, $3, $4)",
        [
            year,
            quarter,
            amount,
            description,
        ],
        (error, results) => {
          if (error) {
            console.log(error.message);
          }
          response.status(200).json(results.rowCount)
        }
      );
}

const update = (request, response) => {
    var payment_id = request.body.payment_id
    var year = request.body.year
    var quarter = request.body.quarter
    var amount = request.body.amount
    var description = request.body.description

    db.pool.query(
        "UPDATE payments SET " +
        "year=$2, quarter=$3, amount=$4, description=$5 " +
        "WHERE payment_id = $1" +
        "",
        [
            payment_id,
            year,
            quarter,
            amount,
            description,
        ],
        (error, results) => {
          if (error) {
            console.log(error.message);
          }
          response.status(200).json(results.rowCount)
        }
      );
}

const deactive = (request, response) => {
    var payment_id = request.body.payment_id

    db.pool.query(
        "UPDATE payments SET " +
        "invalid=true " +
        "WHERE payment_id = $1" +
        "",
        [
            payment_id,
        ],
        (error, results) => {
          if (error) {
            console.log(error.message);
          }
          response.status(200).json(results.rowCount)
        }
      );
}

module.exports = {
    find,
    insert,
    update,
    deactive,
}