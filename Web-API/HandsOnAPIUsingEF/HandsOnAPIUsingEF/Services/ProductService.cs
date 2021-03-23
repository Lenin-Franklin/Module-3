using HandsOnAPIUsingEF.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HandsOnAPIUsingEF.Models;
namespace HandsOnAPIUsingEF.Services
{
    public class ProductService : IProductService
    {
        private Training1DBContext context = null;
        public ProductService()
        {
            context = new Training1DBContext();
        }

        public bool AddProduct(Product product)
        {
            context.Products.Add(product);
            context.SaveChanges();
            return true;
        }

        public bool DeleteProduct(int Id)
        {
            Product product = context.Products.Find(Id);
            context.Products.Remove(product);
            context.SaveChanges();
            return true;
        }

        public Product GetProduct(int Id)
        {
            Product product = context.Products.Find(Id);
            return product;
        }

        public List<Product> GetProducts()
        {
            return context.Products.ToList();
        }

        public bool UpdateProduct(Product product) //updated product
        {
            context.Products.Update(product);
            context.SaveChanges();
            return true;
        }
    }
}
