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
      userRepository.getUsers().then((users)=>{
        res.render('users',{data: users , session: req.session})
    })
    }   
    ;
  };
}

module.exports = new HomeController();
