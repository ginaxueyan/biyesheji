using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Front_OK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Add.Text = Session["address"].ToString();
        price.Text = Session["price"].ToString();
    }
}