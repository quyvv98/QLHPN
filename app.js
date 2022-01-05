const express = require('express')
//const expresshbs = require('express-handlebars')
//const productsControler = require('./controler/products')
//const catalogsControler = require('./controler/catalogs')
//const db = require('./model/products')
const route = require('./router')
const path = require('path')
const port = 4000;
const app = express()

const session = require('express-session')
//const hbs = handlebars.create({})
//const router = express.Router()
app.use(session({
  secret: 'abcdefg',
  resave: true,
  saveUninitialized: true,
  cookie: { maxAge: 1000 * 60 * 60 * 24 }
}));
//reload req
app.use(express.json())
app.use(express.urlencoded())
//set static file
app.use(express.static(path.join(__dirname, 'public')))
/* app.use(session({
  secret: 'abcdefg',
  resave: true,
  saveUninitialized: true,
  cookie: { maxAge: 60000 }
})); */

// view engine setup
app.set('views', path.join(__dirname, '/views')); 
app.set('view engine', 'ejs');
// routes
route(app)

//server listen
app.listen(port,(err)=>{
    if(err){
        console.log(err)
    }else{
        console.log('Server running at 127.0.0.1:' + port)
    }
})
