﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnValidationControlls
{
    public partial class Demo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (IsPostBack==false)
                {
                //adding items to dropdown
                ddl1.Items.Add("Red");
                ddl1.Items.Add("Green");
                ddl1.Items.Add("Yellow");
                ddl1.Items.Add("Pink");
            }
        }
    }
}