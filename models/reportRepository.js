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
}

module.exports = new ReportRepository();
