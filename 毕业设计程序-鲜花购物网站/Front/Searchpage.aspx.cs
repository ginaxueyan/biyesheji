using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Front_Searchpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  
        string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(str);
        string sql = "select * from Goods where 花名='" + Session["flowername"].ToString() + "'";
        SqlDataAdapter ada = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        int counter = ada.Fill(ds, "Goods");
        foreach (DataRow mydr in ds.Tables["Goods"].Rows)
        {
            LinkButton11.Text = Session["flowername"].ToString();
            Label2.Text = mydr["价格"].ToString();
          
        }

    }

    protected void LinkButton11_Click1(object sender, EventArgs e)
    {
        LinkButton lb = (LinkButton)sender;
        //DataListItem par = (DataListItem)lb.Parent;
        //Session["huaname"] = ((LinkButton)(par.FindControl("LinkButton11"))).Text;//传递商品名字
        //Session["price"] = ((Label)(par.FindControl("Label1"))).Text;//传递商品价格
        //Session["pic"] = ((ImageButton)(par.FindControl("ImageButton1"))).ToolTip;//
        Session["huaname"] = LinkButton11.Text;
        Session["price"] = Label2.Text;
        Response.Redirect("SeeWare.aspx");
    }
}