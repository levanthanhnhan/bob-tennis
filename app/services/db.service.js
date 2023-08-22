const dbConfig = require("../config/db.config.js");
const Pool = require('pg').Pool;

const pool = new Pool({
  host: dbConfig.HOST,
  database: dbConfig.DB,
  user: dbConfig.USER,
  password: dbConfig.PASSWORD,
})

module.exports = pool;