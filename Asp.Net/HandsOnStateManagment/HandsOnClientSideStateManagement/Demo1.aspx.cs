using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnClientSideStateManagement
{
    public partial class Demo1 : System.Web.UI.Page
    {
        int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           // x = 10;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            x = 15;
            //set x value in hidden field
            Hf1.Value = x.ToString();
            Response.Write("x= " + x);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Read X values
            x = Convert.ToInt32(Hf1.Value);
            Response.Write("x= " + x);
        }
    }
}