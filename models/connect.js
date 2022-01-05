const mysql = require('mysql2')

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    port: '3306',
    password: 'password',
    database: 'QLHPN',

})

conn.connect((err)=>{
    if(err){
        console.log(err)
    }else{
        console.log('Connect database success')
    }
})
module.exports = conn