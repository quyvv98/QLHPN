/* const { response } = require('express') */
const memberModel = require('../models/memberModel')

/* const { render } = require("ejs") */

class MemberController{
    readMember(req,res){
        memberModel.read(function handle(data){}).then(function(data){
                console.log(data)
                res.render('member',{data: data })
                })
        /* if(req.session.User){ */
            /* let data =  [
                        {
                            stt: 1,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi a',
                            lhv: 'ldhb',
                            trinhDo: 'so cap',
                            danhHieu: 'tro giang',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'da phe duyet'
                        },
                        {
                            stt: 2,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            maHV: 'hwe14562',
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                        {
                            stt: 2,
                            hoTen: 'nguyen thi b',
                            lhv: 'ldhb',
                            trinhDo: 'trung cap',
                            danhHieu: 'giang vien',
                            donVi: 'httt',
                            chucDanh: 'tro ly',
                            trangThai: 'chua phe duyet'
                        },
                    ] */
            
        /* }else{ */ 
            /* res.redirect('/dangnhap') */ 
       /*  } */
        
        
    }
    addMember(req,res){
        res.render('add')
    }
    saveAddMember(req,res){
        /* let name = String(req.dody.name)
        let lhv = String(req.dody.lhv)
        let nSinh= String(req.dody.nSinh)
        let gTinh= String(req.dody.gTinh)
        let dToc= String(req.dody.dToc)
        let nNNgu= String(req.dody.nNNgu)
        let dVi= String(req.dody.dVi)
        let hoi= String(req.dody.hoi)
        let tGVHoi= String(req.dody.tGVHoi)
        let cBac= String(req.dody.cBac)
        let bTho= String(req.dody.bTho)
        let cDanh= String(req.dody.cDanh)
        let lDSTao= String(req.dody.lDSTao)
        let tDo= String(req.dody.tDo)
        let tTHNhan= String(req.dody.tTHNhan)
        let nhaO= String(req.dody.nhaO)
        let tSBACBThan= String(req.dody.tSBACBThan)
        let tSBACCCai= String(req.dody.tSBACCCai)
        let vTri= String(req.dody.vTri)
        let dHieu= String(req.dody.dHieu) */
        console.log('addMemBernew: ' + req.body.name)
        res.render('add')
    }
    deTailMember(req,res){
        console.log(req.params.id)
        let info = [
            {   
                hoTen: 'nguyen thi a',
                lhv: 'qncn',
                nSinh: '13-07-1979',
                gTinh: 'nam',
                dToc: 'kinh',
                nNNgu: '20-12-1997',
                dVi: 'h3',
                hoi: 'phu nu',
                tGVHoi: '20-12-1998',
                cBac: 'trung uy',
                bTho: 'bac 2',
                cDanh: 'tro ly',
                lDSTao: 'viet bao',
                tDo: 'trung cap',
                tTHNhan: 'da ket hon',
                nhaO: 'ngo 21 phuon liet thanh xuan',
                tSBACBThan: 'ko co',
                tSBACCCai: 'ko co',
                vTri: 'dang vien',
                dHieu: 'tro giang', 

            }
        ]
        res.render('deTail',{data: info})
    }
    editMember(req,res){
        res.render('edit')

    }   
    saveEditMember(req,res){
        console.log('editMember: ' + req.body.name)
        res.render('edit')

    }   
    deleteMember(req,res){
        console.log('deleteMember have id: '+req.params.id)
        let info = [
            {
                hoTen: 'nguyen thi a',
                lhv: 'qncn',
                nSinh: '13-07-1979',
                gTinh: 'nam',
                dToc: 'kinh',
                nNNgu: '20-12-1997',
                dVi: 'h3',
                hoi: 'phu nu',
                tGVHoi: '20-12-1998',
                cBac: 'trung uy',
                bTho: 'bac 2',
                cDanh: 'tro ly',
                lDSTao: 'viet bao',
                tDo: 'trung cap',
                tTHNhan: 'da ket hon',
                nhaO: 'ngo 21 phuon liet thanh xuan',
                tSBACBThan: 'ko co',
                tSBACCCai: 'ko co',
                vTri: 'dang vien',
                dHieu: 'tro giang', 

            }
        ]
        res.render('member',{data: info})
    }
}
module.exports = new MemberController