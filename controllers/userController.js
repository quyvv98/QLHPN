/* const { response } = require('express') */
const userRepository = require("../models/userRepository");
const session = require("express-session");
/* const { render } = require("ejs") */

class UserController {
  getUsers = (req, res) => {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
      return;
    }
    let admin = req.session.account.permission;
    if (!admin) {
      const userId = req.session.account.user_id;
      userRepository.getUser(userId).then((users) => {
        res.render("users", { data: users, session: req.session });
      });
    } else {
      let admin_group_id = admin;
      if (admin == "3") {
        admin_group_id = null;
      }
      userRepository.getUsers(admin_group_id).then((users) => {
        res.render("users", { data: users, session: req.session });
      });
    }
  };
  add(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    } else {
      res.render("new_user", { data: {}, session: req.session });
    }
  }
  new_user(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    userRepository.newUser(req.body).then((userId) => {
      res.redirect("/users/" + userId);
    });
  }

  update_user(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    const id = req.params.id;
    userRepository.updateUser(req.body, id).then((data) => {
      res.redirect("/users/" + id);
    });
  }

  getUser(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
      return;
    }
    const userId = req.params.id;
    userRepository.get(userId).then((data) => {
      res.render("user", { data: data, session: req.session, history: data.history});
    });
  }
  editUser(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    res.render("edit_user", { data: {}, session: req.session });
  }
  removeUser(req, res) {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    const userId = req.params.id;
    userRepository.removeUser(userId).then((result) => {
      res.redirect("/users");
    });
  }
}
module.exports = new UserController();
