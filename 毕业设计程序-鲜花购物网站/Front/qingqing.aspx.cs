using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Front_qingqing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton11_Click1(object sender, EventArgs e)
    {
        LinkButton lb = (LinkButton)sender;
        DataListItem par = (DataListItem)lb.Parent;
        Session["huaname"] = ((LinkButton)(par.FindControl("LinkButton11"))).Text;//传递商品名字
        Session["price"] = ((Label)(par.FindControl("Label1"))).Text;//传递商品价格
        Session["pic"] = ((ImageButton)(par.FindControl("ImageButton1"))).ToolTip;//
        Response.Redirect("SeeWare.aspx");
    }
}