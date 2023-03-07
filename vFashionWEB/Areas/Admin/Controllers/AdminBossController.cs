﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LaptopWeb.Models;

namespace LaptopWeb.Areas.Admin.Controllers
{
    public class AdminBossController : Controller
    {
        LaptopModel db = new LaptopModel();
        // GET: Admin/AdminBoss

        public ActionResult Index()
        {
            var kh = db.NguoiDungs.Where(n => n.IDQuyen == 4);

            return View(kh.ToList());
        }
    }
}