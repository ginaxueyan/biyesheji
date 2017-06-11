using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Front_Myware : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }
    ////继续购物
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    ////提交订单
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(str);

            string sql = "select * from gouwuche";

            SqlDataAdapter ada = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();

            int counter = ada.Fill(ds, "gouwuche");
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlDataAdapter da1 = new SqlDataAdapter("select * from dingdan ", conn);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "dingdan");
            foreach (DataRow mydr in ds.Tables["gouwuche"].Rows)
            {
               
                DataRow newRow = ds1.Tables["dingdan"].NewRow();
                newRow["花名"] = mydr["花名"].ToString();
                newRow["购买数量"] = mydr["购买数量"].ToString();
                newRow["价格"] = mydr["价格"].ToString();
                
                ds1.Tables["dingdan"].Rows.Add(newRow);
                SqlCommandBuilder cb = new SqlCommandBuilder(da1);
                da1.Update(ds1, "dingdan");
            }
            Response.Redirect("cash register.aspx");
        }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
        SqlCommand sr = new SqlCommand("select * from gouwuche", conn);
        SqlDataAdapter da = new SqlDataAdapter(sr);
        DataSet ds = new DataSet();
        DataTable table = new DataTable();
        da.Fill(ds, "gouwuche");
        if (table.Rows.Count == 0)
        {
            ShopCart.Visible = false;
            Label2.Visible = true;
            Label2.Text = "您的购物车没有商品了，赶快去购物吧！！";

            ImageButton3.Visible = false;
            ImageButton2.Visible = false;

        }
    }
}
    //清空购物车
    //protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    //{
    //    string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
    //    SqlConnection conn = new SqlConnection(strCon);
    //    SqlCommand sr = new SqlCommand("select * from gouwuche", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(sr);
    //    DataSet ds = new DataSet();
    //    DataTable table = new DataTable();
    //    da.Fill(ds, "gouwuche");
    //    if (table.Rows.Count == 0)
    //    {
    //        ShopCart.Visible = false;
    //        Label2.Visible = true;
    //        Label2.Text = "您的购物车没有商品了，赶快去购物吧！！";

    //        ImageButton3.Visible = false;
    //        ImageButton2.Visible = false;
            
    //    }
    //}
   

