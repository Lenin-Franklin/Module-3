using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HandsOnAPIUsingControllersandRoutes.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        [Route("GetAllCustomers")]
        [HttpGet]
        public List<string> Get()
        {
            return new List<string>() { "Rohan", "Rajan", "Suren" };
        }
        [Route("GetCustomer/{name}")]
        [HttpGet]
        public string Get(string name)
        {
            return name;
        }
        [HttpPost]
        [Route("AddCustomer")]
        public string Post(object customer)
        {
            return "Customer Added"; //add customer details to db table
        }
        [HttpPut]
        [Route("UpdateCustomer")]
        public string Put(object customer)
        {
            return "Customer Updated"; //customer updated
        }
        [HttpDelete]
        [Route("RemoveCustomer/{name}")]
        public string Delete(string name)
        {
            return "Customer Delete";
        }
    }
}
