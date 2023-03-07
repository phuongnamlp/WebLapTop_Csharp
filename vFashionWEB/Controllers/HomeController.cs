using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LaptopWeb.Models;

namespace LaptopWeb.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult CSKH()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
        public ActionResult HTTT()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
    }
}