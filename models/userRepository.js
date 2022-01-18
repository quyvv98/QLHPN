const { reject } = require("async");
const { use } = require("express/lib/router");
const conn = require("./connect");
class UserRepository {
  get = (userId) => {
    return new Promise(function (handle) {
      let sql = `SELECT
      user.id id,
      user.birthday birthday,
      user.nhapngu nhapngu,
      user.name name,
      user.family_situation family_situation,
      user.address address,
      user.religious religious,
      donvi.name donvi,
      title.name title,
      capbac.name capbac,
      GROUP_CONCAT(award.name) award,
      GROUP_CONCAT(level.value) level
    FROM
      user
      LEFT JOIN capbac ON user.capbac_id = capbac.id
      LEFT JOIN title ON user.title_id = title.id
      LEFT JOIN donvi on user.donvi_id = donvi.id
      LEFT JOIN award ON award.user_id = user.id
      LEFT JOIN level on level.user_id = user.id
      LEFT JOIN user_group ON user.id = user_group.user_id
    Where user.id = ?
      group by user.id`;
      //query database
      conn.query(sql, [userId], (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows[0]);
        }
      });
    });
  };

  getUsers = (group_id) => {
    return new Promise(function (handle) {
      let sql =
        `
                  SELECT
                  user.id id,
                  user.name name,
                  donvi.name donvi,
                  title.name title,
                  capbac.name capbac,
                  GROUP_CONCAT(award.name) award,
                  GROUP_CONCAT(group.name) type,
                  GROUP_CONCAT(level.value) level
                FROM
                  user
                  LEFT JOIN capbac ON user.capbac_id = capbac.id
                  LEFT JOIN title ON user.title_id = title.id
                  LEFT JOIN donvi on user.donvi_id = donvi.id
                  LEFT JOIN award ON award.user_id = user.id
                  LEFT JOIN level on level.user_id = user.id
                  LEFT JOIN user_group ON user.id = user_group.user_id
                  LEFT JOIN ` +
        "`group`" +
        ` ON group.id = user_group.group_id`;
      if (group_id) {
        sql +=
          ` where group_id = ` +
          group_id +
          `
              group by user.id
        `;
      } else {
        sql += ` group by user.id`;
      }
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
  removeUser = (userId, groupId) => {
    return new Promise(function (handle) {
      let sql = `
                 DELETE user_group where user_id = ? and group_id = ?;
    `;
      //query database
      conn.query(sql, [userId, groupId], (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows);
        }
      });
    });
  };

  getUser = (userId) => {
    return new Promise(function (handle) {
      let sql = `
          SELECT
          user.id id,
          user.birthday birthday,
          user.nhapngu nhapngu,
          user.name name,
          user.family_situation family_situation,
          user.address address,
          user.religious religious,
          donvi.name donvi,
          title.name title,
          capbac.name capbac,
          GROUP_CONCAT(award.name) award,
          GROUP_CONCAT(level.value) level
        FROM
          user
          LEFT JOIN capbac ON user.capbac_id = capbac.id
          LEFT JOIN title ON user.title_id = title.id
          LEFT JOIN donvi on user.donvi_id = donvi.id
          LEFT JOIN award ON award.user_id = user.id
          LEFT JOIN level on level.user_id = user.id
          LEFT JOIN user_group ON user.id = user_group.user_id
        Where user.id = ?;
    `;
      conn.query(sql, [userId], (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows);
        }
      });
    });
  };
}

module.exports = new UserRepository();
