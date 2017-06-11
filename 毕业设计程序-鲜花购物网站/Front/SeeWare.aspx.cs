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
public partial class Front_SeeWare : System.Web.UI.Page
{
    //加入购物车
    protected void bind()
    {
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
        SqlDataAdapter da = new SqlDataAdapter("select * from gouwuche", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "gouwuche");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //链接到上商品详情页
        namelb.Text = Session["huaname"].ToString();//接收商品名字
        pricelb.Text = Session["price"].ToString();//接收商品价格
        if (!IsPostBack)
            bind();

    }

    //数量减
    protected void button2_Click(object sender, EventArgs e)
    {
        int shu = int.Parse(shuliang.Text);
        if (shu > 1)
        {
            shu--;
        }
        else
        {
            shu = 1;
        }
        shuliang.Text = shu.ToString();
    }
    //数量加
    protected void button3_Click(object sender, EventArgs e)
    {
       
        int shu = int.Parse(shuliang.Text);
        shu++;
        shuliang.Text = shu.ToString();
    }
    //加入购物车
    protected void imagebutton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["username"]=="")
        {
            Response.Write("<script>alert('请先登录！')</script>");
        }
        else { 
        string strCon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Net_flower.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(strCon);
       
        SqlCommand sr = new SqlCommand("select * from gouwuche", conn);
        SqlDataAdapter da = new SqlDataAdapter(sr);
        DataSet ds = new DataSet();
        da.Fill(ds, "gouwuche");
        DataRow newRow = ds.Tables["gouwuche"].NewRow();
        newRow["花名"] = namelb.Text;  //该行另外一列的值
        newRow["价格"] = pricelb.Text;  //该行的一列的值
        newRow["购买数量"] = shuliang.Text;
        //newRow["图片"] = pic.ImageUrl;
        ds.Tables["gouwuche"].Rows.Add(newRow);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(ds, "gouwuche");
        bind();
        Response.Redirect("Myware.aspx");
        }
    }
}