using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CuaHangBiaOnline_62131086.Models;

namespace CuaHangBiaOnline_62131086.Controllers
{
    public class Sanpham_62131086Controller : Controller
    {
        DBCuaHangBiaOnline_62131086 db = new DBCuaHangBiaOnline_62131086();

        // GET: Sanpham
        public ActionResult Danhsachsanpham()
        {
            var sp = db.Sanphams.ToList();
           return PartialView(sp);
        }
        public ActionResult biatruyenthong(int page=1)
        {
            var tt = db.Sanphams.Where(n => n.Maloai == 2).ToList();
            int NoOfRecordPerPage = 8;
            int NoOfPages = Convert.ToInt32(Math.Ceiling(Convert.ToDouble(tt.Count) / Convert.ToDouble(NoOfRecordPerPage)));
            int NoOfRecordToSkip = (page - 1) * NoOfRecordPerPage;
            ViewBag.Page = page;
            ViewBag.NoOfPages = NoOfPages;
            tt = tt.Skip(NoOfRecordToSkip).Take(NoOfRecordPerPage).ToList();
            return PartialView(tt);
        }
        public ActionResult bialonlon()
        {
            var ll = db.Sanphams.Where(n => n.Maloai == 3).ToList();
            return PartialView(ll);
        }
        public ActionResult bialoncao()
        {
            var lc = db.Sanphams.Where(n => n.Maloai == 4).ToList();
            return PartialView(lc);
        }

        public ActionResult xemchitiet(int Masp=0)
        {
            var chitiet = db.Sanphams.SingleOrDefault(n=>n.Masp==Masp);
            if (chitiet == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(chitiet);
        }

    }

}