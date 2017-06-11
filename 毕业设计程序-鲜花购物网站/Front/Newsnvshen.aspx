<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newsnvshen.aspx.cs" Inherits="Front_Newsnvshen" %>
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
  <div style="margin-left:180px;margin-top:10px;"><img height="30" src="../images/new_01.jpg" width="230" /></div>

  <div class="news-content" style="width:1024px;height:auto;margin:0px auto;">
    <h3 style="text-align:center;">520送什么鲜花给女神？</h3>
    <p>520陌生人，我也为你祝福
愿你有一个灿烂的前程
愿你有情人终成眷属
愿你在尘世获得幸福
                                          ——海子<br />
世界上最遥远的距离，
我站在你面前你却不知道我爱你。<br />

 

                  从明天起做一个幸福的人


←
致暗恋
告别单身狗，女神我来了。
<br />
致爱情
→
520，亲爱的！感谢你的陪伴和包容。


←
致母亲
爱要大声说出来，珍惜现在和你在一起的时间，爱你，妈妈！
致自己
→
唯一重要的是自己
因为每个人最终都是孤单的，对自己好一点。

 

<br />这个520还在想送什么鲜花给你的女神吗？美神的化身，融入爱神的血液，集爱与美一生，让你的女神爱不释手，难以抗拒。

鲜花/希望的旋律
    雪山白玫瑰15枝 ，白色绣球1枝，绿色雏菊3枝，适量绿叶
    绿色高纤维纸，银灰色厚棉纸，拉菲草花结</p>
    <div style="width:380px;height:420px;margin:0px auto;">
       <img src="../images/newsnvshen1.jpg" />
      
    </div>
     <p style="text-align:center;">清新脱俗，不染凡尘</p>
    <p>  花语：树木开花等待结果，麦田抽穗等待收获，希望的旋律无处不在，为用心的人们而歌。</p>
    <p>鲜花/心有灵犀
    精品粉玫瑰共29枝(粉佳人粉玫瑰17枝+水粉色苏醒玫瑰12枝)
    深浅两种粉色短平板，白色螺纹缎带</p>
     <div style="width:380px;height:420px;margin:0px auto;"><img src="../images/newsnvshen2.jpg" /></div>
     <p style="text-align:center;">粉若佳人，不可方物</p><p>花语：记不清有多少次你我不约而同说出一样的话，有一种默契叫做心有灵犀。</p>
  <p>鲜花/暖暖
    高档礼盒装鲜花:戴安娜粉玫瑰19枝，勿忘我适量
    皮纸和深咖啡色条纹纸，银色缎带花结，魔力铁山灰包装盒</p>
      <div style="width:380px;height:420px;margin:0px auto;"><img src="../images/newsnvshen3.jpg" /></div>
      <p style="text-align:center;">优雅精致，落落大方</p><p> 花语：爱一个人希望他过更好，打从心里暖暖的，你比自己更重要。</p>
  </div>
  
   <uc2:Bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
