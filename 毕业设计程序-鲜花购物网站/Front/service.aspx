<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="Front_linian" %>
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
          left:34%;
          top:30%;
          
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
                          <div style="width:702px;position:absolute;left:30%;top:30%;">
                        <h3 style="text-align:center;">发票保证</h3>
                        <p style="text-indent:2em;line-height:32px">亲，依法纳税是每个企业、公民的基本义务。作为负责任的平台，我们一直以维护消费者的合法权益为己任，鼓励卖家依法诚信纳税、开票。如您需要发票，您可以在购买之前联系商家确认信息哦！</p>
                        <h3 style="text-align:center">配送声明</h3>
                        <p style="line-height:32px">1、若以下情况造成订单延迟或无法配送，我们将不承担责任：<br />
1.1、按照送货时间，收货人没有出现在顾客指定的送货地址，而且没有其他人在该处代收货物；<br />
1.2、不可抗力，例如：自然灾害、交通戒严等。<br />

2、我们将尝试以三种方法联络有关客户：联络收货人、联络订货人、联络代收人，如仍无法联络上，我们将停止配送，直到与有关客户重新约定时间恢复服务；<br />

3、通常默认您允许货物可以代收，除非您在订购时的特殊要求一栏提出必须收货人亲自接受；<br />

4、出现以下情况，我们只负责一次配送，由此造成的重复配送费用和花材损耗费用，我们将不承担责任： <br />
4.1、收货人拒收；<br />
4.2、在未联系到收货人情况下，顾客仍要求继续配送；<br />
4.3、按照与收货人预约的时间地点配送到时，但收货人却没有出现；<br />

5、请您在收到货物时当场验收，如果发现质量问题，您有权拒收或要求换货，并请在签收单上注明拒收或换货的理由。</p>
<h3 style="text-align:center">定时配送说明</h3>
<p style="line-height:32px">1、定时配送：为您提供的一项增值服务，在精确的时间为你送达，让您的情意传递更完美。<br />

2、定时配送需要至少提前一天，并在17:00前付款才可生效。部分产品可能需要提前3-5天，请订购时注意看定时服务相关的提示。<br />

3、定时配送费用：平时20元，节日60-200元，以网站公布为准。<br />

4、定时配送误差为30分钟，如你定时10:00送达，我们保证在9:30-10:30送达。<br />

5、选择定时配送，未准时送达，退还全额定时服务费并道歉。<br />

6、定时配送会根据配送能力临时调整，因此定时服务是否提供，以网站当日通知为准。</p>
                       </div>
                    </td>
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
