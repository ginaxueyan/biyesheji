using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Front_zhucexieyi : System.Web.UI.Page
{
    protected void bind()
    {
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
        SqlDataAdapter da = new SqlDataAdapter("select * from userdate", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "userdate");
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            bind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (username.Text == "" || name.Text == "" || pass.Text == "" || pass2.Text == "" || email.Text == "" || addr.Text == "" || phone.Text == "" || qq.Text == "" || zhiye.Text == "")
        {
            Response.Write("<script>alert('请填全信息！！')</script>");

        }
        else { 
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
        SqlCommand sr = new SqlCommand("select * from userdate", conn);
        SqlDataAdapter da = new SqlDataAdapter(sr);
        DataSet ds = new DataSet();
        da.Fill(ds, "userdate");
        DataRow newRow = ds.Tables["userdate"].NewRow();
        newRow["username"] = username.Text;
        newRow["truename"] = name.Text;//该行另外一列的值
        newRow["pwd"] = pass.Text;
        newRow["email"] = email.Text;
        newRow["address"] = addr.Text;
        newRow["mobile"] = phone.Text;
        newRow["QQ"] = qq.Text;
        newRow["zhiye"] = zhiye.Text;
        Session["user"] = username.Text;
        Session["pass1"] = pass.Text;
        ds.Tables["userdate"].Rows.Add(newRow);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(ds, "userdate");
        bind();
        Response.Redirect("Default.aspx");
        }
    }

 //检测账号代码
    private bool isName(string p)
    {
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
        conn.Open();
        SqlCommand sr = new SqlCommand("select * from userdate where username='" + p + "'", conn);
        if (Convert.ToInt32(sr.ExecuteScalar()) > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
        throw new NotImplementedException();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // 判断用户输入的会员名是否为空，为空则给出提示
        if (username.Text != "")
        {
            //调用自定义的方法判断用户输入的会员名是否存在
            if (isName(username.Text))
            {
                Response.Write("<script>alert('用户名已存在！')</script>");
                username.Text = "";

            }
            else
            {
                Response.Write("<script>alert('可以进行注册！')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('用户名不能为空！')</script>");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
