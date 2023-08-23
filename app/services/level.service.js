const db = require("./db.service.js");

const findAll = (request, response) => {
    db.pool.query(
        'SELECT * FROM level ORDER BY level_id ASC', (error, results) => {
        if (error) {
            db.error(response, error);
            return;
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findAll,
}