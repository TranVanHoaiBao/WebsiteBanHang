using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanHang_tvhb.Context;

namespace WebsiteBanHang_tvhb.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        WebsitebanhangEntities objWebbanhang1Entities = new WebsitebanhangEntities();
        // GET: Admin/Home
        public ActionResult Index()
        {
            if (Session["User"] != null)
            {
                var lstProduct = objWebbanhang1Entities.Products.ToList();
                return View(lstProduct);
            }
            else
            {
                return View("Login");
            }
            //return View();
        }
    }
}