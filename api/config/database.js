const { createPool } = require("mysql");

// const pool = createPool({
//   host: process.env.DB_HOST_SERVER,
//   port: 3306,
//   user: "root",
//   password: "raj2neo",
//   database: "shipping",
//   connectionLimit: 10,
//   multipleStatements: true,
//   connectTimeout: 60 * 60 * 1000,
//   acquireTimeout: 60 * 60 * 1000,
// });

const pool = createPool({
  host: "database-1.c39uep2h3fya.ap-south-1.rds.amazonaws.com",
  port: 3306,
  user: "admin",
  password: "Rajneesh2Neo",
  database: "cruisecarrot",
  connectionLimit: 10,
  multipleStatements: true,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
});

module.exports = pool;

// mysql://b040638ba8e065:f0495245@us-cdbr-east-04.cleardb.com/heroku_37e31c820059a56?reconnect=true

// user grant comand
//ALTER USER 'root'@'192.168.0.104' IDENTIFIED WITH mysql_native_password BY 'password';

// CREATE USER 'root'@'192.168.0.104' IDENTIFIED BY 'raj2neo';
// GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.0.104' WITH GRANT OPTION;
// FLUSH PRIVILEGES;
