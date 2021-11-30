/* const login = require('./login.js')
const member = require('./member.js')
const user = require('./user.js') */
//const loginController = require('../controler/loginController')
/* const app = express() */ 
const userController = require('../controllers/userController')
const memberController = require('../controllers/memberController');


/* const { rawListeners } = require('../models/db_mysql'); */



function route(app){
    //router login
    app.get('/dangnhap',(req,res)=>{       
        res.render('login',{status: null})
    })
    app.post('/dangnhap',userController.check)

    //router member
    app.get('/member',memberController.readMember)
    app.get('/member/add/',memberController.addMember)
    app.post('/member/add/',memberController.saveAddMember)
    app.get('/member/deTail/:id',memberController.deTailMember)

    app.get('/member/edit/:id',memberController.editMember)
    app.post('/member/edit',memberController.saveEditMember)
    app.get('/member/:id',memberController.deleteMember)
    /* app.get('/member/delete/:id',userController.deleteUser) */
     

    //router user
    app.get('/user',userController.readUser)
    app.get('/user/deTail',userController.deTailUser)
    app.get('/user/edit',userController.editUser)
    app.post('/user/edit',userController.saveEditUser)
    app.get('/user/add',userController.addUser)
    app.post('/user/add',userController.saveAddUser)
    app.get('/user/delete',userController.deleteUser)

    //router report
    app.get('/report',userController.report)
    
    //password 
    app.post('/password',userController.editPassword)
} 

module.exports = route