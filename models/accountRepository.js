const { reject } = require("async");
const session = require('express-session');
const { get } = require("express/lib/response");
const { use } = require("express/lib/router");

const conn = require("./connect");
class AccountRepository {
  login = (phone, password) => {
    return new Promise(function (handle) {
      let sql =
        "SELECT * FROM account WHERE username = ? and password = ? and active = 1";
      //query database
      conn.query(sql, [phone, password], (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          if (rows.length < 1) {
            return handle(null);
          } else {
            const accountId = rows[0].id;
            const userId = rows[0].user_id 
            let updateLastLogin =
              "update account set last_login = now() where id = ?";
            conn.query(updateLastLogin, [accountId], (err, res) => {
              if (err) {
                console.log("update last_login fail");
              } else {
                console.log("update last_login success");
              }
              
            // get permission
              let getUserInfo = "select GROUP_CONCAT(group_id) group_ids from user_group where user_id = ? and is_admin=1"
              conn.query(getUserInfo, [userId], (err, permissions) => {
                if (err) {
                  console.log("check permission fail");
                } else {
                  
                  const group_ids ={
                    'admin': permissions[0].group_ids,
                  }
                  console.log("check permission success");
                  return handle({
                    account: rows[0],
                    group_ids: group_ids,
                  });
                }
                

              })
            });
          }
        }
      });
    });
  };

  getAccounts = () => {
    return new Promise(function (handle) {
      let sql = `
      SELECT
        user.name name,
        active,
        user.id userId,
        last_login
      FROM
        account
      JOIN user ON account.user_id = user.id;

      `;
      //query database
      conn.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows);
        }
      });
    });
  };

  updatePassword = (accountId, oldPassword, newPassword) => {
    return new Promise(function (handle) {
      let sql =
        `update account set password = "` +
        newPassword +
        `" where id = ` +
        accountId +
        ` and password = "` +
        oldPassword +
        `" ;`;
      //query database
      conn.query(sql, (err, res) => {
        if (err) {
          console.log(err);
        } else {
          handle(res);
        }
      });
    });
  };
}

module.exports = new AccountRepository();
