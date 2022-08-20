using WebsiteBanHang_tvhb.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteBanHang_tvhb.Models
{
    public class HomeModel
    {
        public List<Product> ListProduct { get; set; }

        public List<Category> ListCategory { get; set; }
        public List<Brand> ListBrand { get; set; }
        public List<Slider> ListSlider { get; set; }
    }
}