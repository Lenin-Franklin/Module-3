using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HandsOnMVCPassingDatabetweenActionMethodtoView.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        [Route("Greet/{uname}")]
        public IActionResult Greet(string uname)
        {
            string name = uname;
            //set name in viewdata object
            ViewData["un"] = name;
            return View();
        }
        public IActionResult GetFlowers()
        {
            List<string> list = new List<string>() { "Rose", "Lilly", "Jasmine", "Tulips" };
            ViewData["list"] = list;
            return View();
        }
    }
}
