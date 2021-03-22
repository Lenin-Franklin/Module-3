using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HandsOnValidationControlls.Models;
namespace HandsOnValidationControlls
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Hello World..");
        }

        protected void EmployeeRegister(object sender, EventArgs e)
        {
            Employee employee = new Employee();
            employee.Eid = Convert.ToInt32(txtId.Text);
            employee.Ename = txtName.Text;
            employee.Age = Convert.ToInt32(txtAge.Text);
            employee.Email = txtEmail.Text;
            employee.Mobile = txtMobile.Text;
            employee.joinDate = DateTime.Parse(txtJDate.Text);
            employee.Designation = ddlDesig.Text;
            employee.Uname = txtUname.Text;
            employee.Pwd = txtPwd.Text;
            Response.Redirect("Login.aspx");
            
        }
    }
}