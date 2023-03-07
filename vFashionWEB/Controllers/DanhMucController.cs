using LaptopWeb.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace LaptopWeb.Controllers
{
    public class DanhMucController : Controller
    {
        LaptopModel db = new LaptopModel();

        // GET: DanhMuc
        public ActionResult Index(/*int? page*/)
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
/*            int pageSize = 9;
            int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
    }
}