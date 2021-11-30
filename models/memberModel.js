const conn = require('./db_mysql')

class MemberModel{
    read = (handle)=>{
        return new Promise(function(handle){

            /* let sql = 'SELECT  hv.MaHV,hv.TenHV ,lhv.TenLHV, td.TenTD , cd.TenCD , dv.TenDV, tentd.TenTD, tendh.TenDH '
                    + ' FROM hoivien AS hv'
                    + ' Left JOIN loaihoivien AS lhv ON hv.MaLHV=lhv.MaLHV'
                    + ' LEFT JOIN trinhdo AS td ON hv.MaVTDT=td.MaTD'
                    + ' LEFT JOIN chucdanh AS cd ON hv.MaCD=cd.MaCD'
                    + ' LEFT JOIN donvi as dv on dv.MaDV = hv.MaDV'
                    + ' left join tentd  on tentd.MaHV = hv.MaHV'
                    + ' left join tendh on tendh.MaHV = hv.MaHV' */
                let sql = 
                        `SELECT hv.MaHV, hv.TenHV, lhv.TenLHV, td.TenTD, dv.TenDV ,cd.TenCD
                        from HoiVien hv  left JOIN LoaiHoiVien lhv On hv.MaLoaiHoiVien = lhv.MaLHV
						 left JOIN DonVi dv ON hv.MaDonVi = dv.MaDV
						 left JOIN TrinhDo td ON td.MaTD = hv.MaTrinhDo
						 left JOIN BCH_CD bch  ON bch.MaHV = hv.MaHV
						left JOIN ChucDanh  cd ON cd.MaCD = bch.MaCD`
						;
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

module.exports = new MemberModel