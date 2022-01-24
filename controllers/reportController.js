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

      let group_name = "Hội phụ nữ";
      let other_group = group_id;
      if(!req.session.group_ids){
        res.redirect("/")
      }
      if(req.session.group_ids == '3'){
        if (group_id == 2) {
          group_name = "Hội công đoàn";
          other_group = 1;
        }else{
          other_group = 2;
        }
      }


      if(req.session.group_ids == '1' || req.session.group_ids == '2'){ 
        group_id = parseInt(req.session.group_ids)
        other_group = group_id
        if (group_id == 2) {
          group_name = "Hội công đoàn";
        }else{
          group_name = "Hội phụ nữ";
        }
      }

      res.render("reports", {
        session: req.session,
        group: {
          name: group_name,
          other_link: "/reports/" + other_group,
        },
      });
    }
  }

  getData(req, res) {
    let group_id = req.params.id;
    reportRepository.getReports(group_id).then((reports) => {
      res.json({
        reports: reports,
        session: req.session,
      });
    });
  }
}
module.exports = new ReportController();
