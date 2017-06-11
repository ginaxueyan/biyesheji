using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Usercenter : System.Web.UI.Page
{
    //修改用户信息
    private void databind()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from userdate", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "student");
       
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["username11"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        string SelectSql = "select * from userdate  where truename='" + Label1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(SelectSql, conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "userdate");        
        foreach (DataRow mydr in ds.Tables["userdate"].Rows)
        {
            pass.Text = mydr["pwd"].ToString();
            email.Text = mydr["email"].ToString();
            addr.Text = mydr["address"].ToString();
            phone.Text = mydr["mobile"].ToString();
            qq.Text = mydr["QQ"].ToString();
            zhiye.Text = mydr["zhiye"].ToString();
        }
    }
    //修改
    protected void updateBtn_Click(object sender, EventArgs e)
    {
        
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        string SelectSql = "select * from userdate  where truename='" + Label1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(SelectSql, conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "student");
        DataRow MyRow = ds.Tables["student"].Rows[0];   //得到要修改的行
        MyRow["pwd"] = pass.Text;    //为相应字段赋以新值
        MyRow["email"] = email.Text;
        MyRow["address"] = addr.Text;
        MyRow["mobile"] = phone.Text;
        MyRow["QQ"] = qq.Text;
        MyRow["zhiye"] = zhiye.Text;
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(ds, "student");//将DataSet中数据变化提交到数据库（更新数据库）
        Response.Write("<script> alert('更新成功！');</script>");
    }
  
}