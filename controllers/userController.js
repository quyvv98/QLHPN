/* const { response } = require('express') */
const userRepository = require("../models/userRepository");
const session = require("express-session");
/* const { render } = require("ejs") */

class UserController {
  getUsers = (req, res) => {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    userRepository.getUsers().then((users) => {
      res.render("users", { data: users, session: req.session });
    });
  };
  add(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }else{
      res.render("new_user", {data: {}, session: req.session});
    }
  }

  getUser(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
      return
    }
    const userId = req.params.id;
    userRepository.get(userId).then((user) => {
      res.render("user", { data: user, session: req.session });
    });
  }
  editUser(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    res.render("edit_user", { data: {} , session: req.session});
  }
  removeUser(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    const userId = req.params.id
    const groupId =  req.session.user.groupId
    userRepository.removeUser(userId, groupId).then((result)=>{

    })
    res.redirect("/users")
  }
}
module.exports = new UserController();
