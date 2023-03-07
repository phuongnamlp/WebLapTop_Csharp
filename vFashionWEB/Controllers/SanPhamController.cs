using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LaptopWeb.Models;
using PagedList;

namespace LaptopWeb.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        LaptopModel db = new LaptopModel();
        public ActionResult Index(string currentFilter, string SearchString, int? page)
        {
            var ni = new List<SanPham>();
            if (SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }
            if (!string.IsNullOrEmpty(SearchString))
            {

                ni = db.SanPhams.Where(n => n.Tensp.Contains(SearchString)).ToList();
            }
            else
            {
                ni = db.SanPhams.ToList();
            }
            if (ni.Count > 0)
            {

            }
            else
            {
                ViewBag.Khongcosanpham = "Sản phẩm bạn tìm kiếm hiện không có hoặc đã hết hàng";
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 9;
            int pageNumber = (page ?? 1);
            ni = ni.OrderBy(n => n.Masp).ToList();
            return View(ni.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Danhmuc(int id)
        {
            var Danhmucsp = db.SanPhams.Where(n => n.Mahang == id).ToList();
            return View(Danhmucsp);
        }
        public ActionResult xemchitiet(int Masp = 0)
        {
            var chitiet = db.SanPhams.SingleOrDefault(n => n.Masp == Masp);
            if (chitiet == null)    
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(chitiet);

        }
        public ActionResult test1()
        {
            return View();
        }
        public ActionResult Trang1()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang2()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang3()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang4()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang5()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang6()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang7()
        {
            HomeModel homemodel = new HomeModel();
            homemodel.ListDanhmuc = db.HangSanXuats.ToList();
            homemodel.ListSanpham = db.SanPhams.ToList();
            /*            int pageSize = 9;
                        int pageNumber = (page ?? 1);*/
            return View(homemodel);
        }
        public ActionResult Trang8()
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