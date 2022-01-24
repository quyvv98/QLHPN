const { reject } = require("async");
const session = require("express-session");
const { get } = require("express/lib/response");
const { use } = require("express/lib/router");

const conn = require("./connect");
class ReportRepository {
  getCapbacs() {
    return new Promise(function (handle) {
      let sql = `
          SELECT
          capbac.name name,
          count(user.capbac_id) value
        FROM
          capbac
          LEFT JOIN user
        WHERE
          user.capbac_id = capbac.id
        GROUP BY
          capbac.id;
    `;
      conn.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
        } else {
          handle(rows);
        }
      });
    });
  }

  getLevels(type, handle) {
    let sql = `
            SELECT
            level.value name,
            count(*) value
          FROM
            level
            LEFT JOIN user
            ON
            user.id = level.user_id
          WHERE level.type = ?
          GROUP BY level.value;
    `;
    conn.query(sql, [type], (err, rows) => {
      if (err) {
        console.log(err);
      } else {
        handle(rows);
      }
    });
  }
  getReports = (groupId) => {
    let capbacSql = `
    SELECT
      capbac.name,
      count(u.capbac_id)
      value
    FROM
      capbac
      LEFT JOIN (
        SELECT
          user.*
        FROM
          user
          JOIN user_group ON user.id = user_group.user_id
        WHERE
          user_group.group_id = `+ groupId + `) u ON capbac.id = u.capbac_id
    GROUP BY
      capbac.id;

      `;
    let chuyenmonSql = `
    SELECT
      level.value name,
      count(u.id) value
    FROM
      level
      LEFT JOIN (
        SELECT
          user.*
        FROM
          user
          JOIN user_group ON user.id = user_group.user_id
        WHERE
          user_group.group_id = `+ groupId + `) u ON u.id = level.user_id
    WHERE
      level.type = 'chuyenmon'
    GROUP BY
      level.id;
      `;

    let donviSql = `
    SELECT
      donvi.name name,
      count(u.donvi_id) value
    FROM
      donvi
      LEFT JOIN (
        SELECT
          user.*
        FROM
          user
          JOIN user_group ON user.id = user_group.user_id
        WHERE
          user_group.group_id = `+ groupId + `) u ON u.donvi_id = donvi.id
    GROUP BY
      donvi.id;
    `;

    let titleSql = `
    
    SELECT
      title.name name,
      count(u.title_id) value
    FROM
      title
      LEFT JOIN (
        SELECT
          user.*
        FROM
          user
          JOIN user_group ON user.id = user_group.user_id
        WHERE
          user_group.group_id = `+ groupId + `) u ON u.title_id = title.id
    GROUP BY title.id;
    `
    return new Promise(function (handle) {
      conn.query(capbacSql, (err, capbacRes) => {
        if (err) {
          console.log(err);
        } else {
          conn.query(chuyenmonSql, (err, chuyenmonRes) => {
            if (err) {
              console.log(err);
            } else {
              conn.query(donviSql, (err, donviRes) => {
                if (err) {
                  console.log(err);
                } else {
                  conn.query(titleSql, (err, titleRes) => {
                    if (err) {
                      console.log(err);
                    } else {
                      handle([
                        { data: capbacRes, name: "capbac" },
                        { data: chuyenmonRes, name: "chuyenmon" },
                        { data: donviRes, name: "donvi" },
                        { data: titleRes, name: "title" },
                      ]);
                    }
                  });
                }
              });
            }
          });
        }
      });
    });
  };
}

module.exports = new ReportRepository();
