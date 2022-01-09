/* const { response } = require('express') */
const userRepository = require("../models/userRepository");
const session = require("express-session");
/* const { render } = require("ejs") */

class UserController {
  getUsers = (req, res) => {
    if (!req.session.account) {
      res.redirect("/login");
    }
    userRepository.getUsers().then((users) => {
      res.render("users", { data: users });
    });
  };
  add(req, res) {
    res.render("new_user");
  }

  getUser(req, res) {
    if (!req.session.account) {
      res.redirect("/login");
    }
    const userId = req.params.id;
    userRepository.get(userId).then((user) => {
      res.render("user", { data: user });
    });
  }
  editUser(req, res) {
    res.render("edit_user", { data: {} });
  }
  saveEditMember(req, res) {
    console.log("editMember: " + req.body.name);
    res.render("edit");
  }
  removeUser(req, res) {
    const userId = req.params.id
    const groupId =  req.session.user.groupId
    userRepository.removeUser(userId, groupId).then((result)=>{

    })
    res.redirect("/users")
  }
}
module.exports = new UserController();
