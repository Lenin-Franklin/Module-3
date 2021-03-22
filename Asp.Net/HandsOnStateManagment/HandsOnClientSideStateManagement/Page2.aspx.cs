using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnClientSideStateManagement
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["un"]!=null)
            {
                Label1.Text = Request.Cookies["un"].Value; //read cookie
            }
        }
    }
}