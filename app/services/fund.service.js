const db = require("./db.service.js");

const findFundMember = (request, response) => {
    db.pool.query(
        'SELECT m.member_name, m.sort_name, f.* ' +
        'FROM members AS m ' +
        'INNER JOIN fund AS f ON m.member_id = f.member_id ' +
        'ORDER BY m.member_id ASC' +
        '', (error, results) => {
        if (error) {
            db.error(response, error);
            return;
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findFundMember,
}