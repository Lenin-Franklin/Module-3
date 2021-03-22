using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace HandsOnDataBindControls
{
    public partial class Demo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetEmployees();
        }
        public void GetEmployees()
        {
           try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TrainingDBConn"].ConnectionString))
                {
                    SqlDataAdapter da = new SqlDataAdapter("Select * from Employee", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        public void GetEmployeeByID(int Id)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TrainingDBConn"].ConnectionString))
                {
                    SqlDataAdapter da = new SqlDataAdapter("Select * from Employee where Eid= "+Id, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DetailsView1.DataSource = dt;
                    DetailsView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = int.Parse(txtId.Text);
            GetEmployeeByID(Id);
        }
    }
}