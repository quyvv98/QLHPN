/* const { response } = require('express') */
const userRepository = require('../models/userRepository')
const session = require('express-session');
/* const { render } = require("ejs") */

class ReportController{
    
    getReports(req,res){
        if(!req.session.account){
            res.redirect("/login")
          }
        res.render('reports', {data: {} })
    }
  
}
module.exports = new ReportController