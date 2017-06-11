<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newskapian.aspx.cs" Inherits="Front_Newskapian" %>
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
  <%--主要内容--%>
  <div class="news-content" style="width:1024px;height:auto;margin:0px auto;">
    <p>女孩子没有不喜欢鲜花的，所以送花就流行起来了，可以送花的日子也多了起了。情人节、女生节、七夕节、圣诞节、恋爱纪念日、女朋友生日等等重要的日子，都要送女朋友鲜花。</p>
    <p>可是，每次送花都要留言的，而且每次送花的留言既要有心意还要有新意。那么，送女朋友鲜花，送花卡片写什么好？送花留言写什么好？</p>
    <div style="width:640px;height:459px;margin:0px auto;"><img src="../images/newskapian1.jpg" /></div>
    <h4>时尚最时尚</h4>
    <div style="width:640px;height:360px;margin:0px auto;"><img src="../images/newskapian2.jpg" /></div>
     <h4>机智幽默</h4>
    <div style="width:640px;height:480px;margin:0px auto;"><img src="../images/newskapian3.jpg" /></div>
    <p>对你的思念并不比上海的雾霾少！</p>
     <h4>时尚最时尚</h4>
    <div style="width:640px;height:426px;margin:0px auto;"><img src="../images/newskapian4.jpg" /></div>
    <p>日日年年朝朝暮暮，岁岁月月世世生生，金风玉露一相逢，便胜却人间无数。明明澈澈雨雨露露，恩恩爱爱忠忠诚诚，相恋相拥誓生，结良缘百年幸福。</p>

     <h4>深情款款</h4>
    <div style="width:640px;height:361px;margin:0px auto;"><img src="../images/newskapian5.jpg" /></div>
    <p>如果可以的话，我愿意用生命中的每一分每一秒陪着你，可是，现在我能做的，只是每一分每一秒想着你。</p>

     <h4>擅长算数</h4>
    <div style="width:640px;height:400px;margin:0px auto;"><img src="../images/newskapian6.jpg" /></div>
    <p>你是三我是九，九除三是三，我除了你还是你！</p>

     <h4>文采亦佳</h4>
    <div style="width:640px;height:400px;margin:0px auto;"><img src="../images/newskapian7.jpg" /></div>
 <p>我醉古人炼字确，
好生钦服致刚柔。<br />
想 望丰采叹难就，<br />
和 风丽日平添愁。<br />
你 今缘遇固邂逅，<br />
谈 霏玉屑隐俏眸。<br />
恋 浓思绪悄然映，<br />
爱 山乐水惦不休。</p>

<h4>霸道炫富</h4>
    <div style="width:640px;height:400px;margin:0px auto;"><img src="../images/newskapian8.jpg" /></div>
    <p>亲爱的老婆：凭此卡可于本人换兑钻戒一枚，永久有效，请妥善保管。爱你的老公！

你是我的小呀小苹果，怎么爱你都不嫌多，话说没有甜言蜜语的恋爱都是耍流氓！！！浪漫一些，嘴甜一些，就此摆脱单身，朝着你侬我侬的幸福生活迈进吧。</p>
 <h3>经典的送花留言</h3>
 <p>不要因为也许会改变，就不肯说那句美丽的誓言；不要因为也许会分离，就不敢求一次倾心的相遇。（席慕蓉）
      我给你的一切，你将永恒占有。（泰戈尔）
      让我的爱情，像阳光一样，包围着你，而又给你光辉灿烂的自由。（泰戈尔）
      我愿意是树，如果你是树上的花；我愿意是花，如果你是露水；我愿意是露水，如果你是阳光。（裴多菲）
      我的所有心事，所有的想法和念头，一切一切，过去，现在，将来，只归结为一个声音，一个象征，一个语调，如果它响起来，那么它只能是：我爱你！（燕妮•马克思）
      时间会慢慢地让您了解，一个外表很冷漠又很怕羞的人，他的颗心却充满了对您的爱。（巴斯德）
      我从灵魂深处爱你，我愿意把生命交给你，由你接受多少就多少，当初是这样，现在也决不变更。（勃朗宁）
      你是我的生命，我爱你。（拜伦）
      不相见，并不等于分离；不通音讯，也并不等于忘记。请相信，你的倩影，已经揉进我的心间。
      犹如两颗相遇的流星，心灵撞击出光和热；光和热中你我融为一体，你中有我，我中有你。相处又如两颗恒星，明明亮亮，双双悬在生活的夜空。
      自从认识了你，我的回忆，一次比一次甜蜜，我的爱，一次比一次浓烈。
      我是一块燧石，有了你的爱，我的生命才迸出耀眼的火花。
      我留在你的心上，一如你在我的心中；过去和现在，我们一直是两个彼此不能疏远的生命……
      有情之人，天天是节。一句寒暖，一线相喧；一句叮咛，一笺相传；一份相思，一心相盼；一份爱意，一生相恋。
      这辈子最疯狂的事，就是爱上了你，最大的希望，就是有你陪我疯一辈子……
      不要问我爱你有多深，我真的说不出来，只知道你已成为我生活中的一种习惯，不可或缺的习惯，每天可以不吃饭、不睡觉，却无法不想你……
      如果爱上你也算是一种错，我深信这会是生命中最美丽的错，我情愿错一辈子……
      如果活着，是上帝赋予我最大的使命， 那么活着有你，将会是上帝赋予我使命中最大的恩赐……
      下辈子我不会爱别人，今生爱你已将我所轮回的情和痴耗尽。
      我很幸福，因为我有一辈子的时间来爱你；不过你惨了，因为我下辈子还要爱你。
      一般而言，女孩子喜欢的送花留言，不一定需要多好的文采，但一定要发自内心；不一定要长篇大论，但一定要看了就情难自已。以上的送花留言或许就可以帮你感动对方的心。</p>
  </div>
  
   <uc2:Bottom ID="Bottom1" runat="server" />
    </form>
</body>
</html>
