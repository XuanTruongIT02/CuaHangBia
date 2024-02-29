using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuaHangBiaOnline_62131086.Models
{
    public class GioHang_62131086
    {
        //private int iMaSP;

        //public int IMaSP
        //{
        //    get { return iMaSP; }
        //    set { iMaSP = value; }
        //}
        DBCuaHangBiaOnline_62131086 db = new DBCuaHangBiaOnline_62131086();
        public int iMasp { get; set; }
        public string sTensp { get; set; }
        public string sAnhBia { get; set; }
        public double dDonGia { get; set; }
        public int iSoLuong { get; set; }
        public double ThanhTien
        {
            get { return iSoLuong * dDonGia; }
        }
        //Hàm tạo cho giỏ hàng
        public GioHang_62131086(int Masp)
        {
            iMasp = Masp;
            Sanpham_62131086 sp = db.Sanphams.Single(n => n.Masp == iMasp);
            sTensp =sp.Tensp;
            sAnhBia = sp.Anhbia;
            dDonGia = double.Parse(sp.Giatien.ToString());
            iSoLuong = 1;
        }

    }
}