using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnClientSideStateManagement
{
    public partial class Demo2 : System.Web.UI.Page
    {
        int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Hello " + TextBox1.Text;
            x = 10;
            //set value in viewstate
            ViewState["k"] = x;
            Response.Write(x);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Read viewstate value
            if (ViewState["k"] != null)
                x = (int)ViewState["k"];
            Response.Write(x);
        }
    }
}