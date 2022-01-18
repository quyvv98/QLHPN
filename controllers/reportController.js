/* const { response } = require('express') */
const reportRepository = require("../models/reportRepository");
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
    let group_name = 'Hội phụ nữ'
    let other_group = 2
     if(group_id == 2){
        group_name = 'Hội công đoàn'
        other_group = 1
     }
      reportRepository.getReports(group_id).then((reports)=>{
        res.render("reports", { data: reports, session: req.session, group: {
          name: group_name,
          other_link: '/reports/'+ other_group
        }});
      })
    }
  }
}
module.exports = new ReportController();
