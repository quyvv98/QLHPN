/* const userModel = require('../models/userModel')
const session = require('express-session') */

const session = require('express-session');
const { use } = require("express/lib/application");
const userRepository = require('../models/userRepository')

class HomeController {
  index = (req, res) => {
    if(!req.session || !req.session.account){
      res.redirect('/login')
    }else{
      const admin = req.session.account.permission
      if(! admin){
        const userId = req.session.account.user_id
        userRepository.getUser(userId).then((users) => {
          res.render("users", { data: users, session: req.session });
        });
      }else{
        let admin_group_id =  admin
        if(admin == '3'){
          admin_group_id = null
        }
        userRepository.getUsers(admin_group_id).then((users) => {
          res.render("users", { data: users, session: req.session });
        });
      }
    
    }   
    ;
  };
}

module.exports = new HomeController();
