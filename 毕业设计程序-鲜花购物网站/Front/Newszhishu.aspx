<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newshuayu.aspx.cs" Inherits="Front_Newshuayu" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小美鲜花网上商城</title>
    <style type="text/css">
         body
     {
         background: #FFFFFF url(../images/img01.gif) repeat;

         }
        a
        {
            text-decoration:none;
            }
  .header
  {
       width:100%;
       height:56px;
       margin-bottom:26px;
      }
  .header_mid
  { 
      width:980px;
      height:56px;
      line-height:56px;
      margin:0px auto;
      margin-bottom:8px;
      border-bottom:2px solid #ff66cc;
      }
      .header_left
      {
           width:676px;
           height:56px;
           float:left;
        }
      .header_left a.A
      {
          text-decoration:none;
          font-weight:900;
          color:#262626;
          text-align:center;
          font-size:16px;
          display:inline-block;
          width:106px;
          height:56px;
          line-height:56px;
          }
      .header_left a:hover
      {
          background-color: #E91370;
          color:#fff;
          }
     .header_right
     {
         height:56px;
         float:right;
        
          
         }
   .TextBox1
   {
       width:60px;
       height:56px;
       line-height:56px;
       text-indent:2em;
       
       }
      .news-content p
      {
          text-indent:2em;
          line-height:24px;
          } 
      .t1
      {
         color:#FF66CC;
         font-size:20px;
         font-weight:bold;
          
      }
      strong
      {
          font-size:24px;
          color:#FF66CC;
          }
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="header">
<div class="header_mid">
  <div class="header_left">
    <a href="Default.aspx" class="A" onfocus="this.blur()">网站首页</a>
    <a href="Myware.aspx" class="A" onfocus="this.blur()">查看购物</a>
    <a href="question.aspx" class="A" onfocus="this.blur()">常见问题</a>
    <a href="linian.aspx" class="A" onfocus="this.blur()">公司理念</a>
    <a href="service.aspx" class="A" onfocus="this.blur()">服务保证</a>
    <a href="Lianxiwomen.aspx" class="A" onfocus="this.blur()">联系我们</a>
  </div>
  <div class="header_right">
      <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
      <asp:Button ID="Button1"
          runat="server" Text="搜索" Height="32px" Width="66px" Font-Bold="True" 
          Font-Size="12pt" />
  </div>
  </div>
  </div>

  <div class="news-title" style="margin-left:180px;">
    当前位置：<a href="Default.aspx"><span style="color: #000000">小美鲜花网</span></a> &gt;&gt;
              <a href="Default.aspx"><span style="color: #000000">最新公告</span></a> &gt;&gt; 详细内容
  </div>
  <div style="margin-left:180px;margin-top:10px;"> <img height="30" src="../images/new_01.jpg" width="230" /></div>
 
    <div style="width:310px;height:auto;margin:0px 150px;float:left;">
      <p style="text-indent:21pt;">1 朵 情有独钟 你是我的唯一</p>
      <p style="text-indent:21pt;">2 朵 心目中只有我倆</p>
      <p style="text-indent:21pt;">3 朵 我爱你 </p>
      <p style="text-indent:21pt;">4 朵 誓言、承诺 山盟海誓</p>
      <p style="text-indent:21pt;">5 朵 无怨无悔</p>
      <p style="text-indent:21pt;">6 朵 愿你一切顺利 </p>
      <p style="text-indent:21pt;">7 朵 喜相逢&nbsp; </p>
      <p style="text-indent:21pt;">8 朵 深表歉意　盼您原谅 </p>
      <p style="text-indent:21pt;">9 朵 终生相爱　无怨无悔 </p>
      <p style="text-indent:21pt;">10 朵 完美的爱情 十全十美</p>
      <p style="text-indent:21pt;">11 朵 一心一意 </p>
      <p style="text-indent:21pt;">12 朵 圆满组合　心心相印 </p>
      <p style="text-indent:21pt;">13 朵 暗恋 </p>
      <p style="text-indent:21pt;">15 朵 对你感到抱歉 </p>
      <p style="text-indent:21pt;">16 朵 爱的最高点 </p>
      <p style="text-indent:21pt;">17 朵 好聚好散 </p>
      <p style="text-indent:21pt;">18 朵 真诚的心</p>
      <p style="text-indent:21pt;">19 朵 期待陪伴</p>
      <p style="text-indent:21pt;">20 朵 此情不渝　永远爱你</p>
      <p style="text-indent:21pt;">21 朵 你是我的最爱</p>
      <p style="text-indent:21pt;">22 朵 双双对对 你浓我浓 两情相悦&nbsp; </p>
      <p style="text-indent:21pt;">24 朵 思念</p>
      <p style="text-indent:21pt;">25 朵 祝你好运</p>
      <p style="text-indent:21pt;">29 朵 不须言语的爱 </p>
      <p style="text-indent:21pt;">30 朵 爱到永久 </p>
      <p style="text-indent:21pt;">33 朵 深情呼喚　我爱你三生三世 </p>
      <p style="text-indent:21pt;">36 朵 浪漫心情　我心属于你 </p>
      <p style="text-indent:21pt;">44 朵 亘古不变的誓言 </p>
      <p style="text-indent:21pt;">50 朵 无怨无悔 </p>
      <p style="text-indent:21pt;">55 朵 无悔的爱 </p>
      <p style="text-indent:21pt;">56 朵 吾爱</p>
      <p style="text-indent:21pt;">60 朵 爱情永固</p>
      <p style="text-indent:21pt;">66 朵 心情顺利 真爱不变 </p>
      <p style="text-indent:21pt;">77 朵 相逢自是有缘 </p>
      <p style="text-indent:21pt;">88 朵 用心弥补一切的错 </p>
      <p style="text-indent:21pt;">99 朵 长相厢守、坚定 </p>
      <p style="text-indent:21pt;">100朵 百分之百的爱 百年好合 </p>
      <p style="text-indent:21pt;">101朵 您是我的唯一 </p>
      <p style="text-indent:21pt;">108朵 嫁給我吧 求婚 </p>
      <p style="text-indent:21pt;">123朵 爱情自由 </p>
      <p style="text-indent:21pt;">144朵 爱你日日月月生生世世 </p>
      <p style="text-indent:21pt;">365朵 天天想你　天天爱你 </p>
      <p style="text-indent:21pt;">999朵 天长地久　爱无止休 </p>
      <p style="text-indent:21pt;">1001朵 忠诚的爱 直到永远</p> 
    </div>
   <div style="width:480px;height:520px;float:left;"><img src="../images/newszhishu.jpg" style="width:480px;height:520px;"/></div>
  
  
    </form>
</body>
</html>
