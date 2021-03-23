using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HandsOnAPIUsingEF.Services;
using HandsOnAPIUsingEF.Models;
namespace HandsOnAPIUsingEF.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private ProductService service;
        public ProductController()
        {
            service = new ProductService();
        }
        [Route("GetProducts")]
        public IActionResult GetProducts()
        {
            List<Product> list = service.GetProducts();
            return Ok(list);
        }
        [Route("GetProduct/{Id}")]
        public IActionResult GetProduct(int Id)
        {
            Product product = service.GetProduct(Id);
            if (product != null)
            {
                return Ok(product);
            }
            else
                return NotFound("Invalid Id");
        }
        [Route("AddProduct")]
        public IActionResult AddProduct(Product product)
        {
            try
            {
                service.AddProduct(product);
                return Ok();
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Route("UpdateProduct")]
        public IActionResult UpdateProduct(Product product)
        {
            try
            {
                service.UpdateProduct(product);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Route("Delete/{Id}")]
        public IActionResult DeleteProduct(int Id)
        {
            try
            {
                service.DeleteProduct(Id);
                return Ok("Record Deleted");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
