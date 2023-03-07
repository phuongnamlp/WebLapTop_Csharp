using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopWeb.Models
{
    public class HomeModel
    {
        public List<SanPham> ListSanpham { get; set; }
        public List<HangSanXuat> ListDanhmuc { get; set; }
    }
}