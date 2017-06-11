using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Collections.Generic;

public partial class Front_Top : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('请输入要搜索的内容！')</script>");
        }
        else {
            string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(str);
            string T_name = TextBox1.Text.Trim();
            string sql = "select count(*) from Goods where 花名='" + T_name + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();
            int ret = (int)cmd.ExecuteScalar();
            conn.Close();

            if (ret <= 0)
            {
                Response.Write("<script> alert('对不起，没有您所搜索的内容！');</script>");
            }
            else {
               
                Session["flowername"] = T_name;
                Response.Redirect("Searchpage.aspx");
            }
        }
        
    }
}
