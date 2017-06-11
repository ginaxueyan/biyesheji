using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class shopnews : System.Web.UI.Page
{
    protected void bind()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from Goods", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Goods");
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            bind();
    }
    //添加商品
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlCommand sr = new SqlCommand("select * from Goods", conn);
        SqlDataAdapter da = new SqlDataAdapter(sr);
        DataSet ds = new DataSet();
        da.Fill(ds, "Goods");
        DataRow newRow = ds.Tables["Goods"].NewRow();
        newRow["编号"] = TextBox1.Text;  //该行另外一列的值
        newRow["花名"] = TextBox2.Text;  //该行的一列的值
        newRow["材料"] = TextBox3.Text;
        newRow["价格"] = TextBox4.Text;
       // newRow["用途"] = TextBox5.Text;
        newRow["花语"] = TextBox6.Text;      
        newRow["图片"]=imgGoodsPhoto.ImageUrl;
        ds.Tables["Goods"].Rows.Add(newRow);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(ds, "Goods");
        bind();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        //TextBox5.Text = "";
        TextBox6.Text = "";
    }
    //上传图片
    protected void btnShow_Click(object sender, EventArgs e)
    {
        //显示商品图片
        string P_str_name = this.FileUpload1.FileName;//获取上载文件的名称
        bool P_bool_fileOK = false;//上传文件的格式不可用
        if (FileUpload1.HasFile) {
            //定义文件类型变量
            String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            String[] allowedExtensions = { ".gif",".png",".jpeg",".jpg",".bmp"};//规定上传图片的格式
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])//上传文件的格式与数组中的某个相匹配
                {
                    P_bool_fileOK = true;//上传文件的格式可用
                }
            }
        }
        if (P_bool_fileOK)//如果上传文件已有可用格式
        {
            this.FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + P_str_name);//将文件保存在相应的路径下
            this.imgGoodsPhoto.ImageUrl = "~/images/" + P_str_name;//将图片显示在Image控件上
        }else{//如果上传文件没选择格式
            //弹出对话框，提示选择图片的格式
            Response.Write("<script>alert('请选择.gif,.png,.jpeg,.jpg,.bmp格式的图片文件！')</script>");
         
        }
    }
}