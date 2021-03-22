using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnWebPagesAndControlls
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = "Hello World";
        }
        protected void Greet(object sender,EventArgs e)
        {
            TextBox1.Text = "Asp.net is easy to learn..";
        }

        protected void SetMessage(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Sum(object sender, EventArgs e)
        {

        }
    }
}