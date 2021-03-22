using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MyFirstAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DemoController : ControllerBase
    {
        [Route("Message")]
        public string Get()
        {
            return "Hello World API..";
        }
        [Route("Greet/{name}")]
        public string Get(string name)
        {
            return "Hello " + name;
        }
    }
}
