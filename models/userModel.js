const { reject } = require('async')
const conn = require('./db_mysql')
class LoginModel{
    check = (n,p, handle)=>{
        return new Promise(function(handle){
            let sql = "SELECT * FROM taikhoan WHERE TenTaiKhian = ? and MatKhau = ? "
            //query database
            conn.query(sql,[n,p],(err,rows)=>{
                if(err){
                    console.log(err)
                }
                else{
                    
                    if(rows.length<1){
                        let ketqua = 'false'
                        
                        return handle(ketqua)
                    } 
                    else {
                        
                        let ketqua = 'true'
                        return handle(ketqua)
                    }
                }
            })
        })
    }
    readUser = (handle)=>{
        return new Promise(function(handle){

            let sql = `SELECT tk.TenTaiKhian, tk.Active, tk.Quyen, tk.MaHV  from TaiKhoan tk ;`
            /* let sql = 'SELECT  *  '
                    + ' FROM taikhoan AS tk'
                    + ' Left JOIN loaihoivien AS lhv ON hv.MaLHV=lhv.MaLHV'
                    + ' LEFT JOIN trinhdo AS td ON hv.MaVTDT=td.MaTD'
                    + ' LEFT JOIN chucdanh AS cd ON hv.MaCD=cd.MaCD'
                    + ' LEFT JOIN donvi as dv on dv.MaDV = hv.MaDV'
                    + ' left join tentd  on tentd.MaHV = hv.MaHV'
                    + ' left join tendh on tendh.MaHV = hv.MaHV' */
            conn.query(sql,(err,rows)=>{
                if(err){
                    console.log(err)
                }else{
                    console.log(rows)
                    let data = rows
                    return handle(data)
                }
            })

        })
    }

    
}
    

module.exports = new LoginModel