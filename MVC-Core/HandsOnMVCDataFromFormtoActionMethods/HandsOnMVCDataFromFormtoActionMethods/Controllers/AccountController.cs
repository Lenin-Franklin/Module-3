using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HandsOnMVCDataFromFormtoActionMethods.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Login()
        {
            return View();
        }
        public IActionResult Validate(string Uname,string Pwd)
        {
            if(Uname=="Rohan" && Pwd=="12345")
            {
                return RedirectToAction("Welcome", new { Uname = Uname }); //redirects to Welcome Action
            }
            else
            {
                ViewBag.ErrMsg = "Invalid Credentials";
                return View("Login");
            }
        }
        public IActionResult Register()
        {
            return View();
        }
        public IActionResult Welcome(string Uname)
        {
            ViewData["un"] = Uname;
            return View();
        }
    }
}
