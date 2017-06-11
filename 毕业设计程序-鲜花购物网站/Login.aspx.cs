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
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Admin_Login : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //提交
    protected void Button1_Click(object sender, EventArgs e)
    {
        //获取验证码
        string code = txtcode.Text;
        if (Request.Cookies["checkCode"].Value == code)
        {
            string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(str);
            string username = txtname.Text.Trim();
            string pwd = txtmima.Text.Trim();
            string sql = "select count(*) from ADMIN where username=@username and pwd=@pwd";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.Parameters.Add(new SqlParameter("username", txtname.Text));
            cmd.Parameters.Add(new SqlParameter("pwd", txtmima.Text));
            int ret = (int)cmd.ExecuteScalar();
            conn.Close();
            if (ret <= 0)

                Response.Write("<script>alert('登录失败！用户名或密码错误！')</script>");

            else
            {

                Response.Redirect("Managelist.aspx");
            }
        }
        else {
            Response.Write("<script>alert('验证码输入错误！')</script>");
        }
    }
}
