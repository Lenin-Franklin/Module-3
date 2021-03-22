using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShoppe.Services;
using OnlineShoppe.Entities;
namespace OnlineShoppe.UI
{
    public partial class OnlineShop : System.Web.UI.Page
    {
        ProductService productService = new ProductService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadGrid();
            }
         
        }

        protected void AddProduct(object sender, EventArgs e)
        {
            Product product = new Product()
            {
                Pid=int.Parse(txtId.Text),
                Pname=txtName.Text,
                Price=int.Parse(txtPrice.Text),
                Stock=int.Parse(txtStock.Text)
            };
            bool result=productService.AddProduct(product);
            if(result)
            {
                LoadGrid();
            }

        }
        private void LoadGrid()
        {
            GridView1.DataSource = productService.GetProducts();
            GridView1.DataBind();

        }
    }
}