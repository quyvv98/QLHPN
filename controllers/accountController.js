/* const userModel = require('../models/userModel')
const session = require('express-session') */

const accountRepository = require("../models/accountRepository");
const session = require('express-session');
const { use } = require("express/lib/application");

class AccountController {
  
  login = (req, res) => {
    let phone = String(req.body.phone);
    let password = String(req.body.password);
    accountRepository.login(phone, password).then(function (account) {
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
    accountRepository.getAccounts().then(function (accounts) {
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
    res.render("user");
  };
  //detail user
  getAccount = (req, res) => {
    if (!req.session.account) {
      res.redirect("/login");
    }
    let data = [
      {
        tTKhoan: "admin",
        mKhau: "*****",
        quyen: "Quản lý cấp học viện",
      },
    ];
    const accountId =  req.params.id
    accountRepository.login
    res.render("account", { data: data });
  };
  removeAccount = (req, res) => {
    // res.render("user");
  };

  // edit password
  editPassword = (req, res) => {
    console.log("edit pass: " + req.body.pass);
    const oldPass= req.body.pass;
    const newPass= req.body.passNew;
    const newPass2= req.body.passNew2;
    const accountId =  req.params.id
    accountRepository.updatePassword(accountId, oldPass, newPass).then((result)=>{
      if(result && result.affectedRows > 0){
        req.session.account = null;
        res.redirect("/login")
      }else{
        res.redirect("/accounts/"+accountId)

      }
    })
  };
}

module.exports = new AccountController();
