using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineShoppe.DAL;
using OnlineShoppe.Entities;
using System.Data;
namespace OnlineShoppe.Services
{
    public class ProductService
    {
        ProductDAO productDAO = new ProductDAO();
        public DataTable GetProducts()
        {
            return productDAO.GetAllProducts();
        }
        public bool AddProduct(Product product)
        {
            return productDAO.AddProduct(product);
        }
    }
}
