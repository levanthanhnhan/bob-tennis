const pool = require("../services/db.service.js");

const findByPhoneNumber = (request, response) => {
    var phoneNumber = request.body.phoneNumber
    pool.query(
        'SELECT COUNT(m.member_id) ' +
        'FROM members AS m ' +
        "WHERE m.phone_number like '%" + phoneNumber + "%'" +
        '', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findByPhoneNumber,
}