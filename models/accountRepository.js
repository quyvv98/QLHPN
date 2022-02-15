const { reject } = require("async");
const session = require("express-session");
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
            const userId = rows[0].user_id;
            let updateLastLogin =
              "update account set last_login = now() where id = ?";
            conn.query(updateLastLogin, [accountId], (err, res) => {
              if (err) {
                console.log("update last_login fail");
              } else {
                console.log("update last_login success");
              }

              // get permission
              let getUserInfo =
                "select sum(group_id) admin from user_group where user_id = ? and is_admin=1";
              conn.query(getUserInfo, [userId], (err, permissions) => {
                if (err) {
                  console.log("check permission fail");
                } else {
                  console.log("check permission success");
                  const permission = permissions[0].admin;

                  let account = rows[0];
                  account.permission = permission;
                  return handle({
                    account: account,
                  });
                }
              });
            });
          }
        }
      });
    });
  };

  getAccounts = (permission) => {
    return new Promise(function (handle) {
      let sql = `
      SELECT
        account.id account_id,
        user.name name,
        active,
        user.id userId,
        last_login
      FROM
        account
      JOIN user ON account.user_id = user.id
      `;
      if (permission) {
        sql +=
          ` JOIN (select * from user_group where group_id = ` +
          group_id +
          ` ) user_group ON user.id = user_group.user_id;
          `;
      }

      // sql  += ` GROUP BY user.id`
      //query database
      conn.query(sql, (err, accounts) => {
        if (err) {
          console.log(err);
        } else {
          conn.query("select id, name from user", (err, users) => {
            if (err) {
              console.log("get fail");
            } else {
              return handle({
                users: users,
                accounts: accounts,
              });
            }
          });
        }
      });
    });
  };

  getAccount = (accountId) => {
    return new Promise(function (handle) {
      let sql = `
      SELECT
        user.name name,
        active,
        user.id userId,
        last_login
      FROM
        account
      JOIN user ON account.user_id = user.id
      Where account.id = ?
      ;

      `;
      //query database
      conn.query(sql, [accountId], (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows);
        }
      });
    });
  };

  addAccount = (data) => {
    return new Promise(function (handle) {
      let sql = `
      INSERT INTO account(username, password, user_id, active)
      VALUES(?, ?, ?, 1);
      `;
      //query database
      conn.query(
        sql,
        [data["name"], data["password"], data["user_id"]],
        (err, rows) => {
          if (err) {
            console.log(err);
          } else {
            handle(rows);
          }
        }
      );
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
  lock = (accountId, status) => {
    return new Promise(function (handle) {
      let sql = `update account set active  = ? where id = ?`;
      //query database
      conn.query(sql, [status, accountId], (err, res) => {
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
