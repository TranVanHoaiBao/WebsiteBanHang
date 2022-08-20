using WebsiteBanHang_tvhb.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang.Controllers
{
    public class ProductController : Controller
    {
        WebsitebanhangEntities objwebsiteBanHangEntities = new WebsitebanhangEntities();
        // GET: Product
        public ActionResult Detail(int Id)
        {
            var objProduct = objwebsiteBanHangEntities.Products.Where(n => n.Id == Id).FirstOrDefault();
            return View(objProduct);
        }
       
    }
}