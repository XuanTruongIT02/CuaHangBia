using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CuaHangBiaOnline_62131086.Models;

namespace CuaHangBiaOnline_62131086.Controllers
{
    public class Danhmuc_62131086Controller : Controller
    {
        DBCuaHangBiaOnline_62131086 db = new DBCuaHangBiaOnline_62131086();
        // GET: Danhmuc
        public ActionResult DanhmucPartial()
        {
            var danhmuc = db.Hangsanxuats.ToList();
            return PartialView(danhmuc);
        }
    }
}