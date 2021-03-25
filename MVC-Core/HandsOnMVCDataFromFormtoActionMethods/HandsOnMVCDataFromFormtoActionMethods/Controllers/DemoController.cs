using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HandsOnMVCDataFromFormtoActionMethods.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Greet()
        {
            // return RedirectToAction("Details");
            //return RedirectToAction("Login", "Account");
            // return RedirectToAction("Contact", new { email = "san@gmail.com", mobile = "3243243434" });
            return RedirectToAction("http://www.twitter.com");
        }
        public IActionResult Details()
        {
            return View();
        }
        public IActionResult Contact(string email,string mobile)
        {
            return View();
        }
    }
}
