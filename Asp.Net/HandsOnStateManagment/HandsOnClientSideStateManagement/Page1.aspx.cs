using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnClientSideStateManagement
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //set cookie value
            string uname = TextBox1.Text;
            Response.Cookies["un"].Value = uname;
            Response.Cookies["un"].Expires = DateTime.Now.AddDays(1);
            Response.Redirect("Page2.aspx");
        }
    }
}