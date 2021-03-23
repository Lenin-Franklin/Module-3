using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HandsOnAPIUsingEF.Models;
namespace HandsOnAPIUsingEF.Services
{
    interface IProductService
    {
        List<Product> GetProducts();
        Product GetProduct(int Id);
        bool AddProduct(Product product);
        bool UpdateProduct(Product product);
        bool DeleteProduct(int Id);
    }
}
