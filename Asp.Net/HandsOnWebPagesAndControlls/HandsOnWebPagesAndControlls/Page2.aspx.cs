using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnWebPagesAndControlls
{
    public partial class Page2 : System.Web.UI.Page
    {
        //It fieres when page is loaded to the browser
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["name"]; //reads querystring value
        }
    }
}