const pool = require("../services/db.service.js")

const findAll = (request, response) => {
    pool.query('SELECT * FROM members ORDER BY member_id ASC', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

const findAdmins = (request, response) => {
    pool.query('SELECT * FROM members WHERE is_admin = true ORDER BY member_id ASC', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findAll,
    findAdmins
}