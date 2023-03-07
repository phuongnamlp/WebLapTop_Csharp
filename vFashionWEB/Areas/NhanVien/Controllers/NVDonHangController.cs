﻿using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LaptopWeb.Models;

namespace LaptopWeb.Areas.NhanVien.Controllers
{
    public class NVDonHangController : Controller
    {
        LaptopModel db = new LaptopModel();
        // GET: NhanVien/NVDonHang
        public ActionResult Index(int? page)
        {
            if (page == null) page = 1;
            var dh = db.DonHangs.OrderBy(x => x.Madon);
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(dh.ToPagedList(pageNumber, pageSize));

        }

        public ActionResult Detail(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DonHang donhang = db.DonHangs.Find(id);
            //var chitiet = db.CTDonHangs.Include(d => d.SanPham).Where(d => d.Madon == id).ToList();
            if (donhang == null)
            {
                return HttpNotFound();
            }
            return View(donhang);


        }
        public ActionResult Edit(int id)
        {// Hiển thị dropdownlist
            var dh = db.DonHangs.Find(id);
            var ttselected = new SelectList(db.TinhTrangs, "MaTT", "LoaiTT", dh.Tinhtrang);
            ViewBag.Tinhtrang = ttselected;
            // 
            return View(dh);
        }


        [HttpPost]
        public ActionResult Edit(DonHang donhang)
        {
            try
            {
                var oldItem = db.DonHangs.Find(donhang.Madon);
                oldItem.Tinhtrang = donhang.Tinhtrang;
                db.SaveChanges();
                // xong chuyển qua index
                return RedirectToAction("Index", "AdminDonHang");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Delete(int id)
        {

            var nhom = db.CTDonHangs.Where(d => d.Madon == id).ToList();
            db.CTDonHangs.RemoveRange(nhom);
            db.SaveChanges();
            var dh = db.DonHangs.Find(id);
            db.DonHangs.Remove(dh);
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