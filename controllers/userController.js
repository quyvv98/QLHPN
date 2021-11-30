
/* const userModel = require('../models/userModel')
const session = require('express-session') */

const userModel = require("../models/userModel")

/* import {LoginModel} from '../models/loginModel' */
class LoginController{
    //check user
    check(req,res, handle){    
        let n  = String(req.body.name)
        let p  = String(req.body.password)
        /* let status = true
                if(status == 'false'){
                    res.render("login",{status: "ban da nhap sai"})
                    
                }else{
                   
                    res.redirect('/member')
                } */
        userModel.check(n,p, function handle(sussec){}).then(function(sussec){
                /* let sussec = true */
                if(sussec == 'false'){
                    res.render("login",{status: "ban da nhap sai"})
                    
                }else{
                   
                    res.redirect('/member')
                }
                    
                    
                    
                      
                
        })
        /* //session: req.session.User = {
                    website: 'anonystick.com',
                    type: 'blog javascript',
                    like: '4550' */
        /* //query db: memberModel.read(function handle(data){}).then(function(data){
                        console.log(data)
                        res.render('member','data: data')
                    }) */
    }
    //read * user
    readUser = (req,res)=>{
         userModel.readUser(function handle(data){}).then(function(data){
                console.log(data)
                res.render('user',{data: data})
                })
        
    }
    //edit user
    editUser = (req,res)=>{
        res.render('user_edit')
    }
    saveEditUser = (req,res)=>{
        let n  = String(req.body.name)
        let p  = String(req.body.password)
        let q = String(req.body.permission)
        console.log("edit user: " + n + p + q)
        res.redirect('/user/edit')
    }
    // add user
    addUser = (req,res)=>{
        
        res.render('user_add')
    }
    saveAddUser = (req,res)=>{
        let n  = String(req.body.name)
        let p  = String(req.body.password)
        let q = String(req.body.permission)
        console.log("add user: " + n + p + q)
        res.render('user_add')
    }
    //detail user 
    deTailUser = (req,res)=>{
        let data = [
            {
                tTKhoan: 'vu dieu linh',
                mKhau: '123456',
                quyen: 'quan lý cap cao',
            }
        ]
        res.render('user_deTail',{data: data})
    }
    //delet user
    deleteUser = (req,res)=>{
        res.render('user')
    }
    // report controller
    report = (req,res)=>{
        res.render('report')
    }
    // edit password
    editPassword = (req,res)=>{
        console.log('edit pass: '+ req.body.pass)
        res.redirect('/member')
    }

}

    
module.exports = new LoginController