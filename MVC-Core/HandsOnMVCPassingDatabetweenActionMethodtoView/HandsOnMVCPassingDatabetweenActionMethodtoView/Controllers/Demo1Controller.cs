using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HandsOnMVCDatabetweenActionMethodtoView.Controllers
{
    public class Demo1Controller : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
       [Route("Demo1/Greet/{name}")]
        public IActionResult Greet(string name)
        {
            //set value in viewbag
            ViewBag.Uname = name;
            return View();
        }
        public IActionResult GetFlowers()
        {
            List<string> list = new List<string>() { "Rose", "Lilly", "Jasmine", "Tulips" };
            //ViewData["list"] = list;
            ViewBag.List = list;
            return View();
        }
    }
}
