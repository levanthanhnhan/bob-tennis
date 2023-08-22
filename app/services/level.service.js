const pool = require("./db.service.js");

const findAll = (request, response) => {
    pool.query(
        'SELECT * FROM level ORDER BY level_id ASC', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findAll,
}