using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net;
using System.Text;
using System.Web.Management;
//５１ａsｐｘ
/// <summary>
/// server 的摘要说明
/// </summary>
public class server
{
	public server()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 获取服务器IP地址
    /// </summary>
    /// <returns></returns>
    public static string ip()
    {
        string serverip = HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"].ToString();
        return serverip;
    }
    /// <summary>
    /// 获取服务器域名地址
    /// </summary>
    /// <returns>返回域名地址</returns>
    public static string serverurl()
    {
        string serverhot = "";
        if ("http://" + HttpContext.Current.Request.ServerVariables["HTTP_HOST"] == "http://movie.seedsun.com" || "http://" + HttpContext.Current.Request.ServerVariables["HTTP_HOST"] == "http://movie.seedsun.cn")
        {
            serverhot = "http://" + HttpContext.Current.Request.ServerVariables["HTTP_HOST"];
        }
        else
        {
            serverhot = "http://" + HttpContext.Current.Request.ServerVariables["HTTP_HOST"] + "/movie";
        }
        return serverhot;
    }
    /// <summary>
    /// 获取CPU信息
    /// </summary>
    /// <returns></returns>
    //public static string cpuinfo()
    //{
    //    string a = "";
    //    ManagementClass mcobject = new ManagementClass("Win32_Processor");
    //    ManagementObjectCollection moc = mcobject.GetInstances();
    //    foreach (ManagementObject mo in moc)
    //    {
    //        a += mo.Properties["ProcessorId"].Value.ToString() + "\n";
    //    }
    //    return a;
    //}
    /// <summary>
    /// 截取字符
    /// </summary>
    /// <param name="txt">文字</param>
    /// <param name="lenght">长度</param>
    /// <returns>返回字符</returns>
    public static string text(string txt, int lenght)
    {
        string outputtext = "";
        if (txt.Length > lenght)
        {
            int tempnum = 0;
            byte[] byitem = ASCIIEncoding.ASCII.GetBytes(txt);
            for (int i = 0; i < txt.Length; i++)
            {
                if ((int)byitem[i] == 63 || (int)byitem[i] == 32) tempnum += 2; else tempnum += 1;
                outputtext += txt.Substring(i, 1);
                if (tempnum == lenght) break;
            }

        }
        else
        {
            outputtext = txt;
        }
        return outputtext;
    }
}
