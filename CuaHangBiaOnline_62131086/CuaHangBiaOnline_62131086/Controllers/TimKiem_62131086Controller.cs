using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CuaHangBiaOnline_62131086.Models;
namespace CuaHangBiaOnline_62131086.Controllers
{
    public class TimKiem_62131086Controller : Controller
    {
        // GET: TimKiem
        public ActionResult TimKiem(string search = "", int page = 1)
        {
            DBCuaHangBiaOnline_62131086 db = new DBCuaHangBiaOnline_62131086();
            var sp = db.Sanphams.Where(n => n.Tensp.Contains(search)).ToList();
            ViewBag.Check = sp.Count();
            if (sp.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm!";
            }
            ViewBag.Search = search;
            //Paging
            int NoOfRecordPerPage = 6;
            int NoOfPages = Convert.ToInt32(Math.Ceiling(Convert.ToDouble(sp.Count) / Convert.ToDouble(NoOfRecordPerPage)));
            int NoOfRecordToSkip = (page - 1) * NoOfRecordPerPage;
            ViewBag.Page = page;
            ViewBag.NoOfPages = NoOfPages;
            sp = sp.Skip(NoOfRecordToSkip).Take(NoOfRecordPerPage).ToList();

            return View(sp);
        }
        
}
}