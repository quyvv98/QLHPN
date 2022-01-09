/* const { response } = require('express') */
const userRepository = require("../models/userRepository");
const session = require("express-session");
/* const { render } = require("ejs") */

class UserController {
  getAll = (req, res) => {
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
    console.log("deleteMember have id: " + req.params.id);
    let info = [
      {
        hoTen: "nguyen thi a",
        lhv: "qncn",
        nSinh: "13-07-1979",
        gTinh: "nam",
        dToc: "kinh",
        nNNgu: "20-12-1997",
        dVi: "h3",
        hoi: "phu nu",
        tGVHoi: "20-12-1998",
        cBac: "trung uy",
        bTho: "bac 2",
        cDanh: "tro ly",
        lDSTao: "viet bao",
        tDo: "trung cap",
        tTHNhan: "da ket hon",
        nhaO: "ngo 21 phuon liet thanh xuan",
        tSBACBThan: "ko co",
        tSBACCCai: "ko co",
        vTri: "dang vien",
        dHieu: "tro giang",
      },
    ];
    res.render("member", { data: info });
  }
}
module.exports = new UserController();
