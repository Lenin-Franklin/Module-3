using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnServerSideStatmanagment
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["un"] != null)
                Label1.Text = Session["un"].ToString();
            else
                Response.Redirect("Login.aspx");
        }

        protected void LogOut(object sender, EventArgs e)
        {
            Session.Clear();//clear all session objects
            Response.Redirect("Login.aspx");
        }
    }
}