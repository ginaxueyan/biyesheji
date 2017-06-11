<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newsbaoxian.aspx.cs" Inherits="Front_Newsbaoxian" %>
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
      h3
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
  <div style="margin:0px auto;">
    <h3>水切法</h3>
    <p>要想延长花卉的保鲜期，可采用简单的水切法。当植物切口接触空气的瞬间，植物的导管就会跑进空气，使流通水分的导管产生一个栓子，所以，剪枝时可将花枝放入水中，在切口的稍上方斜剪，使断面增大，以提高吸水效果。
    此法适用于剑兰、红掌、文心兰、桔梗、太阳花。</p>
    <div style="margin:0px auto;width:600px;height:426px;"><img src="../images/news1.jpg" /> </div>  
   </div>

   <div style="margin:0px auto;">
    <h3>水折法</h3>
    <p> 与水中剪切法相同，在水中将茎折断。
    适用于绣球花、菊花、龙胆花、珍珠花等。</p>
    <div style="margin:0px auto;width:550px;height:365px;"><img src="../images/news2.jpg" /> </div>  
   </div>


    <div style="margin:0px auto;">
    <h3>逆水法</h3>
    <p>  花枝向下浸入水中，在水中剪切，利用重力将水强行灌入输入管道，并让它从叶面气孔吸水。
    如玫瑰、桔梗、太阳花可适用于此法。</p>
    <div style="margin:0px auto;width:550px;height:366px;"><img src="../images/news3.jpg" /> </div>  
   </div>


   <div style="margin:0px auto;">
    <h3>敲碎法 </h3>
    <p> 用剪刀柄敲扁茎的根部，使吸水面积增大。适用于绣球花、菊花、蛇辨菊、剑兰、勿忘我。</p>
    <div style="margin:0px auto;width:540px;height:381px;"><img src="../images/news4.jpg" /> </div>  
   </div>


    <div style="margin:0px auto;">
    <h3>多次剪切法  </h3>
    <p>花枝插入容器2-3天后，其枝茎切口处会附有水中杂质或沉淀物，从而堵塞花枝组织的毛细管，阻碍花枝吸收营养，因此最好能每天剪切掉2～3cm的枝条，可延长花枝保鲜时间。
    适合所有花朵。</p>
    <div style="margin:0px auto;width:550px;height:365px;"><img src="../images/news5.jpg" /> </div>  
   </div>


   <div style="margin:0px auto;">
    <h3>火炙法</h3>
    <p>将花枝下部放于火上，炙2-3分钟，到枝端为棕黄色，然后浸入水中。火炙法可防止细菌寄生，促进粘液分泌和组织生长愈合，对水分的吸收并无影响，花朵会因此更茂盛。
    此法适用于菊花、玫瑰、红掌等。</p>
    <div style="margin:0px auto;width:540px;height:381px;"><img src="../images/news6.jpg" /> </div>  
   </div>

   <div style="margin:0px auto;">
    <h3>水烫法</h3>
    <p>花枝用报纸裹好浸入热水中，2-3分钟即可。浸入时注意花枝要斜放，以免热气熏蒸花叶。此法可使切口杀菌，促进枝茎吸收水分。
    此法适用于太阳花、波斯菊、丁香。</p>
    <div style="margin:0px auto;width:500px;height:375px;"><img src="../images/news7.jpg" /> </div>  
   </div>

   <div style="margin:0px auto;">
    <h3>化学保鲜法 </h3>
    <p>水中微生物的存在，是影响花材保鲜的一大问题。尤其是在气温较高的情况下，微生物的生长十分活跃，花梗受到其侵袭，基部腐烂，导管阻塞，缩短了花期。此时采用化学药物处理能杀菌消毒，刺激植物的水分和养料的正常输送，以达到延长花期的目的。　　
阿斯匹林： 阿斯匹林在水中分解成水杨酸，具有杀灭细菌，限制微生物繁殖的作用。植物的水分是通过叶面的气孔散发出去，水分蒸发量受叶面气孔闭启的调节控制.气孔上的保卫细胞到各种化学物质十分敏感，当摄入适量的阿斯匹林后，保卫细胞就会闭合，降低水分蒸发量，从而延缓鲜花的代谢速度。阿斯匹林是一种广谱的切花保鲜药物，各种花卉基本上都适用。使用量一般为1/3000。　　
食盐：在切口处涂上食盐，再放回水中。　　
薄荷油：将切口捣碎，擦上薄荷油，再放入水中。　　
醋酸：玫瑰花等枝茎较硬者，除用木锤击裂其切口之处外，宜浸入醋酸液中约3～4秒钟，再插入容器中。　　
蜂蜜和维生素：每日换水时可在水中加入2%糖水中，可延长开花期。　　
水扬酸：菊花可用水落石出杨酸4克，投入4千克水中作营养液，以延长花期。</p>
    <div style="margin:0px auto;width:540px;height:381px;"><img src="../images/news8.jpg" /> </div>  
   </div>

   <div style="margin:0px auto;">
    <h3>枯萎花材复活法 </h3>
    <p> 对已经枯萎得不能吸收水分的花材，可将其倒过来在茎部浇水，用莲蓬头淋水效果更佳。然后用湿报纸将整个花枝全部包起来，放置数小时，再簇入深水中数小时，
    如玫瑰、百合花、桔梗、太阳花。</p>
    <div style="margin:0px auto;width:540px;height:381px;"><img src="../images/news9.jpg" /> </div>  
   </div>
  </div>
   <uc2:Bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
