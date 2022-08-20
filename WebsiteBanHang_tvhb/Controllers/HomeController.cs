﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanHang_tvhb.Context;
using WebsiteBanHang_tvhb.Models;

using System.Security.Cryptography;
using System.Text;


namespace WebsiteBanHang_tvhb.Controllers
{
    public class HomeController : Controller
    {
        WebsitebanhangEntities objwebsiteBanHangEntities = new WebsitebanhangEntities();
        public ActionResult Index()
        {
            HomeModel objHomeModel = new HomeModel();

            objHomeModel.ListCategory = objwebsiteBanHangEntities.Categories.ToList();
            objHomeModel.ListProduct = objwebsiteBanHangEntities.Products.ToList();
            objHomeModel.ListBrand = objwebsiteBanHangEntities.Brands.ToList();
            objHomeModel.ListSlider = objwebsiteBanHangEntities.Sliders.ToList();

            return View(objHomeModel);
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

        //GET: Registeran
        public ActionResult Register()
        {
            return View();
        }

        //POST: Register
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(User _user)
        {
            if (ModelState.IsValid)
            {
                var check = objwebsiteBanHangEntities.Users.FirstOrDefault(s => s.Email == _user.Email);
                if (check == null)
                {
                    _user.Password = GetMD5(_user.Password);
                    objwebsiteBanHangEntities.Configuration.ValidateOnSaveEnabled = false;
                    objwebsiteBanHangEntities.Users.Add(_user);
                    objwebsiteBanHangEntities.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    ViewBag.error = "Email already exists";
                    return View();
                }


            }
            return View();


        }

        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string email, string password)
        {
            if (ModelState.IsValid)
            {

                var f_password = GetMD5(password);
                var data = objwebsiteBanHangEntities.Users.Where(s => s.Email.Equals(email) && s.Password.Equals(f_password)).ToList();
                if (data.Count() > 0)
                {
                    //add session
                    Session["FullName"] = data.FirstOrDefault().FirstName + " " + data.FirstOrDefault().LastName;
                    Session["Email"] = data.FirstOrDefault().Email;
                    Session["idUser"] = data.FirstOrDefault().IdUser;
                    return RedirectToAction("Index");
                }
                else
                {

                    return RedirectToAction("Login");
                }
            }
            return View();
        }

        //Logout
        public ActionResult Logout()
        {
            Session.Clear();//remove session
            return RedirectToAction("Login");
        }

    }
}