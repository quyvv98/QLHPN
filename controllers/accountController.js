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
  editAccount = (req, res) => {
    res.render("edit_account2");
  };
  // add user
  addAccount = (req, res) => {
    if(!req.session.account){
      res.redirect("/login")
      return
    }
    res.render("new_account");
  };
  //detail user
  getAccount = (req, res) => {
    let data = [
      {
        tTKhoan: "vu dieu linh",
        mKhau: "123456",
        quyen: "quan lý cap cao",
      },
    ];
    res.render("account", { data: data });
  };
  removeAccount = (req, res) => {
    // res.render("user");
  };

  // edit password
  editPassword = (req, res) => {
    console.log("edit pass: " + req.body.pass);
    res.redirect("/users");
  };
}

module.exports = new AccountController();
