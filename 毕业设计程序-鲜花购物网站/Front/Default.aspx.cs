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

public partial class Front_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Timer1.Enabled = true;
        if (!IsPostBack)
        {
            ViewState["imageIndex"] = 1;
        }
       


    }
    //定时器
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        ViewState["imageIndex"] = (int)ViewState["imageIndex"] % 5 + 1;
        ImageButton4.ImageUrl = string.Format("~/images/漫画/{0}.jpg", ViewState["imageIndex"]);
        ImageButton5.ImageUrl = string.Format("~/images/花签/{0}.PNG", ViewState["imageIndex"]);
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int n = (int)ViewState["imageIndex"] % 5;
        switch (n)
        {
            case 1: { Response.Redirect("sun.aspx?huaname=阳光海岸"); } break;
            case 2: { Response.Redirect("qingqing.aspx?huaname=青青子衿"); } break;
            case 3: { Response.Redirect("meet.aspx?huaname=相遇"); } break;
            case 4: { Response.Redirect("xiangsi.aspx?huaname=相思雪"); } break;
            case 5: { Response.Redirect("tianshi.aspx?huaname=天使之祈"); } break;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        int n = (int)ViewState["imageIndex"] % 5;
        switch (n)
        {
            case 1: { Response.Redirect("sun.aspx?huaname=阳光海岸"); } break;
            case 2: { Response.Redirect("qingqing.aspx?huaname=青青子衿"); } break;
            case 3: { Response.Redirect("meet.aspx?huaname=相遇"); } break;
            case 4: { Response.Redirect("xiangsi.aspx?huaname=相思雪"); } break;
            case 5: { Response.Redirect("tianshi.aspx?huaname=天使之祈"); } break;
        }
    }
    //点击名字可以链接到商品详情页
    protected void LinkButton11_Click1(object sender, EventArgs e)
    {
        LinkButton lb = (LinkButton)sender;
        DataListItem par = (DataListItem)lb.Parent;
        Session["huaname"] = ((LinkButton)(par.FindControl("LinkButton11"))).Text;//传递商品名字
        Session["price"] = ((Label)(par.FindControl("Label1"))).Text;//传递商品价格
        Session["pic"] = ((ImageButton)(par.FindControl("ImageButton1"))).ToolTip;//
        Response.Redirect("SeeWare.aspx");
    }
    //搜索
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('请输入要搜索的内容！')</script>");
        }
        else
        {
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
            else
            {
                Session["flowername"] = T_name;
                Response.Redirect("Searchpage.aspx");
            }
        }
    }
}