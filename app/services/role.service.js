const pool = require("./db.service.js");

const findAll = (request, response) => {
    pool.query(
        'SELECT * FROM role ORDER BY role_id ASC', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findAll,
}