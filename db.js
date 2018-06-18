var sql = require("mssql");
var config = require("./config/config.json");

const pool = new sql.ConnectionPool({ config });

pool.connect(err => {});
