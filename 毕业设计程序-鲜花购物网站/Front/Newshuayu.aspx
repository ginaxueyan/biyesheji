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
  <div style="margin-left:180px;margin-top:10px;">
  <img height="30" src="../images/new_01.jpg" width="230" /></div>

  <div class="news-content" style="width:1024px;height:auto; margin:0px auto;">
    <p>花儿虽好，花语难记，花的种类繁多，花语各种各样。众多的花语，成为了许多人送花、种花时的一大难题。今天小编就给大家整理了40种常见花的花语，从现在开始不再为花语而烦恼，让我们一起来看看吧！</p>

    <div>
    <div style="width:420px; height:280px;margin:0px auto;">
      <img src="../images/newshuayu1.jpg" /></div>
      <p><strong>康乃馨花语</strong>：谢谢你的爱、真情、母亲我爱你、温馨的祝福、热爱着你、不求代价的母爱、亲情思念、伟大，神圣，慈祥，温馨的母亲、思念。
　　康乃馨是优异的切花品种，花色娇艳，有芳香，花期长，适用于各种插花需求，常与唐菖蒲、文竹、天门冬、蕨类组成优美的花束。花朵还可提香精。这种体态玲珑、斑谰雅洁、端庄大方、芳香清幽的鲜花，随着母亲节的兴起，正日益风靡世界，成了全球销量最大的花卉。母亲营造了温馨，祝母亲健康平安。</p>  
    </div>

     <div>
     <div style="width:420px;height:280px;margin:0px auto;">
      <img src="../images/newshuayu2.jpg" /></div>
      <p><strong>玫瑰花语</strong>：爱情、爱与美、容光焕发在古希腊神话中，玫瑰集爱与美于一身，既是美神的化身，又溶进了爱神的血液。可以说，在世界范围内，玫瑰是用来表达爱情的通用语言。每到情人节，玫瑰更是身价倍增，是恋人、情侣之间的宠物。</p>
      
    </div>

     <div>
     <div style="width:420px;height:280px;margin:0px auto;">
      <img src="../images/newshuayu3.jpg" /></div>
      <p><strong>薰衣草花语</strong>：等待爱情、安静、坚贞、浪漫的爱
　　薰衣草就是“香”的代表，有“花之精灵”之称。薰衣草的花语是等待爱情，薰衣草能之所以能受到时尚族群的青睐，是因为薰衣草还有许多浪漫美好的寓意。英国人一直将薰衣草视为纯洁丶清新丶感恩丶和平的象徵，薰衣草的内在含义很深，隐藏着一种正确的生命态度。以前，情人之间流行着将薰衣草赠送给对方来表达爱意。有些地区的习俗是用薰衣草来薰香新娘礼服。据说放一小袋干薰衣草在身上，可以让你找到梦中情人。</p>
      
    </div>

     <div>
     <div style="width:420px;height:280px;margin:0px auto;">
      <img src="../images/newshuayu4.jpg" /></div>
      <p><strong>百合花语</strong>：顺利、心想事成、祝福、高贵
　　百合花种类繁多，花色艳丽丰富；花形典雅大方，姿态娇艳因品种而异；花朵皎洁无疵、晶莹雅致、清香宜人；百合独特安静，象征着女性的一些特性诸如独立自强。在中国百合花具有象征百年好合、家庭美满、伟大的爱之含意，有深深祝福的意义。受到百合花的祝福的人具有清纯天真的性格，集众人宠爱于一身，不过光凭这一点并不能平静度过一生，必须具备自制力，抵抗外界的诱惑，才能保持不被污染的纯真。</p>
      
    </div>
  </div>
   <uc2:Bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
