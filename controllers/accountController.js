/* const userModel = require('../models/userModel')
const session = require('express-session') */

const accountRepository = require("../models/accountRepository");
const session = require("express-session");
const { use } = require("express/lib/application");

class AccountController {
  login = (req, res) => {
    let username = String(req.body.username);
    let password = String(req.body.password);
    accountRepository.login(username, password).then(function (sess) {
      if (sess) {
        req.session.account = sess.account;
        req.session.group_ids = sess.account.permission;
        res.redirect("/");
      } else {
        res.render("login", { status: false, session: null });
      }
    });
  };
  getAccounts = (req, res) => {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
      return;
    }

    let admin = req.session.account.permission;
    if (!admin) {
      const accountId = req.session.account.id;
      accountRepository.getAccount(accountId).then((accounts) => {
        res.render("accounts", { data: accounts, session: req.session });
      });
    } else {
      let admin_group_id = admin;
      if (admin == "3") {
        admin_group_id = null;
      }
      accountRepository.getAccounts(admin_group_id).then((data) => {
        res.render("accounts", {
          data: data.accounts,
          session: req.session,
          users: data.users,
        });
      });
    }
  };

  //edit user
  editAccount = (req, res) => {
    res.render("edit_account2");
  };
  // add user
  addAccount = (req, res) => {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
      return;
    }
    accountRepository.addAccount(req.body).then((data) => {
      res.redirect("/accounts");
    });
  };
  //detail user
  getAccount = (req, res) => {
    if (!req.session || !req.session.account) {
      res.redirect("/login");
    }
    let data = [
      {
        tTKhoan: "admin",
        mKhau: "*****",
        quyen: "Quản lý cấp học viện",
      },
    ];
    const accountId = req.params.id;
    accountRepository.login;
    res.render("account", { data: data });
  };
  removeAccount = (req, res) => {
    // res.render("user");
  };

  // edit password
  editPassword = (req, res) => {
    console.log("edit pass: " + req.body.pass);
    const oldPass = req.body.pass;
    const newPass = req.body.passNew;
    const newPass2 = req.body.passNew2;
    const accountId = req.params.id;
    accountRepository
      .updatePassword(accountId, oldPass, newPass)
      .then((result) => {
        if (result && result.affectedRows > 0) {
          req.session.account = null;
          res.redirect("/login");
        } else {
          res.redirect("/accounts/" + accountId);
        }
      });
  };
  lockAccount = (req, res) =>{
    const accountId = req.params.id
    accountRepository
      .lock(accountId, 0)
      .then((result) => {
        if (result && result.affectedRows > 0) {
          res.redirect("/accounts");
        }
      });
  }
  unlockAccount = (req, res) =>{
    const accountId = req.params.id
    accountRepository
      .lock(accountId, 1)
      .then((result) => {
        if (result && result.affectedRows > 0) {
          res.redirect("/accounts");
        }
      });
  }
}

module.exports = new AccountController();
