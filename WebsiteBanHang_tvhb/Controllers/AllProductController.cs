using WebsiteBanHang_tvhb.ContactDB;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang_tvhb.Controllers
{
    public class AllProductController : Controller
    {
        WebsitebanhangEntities objWebbanhangEntities1 = new WebsitebanhangEntities();
        // GET: AllProduct
        public ActionResult Index(string currentFilter, string SearchString, int? page)
        {

            var lstProduct = new List<Product>();

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
                lstProduct = objWebbanhangEntities1.Products.Where(n => n.Name.Contains(SearchString)).ToList();
            }
            else
            {
                lstProduct = objWebbanhangEntities1.Products.ToList();
            }

            ViewBag.CurrentFilter = SearchString;
            int pageSize = 8;
            int pageNumber = (page ?? 1);
            return View(lstProduct.ToPagedList(pageNumber, pageSize));
        }
    }
}