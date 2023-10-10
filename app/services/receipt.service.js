const db = require("./db.service.js");

const find = (request, response) => {
    var year = request.body.year
    var quarter = request.body.quarter

    db.pool.query(
        'SELECT * FROM receipts WHERE year = ' + year + ' AND quarter = ' + quarter + ' ORDER BY receipt_id ASC', (error, results) => {
        if (error) {
            db.error(response, error);
            return;
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    find,
}