using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.Drawing.Drawing2D;
using System.Text;
using System.IO;


/// <summary>
/// img 的摘要说明
/// </summary>
public class img
{
	public img()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 验证码
    /// </summary>
    public class codeimg
    {
        public codeimg()
        {
            //
            //TODO:在此处添加构造函数逻辑
            //
        }
        /// <summary>
        /// 返回随机数
        /// </summary>
        /// <returns>返回值</returns>
        public static string rndstring()
        {
            string codestring = "1,2,3,4,5,6,7,8,9,0";
            string[] arrstr = codestring.Split(',');
            Random rnd = new Random();
            string STR = "";
            for (int i = 0; i < 4; i++)
            {
                STR += arrstr[rnd.Next(arrstr.Length)].ToString();
            }
            return STR;
        }
        /// <summary>
        /// 绘制验证码图
        /// </summary>
        public static void codepic()
        {
            string rndSTR = rndstring();
            ///创建SESSION
            HttpContext.Current.Session["codema"] = rndSTR;

            int imgwidth = (int)(rndSTR.Length * 13);
            Bitmap image = new Bitmap(imgwidth,22);
            Graphics drawg = Graphics.FromImage(image);
            drawg.Clear(Color.White);

            ///生成随机燥点
            Random pointimg = new Random();
            for(int i=0;i<50;i++)
            {
                int x = pointimg.Next(image.Width);
                int y = pointimg.Next(image.Height);
                drawg.DrawRectangle(new Pen(Color.LightGray,0),x,y,1,1);
            }
            ///添加文字到图形中
            drawg.DrawString(rndSTR, new Font("Arial Black", 12, FontStyle.Italic), new SolidBrush(Color.Red), 0, 0);
            drawg.DrawRectangle(new Pen(Color.Beige, 0), 0, 0, image.Width - 1, image.Height - 1);

            ///输出到浏览器
            System.IO.MemoryStream stream = new System.IO.MemoryStream();
            image.Save(stream, ImageFormat.Jpeg);
            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.ContentType = "image/Jpeg";
            HttpContext.Current.Response.BinaryWrite(stream.ToArray());
            drawg.Dispose();
            image.Dispose();
        }
    }

    /// <summary>
    /// 缩略图
    /// </summary>
    public class smallimg
    {
        public smallimg()
        {
            //
            //TODO:在此处添加构造函数逻辑
            //
        }
        public static void smallimage(string imagename,string imgurl,string saveurl,int imgwidth,int imgheight)
        {
         
            if (imgurl != "")
            {
                //取得图片类型
                string imageType = imgurl.Substring(imgurl.LastIndexOf(".") + 1);
                //取得图片名称
                string imageName = imgurl.Substring(imgurl.LastIndexOf("\\") + 1);
                if (imageType != "jpg" && imageType != "gif" && imageType != "png" && imageType != "bmp")
                {
                    return;
                }
               
                System.Drawing.Image image = System.Drawing.Image.FromFile(imgurl);
                
                System.Drawing.Image.GetThumbnailImageAbort callb = null;

                if (imgheight == 0)
                {
                    //使用固定宽度进行等比缩放
                    
                }
                else
                {
                    //按指定的宽度和高度存储图片
                    System.Drawing.Image newimage = image.GetThumbnailImage(imgwidth, imgheight, callb, new System.IntPtr());
                    
                    newimage.Save(saveurl + imagename);
                    newimage.Dispose();
                }
                image.Dispose();
            }
        }
    }
    
}
