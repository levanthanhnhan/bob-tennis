const db = require("../services/db.service.js");

const findAll = (request, response) => {
  db.pool.query(
    "SELECT r.role_name, l.level_name, m.* " +
      "FROM members AS m " +
      "INNER JOIN role AS r ON m.role_id = r.role_id " +
      "INNER JOIN level AS l ON m.level_id = l.level_id " +
      "ORDER BY m.member_id ASC" +
      "",
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rows);
    }
  );
};

const findOne = (request, response) => {
  const id = request.params.id;

  db.pool.query(
    "SELECT r.role_name, l.level_name, m.* " +
      "FROM members AS m " +
      "INNER JOIN role AS r ON m.role_id = r.role_id " +
      "INNER JOIN level AS l ON m.level_id = l.level_id " +
      "WHERE m.member_id = $1 " +
      "ORDER BY m.member_id ASC" +
      "", [id],
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rows);
    }
  );
};

const findBirthday = (request, response) => {
  db.pool.query(
    "SELECT * FROM members WHERE is_active = true ORDER BY member_id ASC",
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      var res = results.rows.filter(
        (item) => item.birthday.getMonth() == new Date().getMonth()
      );
      response.status(200).json(res);
    }
  );
};

const findByPhoneNumber = (request, response) => {
  var phoneNumber = request.body.phoneNumber
  
  db.pool.query(
      'SELECT m.member_id, m.img_path, m.is_admin ' +
      'FROM members AS m ' +
      "WHERE m.phone_number like '%" + phoneNumber + "%'" +
      '', (error, results) => {
      if (error) {
          db.error(response, error);
          return;
      }
      response.status(200).json(results.rows)
  })
}

const findAdmins = (request, response) => {
  db.pool.query(
    "SELECT r.role_name, m.* " +
      "FROM members AS m " +
      "INNER JOIN role AS r ON m.role_id = r.role_id " +
      "WHERE m.is_admin = true and m.is_active = true ORDER BY m.member_id ASC" +
      "",
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rows);
    }
  );
};

const update = (request, response) => {
  db.pool.query(
    "UPDATE members SET " +
      "member_name=$2, birthday=$3, phone_number=$4, contact=$5, is_active=$6, is_admin=$7, img_path=$8, level_id=$9, role_id=$10, sort_name=$11 " +
      "WHERE member_id = $1" +
      "",
    [
      parseInt(request.body.member_id),
      request.body.member_name,
      request.body.birthday,
      request.body.phone_number,
      request.body.contact,
      Boolean(request.body.is_active),
      Boolean(request.body.is_admin),
      request.body.img_path,
      parseInt(request.body.level_id),
      parseInt(request.body.role_id),
      request.body.sort_name,
    ],
    (error, results) => {
      if (error) {
        db.error(response, error);
        return;
      }
      response.status(200).json(results.rowCount);
    }
  );
};

module.exports = {
  findAll,
  findOne,
  findAdmins,
  findBirthday,
  findByPhoneNumber,
  update,
};
