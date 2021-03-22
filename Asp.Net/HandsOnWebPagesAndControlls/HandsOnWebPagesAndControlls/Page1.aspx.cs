using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnWebPagesAndControlls
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickMe(object sender, EventArgs e)
        {
            //redirect to another page or website
            string un = txtName.Text;
            Response.Redirect("Page2.aspx?name="+un);
//Response.Redirect("http://www.twitter.com");
        }
    }
}