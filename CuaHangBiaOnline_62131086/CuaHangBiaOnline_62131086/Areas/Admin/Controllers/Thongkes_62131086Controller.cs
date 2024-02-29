using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CuaHangBiaOnline_62131086.Models;
using System.Data.Entity;
namespace CuaHangBiaOnline_62131086.Areas.Admin.Controllers
{
    public class Thongkes_62131086Controller : Controller
    {
        private DBCuaHangBiaOnline_62131086 db = new DBCuaHangBiaOnline_62131086();

        // GET: Admin/Thongkes
        public ActionResult Index()
        {
            var donhangs = db.Donhangs.ToList();
            var dataThongke = (from s in db.Donhangs
                      join x in db.Nguoidungs on s.MaNguoidung equals x.MaNguoiDung
                      group s by s.MaNguoidung into g
                      select new Thongke_62131086
                      {
                          Tennguoidung = g.FirstOrDefault().Nguoidung.Hoten,
                          Tongtien = g.Sum(x => x.Tongtien),
                          Dienthoai = g.FirstOrDefault().Nguoidung.Dienthoai,
                          Soluong = g.Count()
                      });
            var dataFinal = dataThongke.OrderByDescending(s => s.Tongtien).Take(5).ToList();
            return View(dataFinal);
        }
    }
}