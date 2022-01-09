const { reject } = require("async");
const conn = require("./connect");
class UserRepository {
  get = (userId) => {
    return new Promise(function (handle) {
      let sql = "SELECT * from user where id = ?";
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

  getUsers = () => {
    return new Promise(function (handle) {
      let sql = `SELECT
                  user.id id,
                  user.name name,
                  donvi.name donvi,
                  title.name title,
                  capbac.name capbac,
                  GROUP_CONCAT(award.name) award,
                  GROUP_CONCAT(group.name) type
                  
                  
                FROM
                  user
                  LEFT JOIN capbac ON user.capbac_id = capbac.id
                  LEFT JOIN title ON user.title_id = title.id
                  LEFT JOIN donvi on user.donvi_id = donvi.id
                  LEFT JOIN award ON award.user_id = user.id
                  LEFT JOIN user_group ON user.id = user_group.user_id
                  LEFT JOIN `+ '`group`' + ` ON group.id = user_group.group_id
                  
                  group by user.id
                  ;
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
}

module.exports = new UserRepository();
