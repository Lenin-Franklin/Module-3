using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MyFirstAPP.Controllers
{
    public class DemoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Details()
        {
            return View();//return view template as a response
        }
        [Route("Demo/Greet/{name}")]
        public IActionResult Greet(string name)
        {
            string n = name;
            return View();
        }
    }
}
