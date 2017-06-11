<%@ Page Language="C#" AutoEventWireup="true" CodeFile="linian.aspx.cs" Inherits="Front_linian" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小美鲜花网上商城</title>
    <link rel="stylesheet" href="../css/FrontStyle.css" />
    <style type="text/css">
        body
     {
         background: #FFFFFF url(../images/img01.gif) repeat;

         }
      .lianxi tr
      {
         
          height:60px;
          }
          .lianxi
          {
          display:block;
          position:absolute;
          width:776px;
          height:400px;
          left:27%;
          top:40%;
          
              }
       .lianxi p
       {
           line-height:32px;
           }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table  align="center">
                <tr>
                    <td colspan="2">
                        <uc1:Top ID="Top1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="height: 65px">
                        <img src="../images/159.gif" style="width: 414px; height: 48px;" /></td>
                </tr>
                <tr>
                    <td valign="top" style="width: 390px">
                        <img src="../images/063.gif" /></td>
                    <td valign="top" align="left">
                    <div class="lianxi">
                    <h3>公司介绍</h3>
                    <p>亲亲鲜花隶属于重庆帅美网络科技有限公司以“提供更优质的产品，更优惠的价格；更迅捷、更贴心的服务”为我们发展宗旨， 创造和谐舒适的网上购花环境，真正迎合和满足广大消费者传递情感的需求，引导花卉消费的生活方式，并且拥有完善的网络支付平台和交易系统，支持国内外多种信用卡和借贷卡的实时支付，安全、可靠、放心。 </p>
                    <h3>勇敢爱理念</h3>
                    <p>鲜花是爱情的象征，亲亲鲜花作为鲜花电商龙头企业，一直主张年轻人要勇敢爱，“勇敢爱，是勇敢表白，哪怕被拒绝也要再次大声说出我爱你；勇敢爱，是勇敢相守，即使相隔千里，也要竭尽全力，一步一步向你靠近。”只要勇敢去爱，爱就会一直存在。</p>
                    <h3>质量控制</h3>
                    <p>1、合作贵宾级客户的订单，我们会在订单号标记特殊符号，任何时候，任何情况下我们都会优先处理；<br />
2、每束鲜花皆选用当前最好的花材，严格按订单图片样式制作，保证新鲜，无虫眼，无掉叶，无黑边，样式一致；<br />
3、每个订单中的鲜花商品，皆交给我们当地最好的花艺师设计制作，品质高雅，客户喜欢；<br />
4、包装纸质材料由为全国统一质材，生产原料绿色环保，无毒，无异味，韧性强，色纯，质量一流。 </p>
                    </div></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <uc2:Bottom ID="Bottom1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
