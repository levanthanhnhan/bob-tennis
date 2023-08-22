const pool = require("../services/db.service.js");

const findAll = (request, response) => {
    pool.query(
        'SELECT r.role_name, l.level_name, m.* ' +
        'FROM members AS m ' +
        'INNER JOIN role AS r ON m.role_id = r.role_id ' +
        'INNER JOIN level AS l ON m.level_id = l.level_id ' +
        'ORDER BY m.member_id ASC' +
        '', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

const findOne = (request, response) => {
    pool.query(
        'SELECT r.role_name, l.level_name, m.* ' +
        'FROM members AS m ' +
        'INNER JOIN role AS r ON m.role_id = r.role_id ' +
        'INNER JOIN level AS l ON m.level_id = l.level_id ' +
        'WHERE m.member_id = 2 ' +
        'ORDER BY m.member_id ASC' +
        '', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

const findBirthday = (request, response) => {
    pool.query(
        'SELECT * FROM members WHERE is_active = true ORDER BY member_id ASC', (error, results) => {
        if (error) {
            throw error
        }
        var res = results.rows.filter(item => item.birthday.getMonth() == new Date().getMonth())
        response.status(200).json(res)
    })
}

const findAdmins = (request, response) => {
    pool.query(
        'SELECT r.role_name, m.* ' +
        'FROM members AS m ' +
        'INNER JOIN role AS r ON m.role_id = r.role_id ' +
        'WHERE m.is_admin = true and m.is_active = true ORDER BY m.member_id ASC' +
        '', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

const update = (request, response) => {
    console.log(request.body);
    pool.query(
        'SELECT r.role_name, m.* ' +
        'FROM members AS m ' +
        'INNER JOIN role AS r ON m.role_id = r.role_id ' +
        'WHERE m.is_admin = true and m.is_active = true ORDER BY m.member_id ASC' +
        '', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    findAll,
    findOne,
    findAdmins,
    findBirthday,
    update,
}