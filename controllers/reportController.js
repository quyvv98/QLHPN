/* const { response } = require('express') */
const userRepository = require("../models/userRepository");
const session = require("express-session");
/* const { render } = require("ejs") */

class ReportController {
  getReports(req, res) {
    let group_id = req.params.id;
    if (!group_id) {
      group_id = 1;
    }
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    } else {
      res.render("reports", { data: {}, session: req.session });
    }
  }
}
module.exports = new ReportController();
