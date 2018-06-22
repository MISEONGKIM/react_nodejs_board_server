var sql = require("mssql");
var config = require("./config/config.json");

const pool = new sql.ConnectionPool(config)
  .connect()
  .then(pool => {
    return pool.query("select * from board");
  })
  .then(result => {
    alert(result.recordset[0].value);
    //console.dir(result.recordset[0].value);
  })
  .catch(err => {
    console.log(err);
  });
