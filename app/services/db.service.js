const dbConfig = require("../config/db.config.js");
const Pool = require('pg').Pool;

const pool = new Pool({
  host: dbConfig.HOST,
  database: dbConfig.DB,
  user: dbConfig.USER,
  password: dbConfig.PASSWORD,
})

function handleError(res, error) {
  console.log(error.message);
  res.status(500).json(error.message);
}

const db = {
  pool: pool,
  error: handleError
}

module.exports = db;