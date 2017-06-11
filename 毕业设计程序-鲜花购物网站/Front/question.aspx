<%@ Page Language="C#" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="Front_question" %>
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
          top:30%;
          
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
                         <h3>1.你们是实体店吗？怎么保证收花人收到的鲜花是新鲜的呢？</h3>
                         <p>亲亲鲜花网不但是实体花店，而且是花艺一流的品牌花店，我们的鲜花商品图片很多就是我们自己包装的，在图片上有我们的专用吊牌，这个是后期ps不了的，噩梦的每一款花都会选用新鲜花材，在你下单后才开始制作，保证了鲜花的新鲜度，如果出现质量问题一律全额退款或免费重送。</p>
                         <h3>2.异地可以送花吗？</h3>
                         <p>可以，我们是全国连锁的鲜花速递服务中心，在全国大部分城市及区县均有我们的连锁店，主城区免费送货上门，其他地区根据离配送店远近需要收一定的配送费用，如果您当前在国外，我们支持国外送国内，暂不支持国内送国外，具体情况请咨询我们的客服。</p>
                         <h3>3.送到的鲜花和图片一致吗？可以指定日期和具体时间吗？</h3>
                         <p>鲜花商品属于手工艺品，不同的花艺师和材料决定了实物与图片不可能一模一样，我们保证主花材和颜色的一致性，配材可能会根据情况临时调整，不过请您放心，不会影响鲜花的整体美观，我们也会尽量做到与图片一致，我们将会按照您指定的日期送达。</p>
                         <h3>4.鲜花会送到收花人手上吗？如果收花人不在怎么办？</h3>
                         <p>通常情况下我们会把鲜花送到收花人手上，如果因为客观原因，我们会用电话取得收花人同意的情况下交由收花人指定的他人代收，如果无法联系收花人也无法联系订购人的情况下，我们会将鲜花拿回来，等联系上以后再重新配送，不过可能会补收一定的配送费用哦</p>

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

