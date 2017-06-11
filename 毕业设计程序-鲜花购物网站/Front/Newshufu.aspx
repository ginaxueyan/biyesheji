<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newshufu.aspx.cs" Inherits="Front_Newshufu" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
  <div style="margin-left:180px;margin-top:10px;">
  <img height="30" src="../images/new_01.jpg" width="230" /></div>

  <div class="news-content" style="width:1024px;height:330px; margin:0px auto;">
    <h3 style="text-align:center;">鲜花护肤功效</h3>
    <p><span class="t1">金盏花</span>具有消炎、抗菌的护理功效，超强的愈合能力令它成为对抗疤痕和去痘印的强大力量。此外，针对日晒所造成的红肿、发炎，金盏花也能加以舒缓和消炎，改善敏感性肤质，促进皮肤的新陈代谢，令肌肤回复健康澄净。</p>
    <p><span class="t1">薰衣草</span>具有强大的修复功能，淡化疤痕，美白肌肤，对于日晒后灼热发红的肌肤具有很好的晒后修复效果。
　　能有效激活老化细胞，增强皮肤弹性和细腻程度，安抚疲劳肌肤，令肌肤清新舒适。宁神安定，放松身心，缓解焦虑情绪，改善失眠。调节荷尔蒙，改善生理期前后不适。</p>
   <p><span class="t1">玫瑰</span>具有抗氧化、保湿、美白的效用，甚至还有丰胸功效。在萃取玫瑰精油的蒸馏过程中，所产生的玫瑰水更被公认为最天然的爽肤水。玫瑰花茶是一种很好的美容养颜茶，玫瑰是治疗肝气的理气良药，就能疏通肝气、调和气血，从而减退色斑、均匀肤色。另外玫瑰理气，气能推动血行，可以行血化淤。</p>
   <p><span class="t1">白百合</span>的原液萃取中含有大量丰富的天然维他命C，能提高肌肤的通透感，缓解色素沉淀，令肌肤白皙柔嫩。近年来，马达加斯加的红百合被证明具有强大的抑制黑色素生成、提亮肤色的作用，成为DIOR花蜜活颜系列的主打成分之一。</p>
  </div>
   <uc2:Bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
