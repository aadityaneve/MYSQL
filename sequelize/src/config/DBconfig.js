const mysql = require("mysql");

const DBconfig = {
  host: "localhost",
  user: "root",
  password: "password",
  database: "sequelize",
  dialect: "mysql",
};

const conn = mysql.createPool(DBconfig);

module.exports = {
  conn,
  DBconfig,
};
