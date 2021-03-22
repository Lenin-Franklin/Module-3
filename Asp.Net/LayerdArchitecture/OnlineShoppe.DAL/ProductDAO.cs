using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using OnlineShoppe.Entities;
namespace OnlineShoppe.DAL
{
    public class ProductDAO
    {
        SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductConn"].ConnectionString);
        public DataTable GetAllProducts()
        {
            try
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Product", Connection);
                DataTable table = new DataTable();
                dataAdapter.Fill(table);
                return table;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        public bool AddProduct(Product product)
        {
            try
            {
                SqlCommand command = new SqlCommand("Insert into Product values(@Pid,@Pname,@Price,@Stock)", Connection);
                command.Parameters.AddWithValue("@Pid", product.Pid);
                command.Parameters.AddWithValue("@Pname", product.Pname);
                command.Parameters.AddWithValue("@Price", product.Price);
                command.Parameters.AddWithValue("@Stock", product.Stock);
                Connection.Open();
                command.ExecuteNonQuery();
                return true;

            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
