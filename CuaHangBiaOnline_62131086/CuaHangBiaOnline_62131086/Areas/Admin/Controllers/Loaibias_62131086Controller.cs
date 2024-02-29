using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CuaHangBiaOnline_62131086.Models;

namespace CuaHangBiaOnline_62131086.Areas.Admin.Controllers
{
    public class Loaibias_62131086Controller : Controller
    {
        private DBCuaHangBiaOnline_62131086 db = new DBCuaHangBiaOnline_62131086();

        // GET: Admin/Loaibias
        public ActionResult Index()
        {
            return View(db.Loaibias.ToList());
        }

        // GET: Admin/Loaibias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaibia_62131086 Loaibia = db.Loaibias.Find(id);
            if (Loaibia == null)
            {
                return HttpNotFound();
            }
            return View(Loaibia);
        }

        // GET: Admin/Loaibias/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Loaibias/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Maloai,Tenloai")] Loaibia_62131086 Loaibia)
        {
            if (ModelState.IsValid)
            {
                db.Loaibias.Add(Loaibia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(Loaibia);
        }

        // GET: Admin/Loaibias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaibia_62131086 Loaibia = db.Loaibias.Find(id);
            if (Loaibia == null)
            {
                return HttpNotFound();
            }
            return View(Loaibia);
        }

        // POST: Admin/Loaibias/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Maloai,Tenloai")] Loaibia_62131086 Loaibia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(Loaibia).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(Loaibia);
        }

        // GET: Admin/Loaibias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Loaibia_62131086 Loaibia = db.Loaibias.Find(id);
            if (Loaibia == null)
            {
                return HttpNotFound();
            }
            return View(Loaibia);
        }

        // POST: Admin/Loaibias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Loaibia_62131086 Loaibia = db.Loaibias.Find(id);
            db.Loaibias.Remove(Loaibia);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
