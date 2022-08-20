using WebsiteBanHang_tvhb.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang_tvhb.Controllers
{
    public class BrandController : Controller
    {
        WebsitebanhangEntities objWebbanhangEntities1 = new WebsitebanhangEntities();
        // GET: Brand
        public ActionResult ProductBrands(int Id)
        {
            var listProduct = objWebbanhangEntities1.Products.Where(n => n.Bandld == Id).ToList();
            return View(listProduct);
        }

    }
}