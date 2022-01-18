const { reject } = require("async");
const session = require('express-session');
const { get } = require("express/lib/response");
const { use } = require("express/lib/router");

const conn = require("./connect");
class ReportRepository {
  

  getReports = (groupId) => {
    return new Promise(function (handle) {
      handle()
    });
  };

  // Select capbac.`name`, count(*) count from user 
	// join capbac ON capbac.id = user.capbac_id
	// join user_group ON user_group.group_id = 1
	// group by capbac_id
;
}

module.exports = new ReportRepository();
