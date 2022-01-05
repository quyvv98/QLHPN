/* const userModel = require('../models/userModel')
const session = require('express-session') */

const accountRepository = require("../models/accountRepository");
const session = require('express-session');
const { use } = require("express/lib/application");

class AccountController {
  
  login = (req, res) => {
    let username = String(req.body.name);
    let password = String(req.body.password);
    accountRepository.get(username, password).then(function (account) {
      if (account) {
        req.session.account = account
        res.redirect("/");
      } else {
        res.render("login", { status: false });
      }
    });
  };
  getAccounts = (req, res) => {
    if(!req.session.account){
      res.redirect("/login")
    }
    accountRepository.getAll().then(function (accounts) {
      res.render("accounts", { data: accounts });
    });
  };

  //edit user
  editUser = (req, res) => {
    res.render("user_edit");
  };
  saveEditUser = (req, res) => {
    let n = String(req.body.name);
    let p = String(req.body.password);
    let q = String(req.body.permission);
    console.log("edit user: " + n + p + q);
    res.redirect("/user/edit");
  };
  // add user
  addAccount = (req, res) => {
    if(!req.session.account){
      res.redirect("/login")
      return
    }
    res.render("new_account");
  };
  saveAddUser = (req, res) => {
    let n = String(req.body.name);
    let p = String(req.body.password);
    let q = String(req.body.permission);
    console.log("add user: " + n + p + q);
    res.render("user_add");
  };
  //detail user
  getAccountDetaul = (req, res) => {
    let data = [
      {
        tTKhoan: "vu dieu linh",
        mKhau: "123456",
        quyen: "quan lý cap cao",
      },
    ];
    res.render("user", { data: data });
  };
  //delet user
  deleteUser = (req, res) => {
    res.render("user");
  };
  // report controller
  report = (req, res) => {
    res.render("report");
  };
  // edit password
  editPassword = (req, res) => {
    console.log("edit pass: " + req.body.pass);
    res.redirect("/member");
  };
}

module.exports = new AccountController();
