const { reject } = require("async");
const conn = require("./connect");
class AccountRepository {
  get = (username, password) => {
    return new Promise(function (handle) {
      let sql = "SELECT * FROM account WHERE username = ? and password = ? ";
      //query database
      conn.query(sql, [username, password], (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          if (rows.length < 1) {
            return handle(null);
          } else {
            return handle(rows[0]);
          }
        }
      });
    });
  };

  getAll = () => {
    return new Promise(function (handle) {
      let sql = `
      SELECT
        account.id id,
        username,
        active,
        user.id userId
      FROM
        account
        JOIN user ON account.user_id = user.id;
      `;
      //query database
      conn.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows)
        }
      });
    });
  };

  

}

module.exports = new AccountRepository();
