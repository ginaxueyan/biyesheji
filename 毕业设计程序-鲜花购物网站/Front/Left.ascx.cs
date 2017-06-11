using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Linq;
using System.Collections.Generic;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class Front_Left : System.Web.UI.UserControl
{
    Common com = new Common();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = usernameLb.Text;
        if (!IsPostBack)
        {
            username1.Text = "";
            txtmima.Text = "";
        }
    }



    //登录
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
        string username = username1.Text.Trim();
        string pwd = txtmima.Text.Trim();
        string sql = "select count(*) from userdate where username=@username and pwd=@pwd";
        SqlCommand cmd = new SqlCommand(sql, conn);
        conn.Open();
        cmd.Parameters.Add(new SqlParameter("username", username1.Text));
        cmd.Parameters.Add(new SqlParameter("pwd", txtmima.Text));
        int ret= (int)cmd.ExecuteScalar();
        conn.Close();
        if (ret <= 0)
            
            Response.Write("<script>alert('登录失败！用户名或密码错误！')</script>");
        else
        {
            loginInTbl.Visible = true;
            usernameLb.Visible = true;
            usernameLb.Text = username1.Text;
            username1.Text = "";
            txtmima.Text = "";
        }
       

    }
    //注册
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhuce.aspx");
    }
    //个人资料
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["username11"] = usernameLb.Text;
        Response.Redirect("Usercenter.aspx");
        
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userdingdan.aspx");
    }
}
       