/* const login = require('./login.js')
const member = require('./member.js')
const user = require('./user.js') */
//const loginController = require('../controler/loginController')
/* const app = express() */
const accountController = require("./controllers/accountController");
const reportController = require("./controllers/reportController");
const userController = require("./controllers/userController");
const session = require("express-session");
const homeController = require("./controllers/homeController");

/* const { rawListeners } = require('../models/db_mysql'); */

function route(app) {
  // router login
  app.get("/", homeController.index);

  app.get("/login", (req, res) => {
    if (!req.session || !req.session.account) {
      res.render("login", { status: null });
    } else {
      res.redirect("/");
    }
  });

  app.get("/logout", (req, res) => {
    req.session.account = null;
    res.redirect("login");
  });

  app.post("/login", accountController.login);

  //router member
  app.get("/users", userController.getUsers);
  app.get("/users/add", userController.add);
  app.get("/users/:id", userController.getUser);
  app.put("/users/:id", userController.update_user);
  app.get("/users/:id/edit", userController.editUser);
  app.post("/users/:id/delete", userController.removeUser);
  app.post("/users", userController.new_user);

  app.get("/accounts", accountController.getAccounts);
  app.post("/accounts", accountController.addAccount);
  app.get("/accounts/:id", accountController.getAccount);
  app.get("/accounts/:id/edit", accountController.editAccount);
  app.post("/accounts/:id/change-password", accountController.editPassword);

  app.delete("/accounts/:id", accountController.removeAccount);

  app.get("/reports", reportController.getReports);
  app.get("/reports/:id", reportController.getReports);
  app.get("/reports/:id/data", reportController.getData);
}

module.exports = route;
