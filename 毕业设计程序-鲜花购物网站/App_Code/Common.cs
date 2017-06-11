using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Common 的摘要说明
/// </summary>
public class Common
{


    #region 获得连接
    //SqlConnection conn = new SqlConnection();
    //SqlCommand comm = new SqlCommand();
    public Common()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //

    }
    //获得连接
    //public SqlConnection GetConn()
    //{
    //    string strconn = ConfigurationManager.ConnectionStrings["connstring"].ToString();
    //    SqlConnection conn = new SqlConnection(strconn);
    //    return conn;
    //}
    //#endregion

    //#region 添加管理员
    //public void insertADMIN(string username, string pwd)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("insert into ADMIN(username,pwd)values(@username,@pwd)", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("pwd", pwd);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable showadmin()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from ADMIN", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable showadmin(string username, string pwd)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from ADMIN where username=@username and pwd=@pwd", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("pwd", pwd);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void updateadmin(string id, string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update ADMIN set username=@username where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    comm.Parameters.AddWithValue("username", username);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void deleteadmin(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from ADMIN where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable showadmin(string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from ADMIN where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void updatemima(string pwd, string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update ADMIN set pwd=@pwd where username=@username", conn);
    //    comm.Parameters.AddWithValue("@pwd", pwd);
    //    comm.Parameters.AddWithValue("username", username);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //#endregion

    //#region 消息对话框
    //public void WebMessageBox(string values)
    //{
    //    HttpContext.Current.Response.Write("<script language=javascript>alert('" + values + "')</script>");
    //}
    //public void WebMessageBox(string values, string PageURL)
    //{
    //    HttpContext.Current.Response.Write("<script>alert('" + values + "');window.location.href='" + PageURL + "'</script>");
    //    HttpContext.Current.Response.End();
    //}
    #endregion

    //#region 新闻管理
    //public DataTable NewsContent(string sid)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from News where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", sid);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //public DataTable shownews()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from News", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void IntoNews(string Newscontent, string title)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("insert into News(title,Newscontent,NewsDate)values(@title,@Newscontent,@NewsDate)", conn);
    //    comm.Parameters.AddWithValue("Newscontent", Newscontent);
    //    comm.Parameters.AddWithValue("title", title);
    //    comm.Parameters.AddWithValue("NewsDate", DateTime.Now);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void DeleteNews(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from News where id=@id", conn);
    //    comm.Parameters.AddWithValue("id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void updatenews(string title, string Newscontent, string sid)
    //{
    //    SqlConnection conn = GetConn();
    //    string strcomm = "update News set title=@title,Newscontent=@Newscontent where id=@sid";
    //    SqlCommand comm = new SqlCommand(strcomm, conn);
    //    comm.Parameters.AddWithValue("@sid", sid);
    //    comm.Parameters.AddWithValue("@title", title);
    //    comm.Parameters.AddWithValue("@Newscontent", Newscontent);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();

    //}
    //#endregion

    //#region 新闻查询
    //public DataTable searchnews(string title, string year1, string month1, string day1, string year2, string month2, string day2)
    //{

    //    conn = GetConn();
    //    DateTime time1 = Convert.ToDateTime(year1 + "-" + month1 + "-" + day1);
    //    DateTime time2 = Convert.ToDateTime(year2 + "-" + month2 + "-" + day2);
    //    string spacing = " where title like '%" + title + "%' and NewsDate between '" + time1 + "' and '" + time2 + "'";
    //    comm = new SqlCommand("select * from News" + spacing, conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable Searchcount(string title, string year1, string month1, string day1, string year2, string month2, string day2)
    //{
    //    DateTime time1 = Convert.ToDateTime(year1 + "-" + month1 + "-" + day1);
    //    DateTime time2 = Convert.ToDateTime(year2 + "-" + month2 + "-" + day2);
    //    string spacing = " where title like '%" + title + "%' and NewsDate between '" + time1 + "' and '" + time2 + "'";
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as countpeople from News" + spacing, conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //public DataTable showtitle(string title)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from News where title like '%" + title + "%'", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable Searchcount(string title)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as countpeople from News where title like '%" + title + "%'", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //public DataTable Searchcount()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as countpeople from News", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //#endregion

    //#region 图片阅读
    //public SqlDataReader getDataReader(string mysql)
    //{
    //    conn = GetConn();
    //    conn.Open();
    //    SqlCommand comm = new SqlCommand(mysql, conn);
    //    SqlDataReader myreader = comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
    //    return myreader;
    //}
    //#endregion

    //#region 图片上传

    //public void deletepic(int index)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update WebXinXi set pic" + index + "=@kong", conn);
    //    comm.Parameters.AddWithValue("kong", "");
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}

    //public void updatepic(int index, string picurl)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update WebXinXi set pic" + index + "=@picurl", conn);
    //    comm.Parameters.AddWithValue("picurl", picurl);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}

    //public DataTable showbigpic()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select pic1,pic2,pic3,pic4 from WebXinXi", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}


    ////删除
    //public void deletejubupic(int index)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update picture set pic" + index + "=@kong", conn);
    //    comm.Parameters.AddWithValue("kong", "");
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    ////上传
    //public void updatejubupic(int index, string picurl)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update picture set pic" + index + "=@picurl", conn);
    //    comm.Parameters.AddWithValue("picurl", picurl);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}

    ////查询全部
    //public DataTable showpicjubu()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from picture", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //   return table;
    //}
    //public DataTable showquanbupicture()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WebXinXi", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //#endregion

    //#region 登陆
    //public DataTable panduandenlu(string username, string pwd)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select username,pwd,case state when 0 then '普通会员' when 1 then '高级会员' when 2 then '黄金会员' end as state from userdata where username=@username and pwd=@pwd", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("pwd", pwd);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}

    //public DataTable Adminpanduandenlu()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from Login ", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}

    //#endregion

    //#region 产品分类
    //public void IntoKind(string kindname)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("insert into Kind(kindname)values(@kindname)", conn);
    //    comm.Parameters.AddWithValue("kindname", kindname);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    ////显示分类
    //public DataTable showkind()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from Kind", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void deletekind(string sid)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from Kind where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", sid);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void updatekind(string sid, string kindname)
    //{
    //    SqlConnection conn = GetConn();
    //    SqlCommand comm = new SqlCommand("update Kind set kindname=@kindname where id=@sid", conn);
    //    comm.Parameters.AddWithValue("@kindname", kindname);
    //    comm.Parameters.AddWithValue("@sid", sid);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //#endregion

    //#region 网站信息
    //public void update_web_data(string web_site, string web_site_name, string site_email, string Co_address, string Co_phone, string web_copyright, string Co_jianjie, string Co_dream, string relation_us, string often_question, string serve_ensure, string payment_say, string mark_rule, string give_say, string login_agreement, string web_site_boot, string monve_content)
    //{
    //    conn = GetConn();
    //    string strsql = @"update WebXinXi set web_site=@web_site,web_site_name=@web_site_name,site_email=@site_email,Co_address=@Co_address,Co_phone=@Co_phone,web_copyright=@web_copyright,Co_jianjie=@Co_jianjie,Co_dream=@Co_dream,relation_us=@relation_us,often_question=@often_question,serve_ensure=@serve_ensure,payment_say=@payment_say,mark_rule=@mark_rule,give_say=@give_say,login_agreement=@login_agreement,web_site_boot=@web_site_boot,monve_content=@monve_content";
    //    comm = new SqlCommand(strsql, conn);
    //    comm.Parameters.AddWithValue("@web_site", web_site);
    //    comm.Parameters.AddWithValue("@web_site_name", web_site_name);
    //    comm.Parameters.AddWithValue("@site_email", site_email);
    //    comm.Parameters.AddWithValue("@Co_address", Co_address);
    //    comm.Parameters.AddWithValue("@Co_phone", Co_phone);
    //    comm.Parameters.AddWithValue("@web_copyright", web_copyright);
    //    comm.Parameters.AddWithValue("@Co_jianjie", Co_jianjie);
    //    comm.Parameters.AddWithValue("@Co_dream", Co_dream);
    //    comm.Parameters.AddWithValue("@relation_us", relation_us);
    //    comm.Parameters.AddWithValue("@often_question", often_question);
    //    comm.Parameters.AddWithValue("@serve_ensure", serve_ensure);
    //    comm.Parameters.AddWithValue("@payment_say", payment_say);
    //    comm.Parameters.AddWithValue("@mark_rule", mark_rule);
    //    comm.Parameters.AddWithValue("@give_say", give_say);
    //    comm.Parameters.AddWithValue("@login_agreement", login_agreement);
    //    comm.Parameters.AddWithValue("@web_site_boot", web_site_boot);
    //    comm.Parameters.AddWithValue("@monve_content", monve_content);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable show_web_data()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WebXinXi", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;


    //}
    //#endregion

    //#region 付款方式
    //public void fukuanfangshi(string fangshi)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("insert into fukuanfangshi(fangshi)values(@fangshi)", conn);
    //    comm.Parameters.AddWithValue("fangshi", fangshi);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void updatefukuan(string id, string fangshi)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update fukuanfangshi set fangshi=@fangshi where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    comm.Parameters.AddWithValue("@fangshi", fangshi);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void deletefukuan(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from fukuanfangshi where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable showfukuan()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from fukuanfangshi", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //public DataTable selectfukuan(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from fukuanfangshi where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //#endregion

    //#region 送货方式
    //public void songhuofangshi(string songhuo_name)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("insert into songhuofangshi(songhuo_name)values(@songhuo_name)", conn);
    //    comm.Parameters.AddWithValue("songhuo_name", songhuo_name);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void updatesonghuo(string id, string songhuo_name)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update songhuofangshi set songhuo_name=@songhuo_name where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    comm.Parameters.AddWithValue("songhuo_name", songhuo_name);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public void deletesonghuo(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from songhuofangshi where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable showsonghuo()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from songhuofangshi", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //public DataTable selectsonghuo(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from songhuofangshi where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //#endregion

    //#region 注册
    //public void zhuce(string username, string truename, string pwd, string email, string address, string postword, string mobile, string QQ, string sex, string zhiye, string CO, string note)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("INSERT INTO userdata(username,truename,pwd,email,address,postword,mobile,QQ,sex,zhiye,CO,note,logindate,state)values(@username,@truename,@pwd,@email,@address,@postword,@mobile,@QQ,@sex,@zhiye,@CO,@note,@logindate,@state)", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("truename", truename);
    //    comm.Parameters.AddWithValue("pwd", pwd);
    //    comm.Parameters.AddWithValue("email", email);
    //    comm.Parameters.AddWithValue("address", address);
    //    comm.Parameters.AddWithValue("postword", postword);
    //    comm.Parameters.AddWithValue("mobile", mobile);
    //    comm.Parameters.AddWithValue("QQ", QQ);
    //    comm.Parameters.AddWithValue("sex", sex);
    //    comm.Parameters.AddWithValue("zhiye", zhiye);
    //    comm.Parameters.AddWithValue("CO", CO);
    //    comm.Parameters.AddWithValue("note", note);
    //    comm.Parameters.AddWithValue("logindate", DateTime.Now);
    //    comm.Parameters.AddWithValue("state", "0");
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();

    //}
    //#endregion

    //#region 用户资料
    //public void showuserdata(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from userdata where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id",id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable showuser(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from userdata where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable showuser()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from userdata", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable userzongshu()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as sum from userdata", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable userzongshu(string name)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as sum from userdata where username like '%"+name+"%'", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable user(string name)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from userdata where username like '%" + name + "%'", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //#endregion

    //#region 检测账号
    //public DataTable checklogin(string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from userdata where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //#endregion

    //#region 获取用户信息 绑定
    //public DataTable SHOWUSER(string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from userdata where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void updateuserdata(string truename, string pwd, string email, string address, string postword, string mobile, string QQ, string sex, string zhiye, string CO, string note, string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update userdata set truename=@truename,pwd=@pwd,email=@email,address=@address,postword=@postword,mobile=@mobile,QQ=@QQ,sex=@sex,zhiye=@zhiye,CO=@CO,note=@note where username=@username ", conn);
    //    comm.Parameters.AddWithValue("truename", truename);
    //    comm.Parameters.AddWithValue("pwd", pwd);
    //    comm.Parameters.AddWithValue("email", email);
    //    comm.Parameters.AddWithValue("address", address);
    //    comm.Parameters.AddWithValue("postword", postword);
    //    comm.Parameters.AddWithValue("mobile", mobile);
    //    comm.Parameters.AddWithValue("QQ", QQ);
    //    comm.Parameters.AddWithValue("sex", sex);
    //    comm.Parameters.AddWithValue("zhiye", zhiye);
    //    comm.Parameters.AddWithValue("CO", CO);
    //    comm.Parameters.AddWithValue("note", note);
    //    comm.Parameters.AddWithValue("username", username);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //#endregion

    //#region 添加产品
    //public void insertshop(string warename, string categoryid, string martpice, string putonghuiyuanjia, string gaojikou, string huangjinkou, string jifen, string waredescribe, string paihang, string hotware, string warepic)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("insert into WARE(warename,categoryid,martpice,putonghuiyuanjia,gaojikou,huangjinkou,jifen,waredescribe,paihang,hotware,warepic,createdate)values(@warename,@categoryid,@martpice,@putonghuiyuanjia,@gaojikou,@huangjinkou,@jifen,@waredescribe,@paihang,@hotware,@warepic,@createdate)", conn);
    //    comm.Parameters.AddWithValue("warename", warename);
    //    comm.Parameters.AddWithValue("categoryid", categoryid);
    //    comm.Parameters.AddWithValue("martpice", martpice);
    //    comm.Parameters.AddWithValue("gaojikou", gaojikou);
    //    comm.Parameters.AddWithValue("putonghuiyuanjia", putonghuiyuanjia);
    //    comm.Parameters.AddWithValue("huangjinkou", huangjinkou);
    //    comm.Parameters.AddWithValue("jifen", jifen);
    //    comm.Parameters.AddWithValue("waredescribe", waredescribe);
    //    comm.Parameters.AddWithValue("paihang", paihang);
    //    comm.Parameters.AddWithValue("hotware", hotware);
    //    comm.Parameters.AddWithValue("warepic", warepic);
    //    comm.Parameters.AddWithValue("createdate", DateTime.Now);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();

    //}
    //#endregion

    //#region 更新产品
    //public void updateshop(string warename, string categoryid, string martpice, string putonghuiyuanjia, string gaojikou, string huangjinkou, string jifen, string waredescribe, string paihang, string hotware, string warepic, string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update WARE set warename=@warename,categoryid=@categoryid,martpice=@martpice,putonghuiyuanjia=@putonghuiyuanjia,gaojikou=@gaojikou,huangjinkou=@huangjinkou,jifen=@jifen,waredescribe=@waredescribe,paihang=@paihang,hotware=@hotware,warepic=@warepic,createdate=@createdate where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    comm.Parameters.AddWithValue("warename", warename);
    //    comm.Parameters.AddWithValue("categoryid", categoryid);
    //    comm.Parameters.AddWithValue("martpice", martpice);
    //    comm.Parameters.AddWithValue("gaojikou", gaojikou);
    //    comm.Parameters.AddWithValue("putonghuiyuanjia", putonghuiyuanjia);
    //    comm.Parameters.AddWithValue("huangjinkou", huangjinkou);
    //    comm.Parameters.AddWithValue("jifen", jifen);
    //    comm.Parameters.AddWithValue("waredescribe", waredescribe);
    //    comm.Parameters.AddWithValue("paihang", paihang);
    //    comm.Parameters.AddWithValue("hotware", hotware);
    //    comm.Parameters.AddWithValue("warepic", warepic);
    //    comm.Parameters.AddWithValue("createdate", DateTime.Now);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();

    //}
    //#endregion

    //#region 绑定产品信息
    //public DataTable bindwaredata(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where id=@id", conn);
    //    comm.Parameters.AddWithValue("id", id);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable bindwaredata()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //#endregion

    //#region 绑定产品分类
    //public DataTable Bindfenlei()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from Kind", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //#endregion

    //#region 设置为主打商品
    //public void setzhudaware(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update WARE set zhudaware=1,createdate=@createdate where id in(" + id + ")", conn);
    //    comm.Parameters.AddWithValue("createdate", DateTime.Now);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //#endregion

    //#region 商品查询
    //public DataTable kindshow(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where categoryid=@id", conn);
    //    comm.Parameters.AddWithValue("@id",id);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable quanbuware()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable selectware(string key, string price1, string price2, string jifen1, string jifen2)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where warename like '%" + key + "%' and putonghuiyuanjia>" + price1 + " and putonghuiyuanjia<" + price2 + " and jifen>" + jifen1 + " and jifen<" + jifen2 + "", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void deleteware(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from WARE where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable selectcountware(string key, string price1, string price2, string jifen1, string jifen2)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as counts from WARE where warename like '%" + key + "%' and putonghuiyuanjia>" + price1 + " and putonghuiyuanjia<" + price2 + " and jifen>" + jifen1 + " and jifen<" + jifen2 + "", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable selectcountware()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as counts from WARE", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable selectwarequanbu(string key, string fenlei)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where warename like '%" + key + "%' and categoryid=" + fenlei + "", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    ///// <summary>
    ///// 用户头部的商品搜索
    ///// </summary>
    ///// <param name="warename"></param>
    ///// <param name="wareid"></param>
    ///// <param name="price"></param>
    ///// <param name="username"></param>
    ///// <param name="jifen"></param>
    ///// <param name="putonghuiyuanjia"></param>

    //public DataTable selectshangpinquanbu(string key, string keyword)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where categoryid= " + key + " and warename like '%" + keyword + "%'", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //#endregion

    //#region 放入购物车
    //public void intobus(string warename, string wareid, string price, string username, string jifen, string putonghuiyuanjia)
    //{

    //    conn = GetConn();
    //    comm = new SqlCommand("insert into shopping(waredate,wareid,warename,username,price,shuliang,jifen,putonghuiyuanjia)values(@waredate,@wareid,@warename,@username,@price,1,@jifen,@putonghuiyuanjia)", conn);
    //    comm.Parameters.AddWithValue("warename", warename);
    //    comm.Parameters.AddWithValue("wareid", wareid);
    //    comm.Parameters.AddWithValue("price", price);
    //    comm.Parameters.AddWithValue("waredate", DateTime.Now);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("jifen", jifen);
    //    comm.Parameters.AddWithValue("putonghuiyuanjia", putonghuiyuanjia);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}

    //public DataTable selectgouwu(string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from shopping where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}
    //#endregion

    //#region 购物车操作
    //public void deleteshopping(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from shopping where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable selectshopping()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from shopping", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable jisuanjiage(string username)      //金钱
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select sum(price * shuliang) as mount from shopping where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}

    //public DataTable jisuanjifen(string username)      //分数
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select sum(jifen * shuliang) as jifen from shopping where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void qingkong()      //清空
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from shopping", conn);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable chakanshopping(string username, string wareid)      //判断存在
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from shopping where username=@username and wareid=@wareid", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("wareid", wareid);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void updateshopping(string id, string shuliang)        //更新商品
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update shopping set shuliang=@shuliang where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    comm.Parameters.AddWithValue("@shuliang", shuliang);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}

    ///// <summary>
    ///// 检查是否是数字
    ///// true表示是数字，false表示否
    ///// </summary>
    ///// <param name="str"></param>
    ///// <returns></returns>

    //public bool RteNum(string str)
    //{
    //    if (str == "" || str == null)
    //    {
    //        return false;
    //    }
    //    else
    //    {
    //        System.Text.RegularExpressions.Regex reg1 = new System.Text.RegularExpressions.Regex(@"^[-]?\d+[.]?\d*$");
    //        return reg1.IsMatch(str);
    //    }
    //}
    //#endregion

    //#region 商品展示
    //public DataTable showwareall()              //热销产品
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where hotware=1 order by createdate desc", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}

    //public DataTable zhudaProduct()              //主打产品
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from WARE where zhudaware=1 order by createdate desc", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}

    //public DataTable NewWarm()              //最新产品
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select top 20 * from WARE  order by createdate desc", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}

    //public DataTable Hotware()              //销售排行
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select top 5 * from WARE where paihang > 0 order by paihang asc, createdate desc", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;

    //}

    //#endregion

    //#region 收银台
    //public void intowaredata(string username, string zongjia, string songhuofangshiID, string fukuanfangshiID, string shouhuoren, string shouhuorenPhone, string shouhuorenEmail, string shouhuorenyoubian, string shouhuorendizhi, string shouhuorenNote)
    //{
    //    string warebianhao = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
    //    conn = GetConn();
    //    DataTable table = selectshopping();
    //    comm = new SqlCommand("insert into dingdan(warebianhao,username,zongjia,songhuofangshiID,fukuanfangshiID,shouhuoren,shouhuorenPhone,shouhuorenEmail,shouhuorenyoubian,shouhuorendizhi,shouhuorenNote,date)values(@warebianhao,@username,@zongjia,@songhuofangshiID,@fukuanfangshiID,@shouhuoren,@shouhuorenPhone,@shouhuorenEmail,@shouhuorenyoubian,@shouhuorendizhi,@shouhuorenNote,@date)", conn);
    //    comm.Parameters.AddWithValue("songhuofangshiID", songhuofangshiID);
    //    comm.Parameters.AddWithValue("fukuanfangshiID", fukuanfangshiID);
    //    comm.Parameters.AddWithValue("shouhuoren", shouhuoren);
    //    comm.Parameters.AddWithValue("shouhuorenPhone", shouhuorenPhone);
    //    comm.Parameters.AddWithValue("shouhuorenEmail", shouhuorenEmail);
    //    comm.Parameters.AddWithValue("shouhuorenyoubian", shouhuorenyoubian);
    //    comm.Parameters.AddWithValue("shouhuorendizhi", shouhuorendizhi);
    //    comm.Parameters.AddWithValue("shouhuorenNote", shouhuorenNote);
    //    comm.Parameters.AddWithValue("zongjia", zongjia);
    //    comm.Parameters.AddWithValue("username", username);
    //    comm.Parameters.AddWithValue("warebianhao", warebianhao);
    //    comm.Parameters.AddWithValue("date", DateTime.Now);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();

    //}
    //#endregion

    //#region 账单 大结局
    //public DataTable diandandata(string username)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from dingdan where username=@username", conn);
    //    comm.Parameters.AddWithValue("username", username);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable selectdingdan()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select d.*,f.fangshi,s.songhuo_name from dingdan d ,fukuanfangshi f,songhuofangshi s where d.fukuanfangshiID=f.id and d.songhuofangshiID=s.id", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void deletedingdan(string id)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("delete from dingdan where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id", id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //public DataTable zhangdansum()
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select count(*) as zongshu from dingdan", conn);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable SELECTDINGDAN(string sid)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("select * from dingdan where id=@id", conn);
    //    comm.Parameters.AddWithValue("@id",sid);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable zhangdanjingquechanxun(string warestate)
    //{
    //    conn = GetConn();

    //    comm = new SqlCommand("select * from dingdan where warestate=@warestate", conn);
    //    comm.Parameters.AddWithValue("warestate", warestate);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public DataTable zhangdanzongshu(string warestate)
    //{
    //    conn = GetConn();

    //    comm = new SqlCommand("select count(*) as summ from dingdan where warestate=@warestate", conn);
    //    comm.Parameters.AddWithValue("warestate", warestate);
    //    SqlDataAdapter da = new SqlDataAdapter(comm);
    //    DataTable table = new DataTable();
    //    da.Fill(table);
    //    return table;
    //}
    //public void updatedingdan(string id, string warestate)
    //{
    //    conn = GetConn();
    //    comm = new SqlCommand("update dingdan set warestate=@warestate where id=@id", conn);
    //    comm.Parameters.AddWithValue("warestate", warestate);
    //    comm.Parameters.AddWithValue("@id",id);
    //    conn.Open();
    //    comm.ExecuteNonQuery();
    //    conn.Close();
    //}
    //#endregion

    public void WebMessageBox(string p, string p_2)
    {
        throw new NotImplementedException();
    }
}
    ;