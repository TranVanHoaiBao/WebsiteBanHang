using WebsiteBanHang_tvhb.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang_tvhb.Controllers
{
    public class CategoryController : Controller
    {
        WebsitebanhangEntities objwebsiteBanHangEntities = new WebsitebanhangEntities();
        // GET: Category
        public ActionResult Index()
        {
            var lstCategory = objwebsiteBanHangEntities.Categories.ToList();
            return View(lstCategory);
        }
        public ActionResult ProductCategory(int Id)
        {
            var listProduct = objwebsiteBanHangEntities.Products.Where(n => n.Categoryid == Id).ToList();
            return View(listProduct);
        }
    }
}