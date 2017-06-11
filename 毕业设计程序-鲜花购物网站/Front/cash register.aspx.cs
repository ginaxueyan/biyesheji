using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Front_cash_register : System.Web.UI.Page
{
    protected void bind()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["gwc"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from gouwuche where 用户名='" + Session["username"].ToString() + "'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "shangpin");
        GridView1.DataSource = ds.Tables["shangpin"];
        GridView1.DataBind();

    }
    private DataTable getdata()
    {
        string ss = Session["hua"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["hua"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from Goods where 花名='" + ss + "'", conn);       
        DataSet ds = new DataSet();
        da.Fill(ds, "hua");
        return ds.Tables["hua"];
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        }
    

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        double sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cb.Checked == true)
            {
                sum = sum + Convert.ToDouble(GridView1.Rows[i].Cells[3].Text) * Convert.ToDouble(GridView1.Rows[i].Cells[4].Text);
            }
        }
        subtotalLb.Text = sum.ToString();
    }
    protected void ChecBox2_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ch1 = (CheckBox)sender;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            cb.Checked = ch1.Checked;
        }
        double sum = 0;
        if (ch1.Checked == true)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                if (cb.Checked)
                {
                    sum = sum + Convert.ToDouble(GridView1.Rows[i].Cells[3].Text) * Convert.ToDouble(GridView1.Rows[i].Cells[4].Text);
                }
            }
            subtotalLb.Text = sum.ToString();
        }
        else
        {
            subtotalLb.Text = "应付金额：";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind(); //重新绑定GridView数据的函数
    }
    //返回修改购物车
    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Myware.aspx");
    }
    //提交
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('请输入地址！')</script>");
        }
        else {

        Session["address"] = TextBox1.Text;//传递地址
        Session["price"] = subtotalLb.Text;//传递价格
        Response.Redirect("OK.aspx");
        }
    }
}