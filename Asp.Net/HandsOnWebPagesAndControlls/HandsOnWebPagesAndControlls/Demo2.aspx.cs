using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandsOnWebPagesAndControlls
{
    public partial class Demo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DropDownList1.Items.Add(new ListItem() { Text = "India", Value = "Delhi" });
                DropDownList1.Items.Add(new ListItem() { Text = "UK", Value = "London" });
                DropDownList1.Items.Add(new ListItem() { Text = "US", Value = "Newyork" });
                DropDownList1.Items.Add(new ListItem() { Text = "China", Value = "Beejing" });
                DropDownList1.Items.Add(new ListItem() { Text = "Japan", Value = "Tokyo" });
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string counry = DropDownList1.SelectedItem.Text;
            string capital = DropDownList1.SelectedItem.Value;
            TextBox1.Text = counry;
            TextBox2.Text = capital;
        }
    }
}