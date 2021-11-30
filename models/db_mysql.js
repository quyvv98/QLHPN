const mysql = require('mysql2')

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    port: '3306',
    password: 'password',
    database: 'DB_QLHV',

})

conn.connect((err)=>{
    if(err){
        console.log(err)
    }else{
        console.log('ket noi thanh cong')
    }
})
module.exports = conn