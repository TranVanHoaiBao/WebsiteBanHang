using WebsiteBanHang_tvhb.ContactDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteBanHang_tvhb.Controllers
{
    public class PostController : Controller
    {
        WebsitebanhangEntities objWebbanhangEntities1 = new WebsitebanhangEntities();
        // GET: Post
        public ActionResult Index()
        {
            var LstPost = objWebbanhangEntities1.Posts.ToList();
            return View(LstPost);
        }
    }
}