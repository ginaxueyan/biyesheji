<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OK.aspx.cs" Inherits="Front_OK" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>小美鲜花网上商城--完成订单</title>
    <link href="../css/xiaomei.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
     body
     {
         background: #FFFFFF url(../images/img01.gif) repeat;

         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" bgcolor="#ffe6ef" border="0" cellpadding="0" cellspacing="1"
            height="65" valign="absmiddle" width="520">
            <tbody>
                <tr>
                    <td align="middle" bgcolor="#ffe6ef" height="25" valign="center">
                        恭喜，订单提交成功！您的收货地址为 
                        <strong><asp:Label
                            ID="Add" runat="server"></asp:Label></strong>
                        本次交易金额为：<strong><asp:Label
                            ID="price" runat="server"></asp:Label></strong>元
                    </td>
                </tr>
                <tr>
                    <td align="middle" bgcolor="#ffffff" height="40" valign="center">
                        <div align="left">
                            我们的客服人员会(工作时间内)与您电话确认订单！确认之后请您在24小时内按您选择的支付方式进行汇款，如有问题请及时通知我们：010-88861868</div>
                    </td>
                </tr>
            </tbody>
        </table>
    
    </div>
    <div style="width:218px;height:40px;position:absolute;left:50%;top:50%;margin-top:-88px;margin-left:-109px;font-size:36px;"><b id="second">5s</b>后返回首页</div>
    </form>
    <script type="text/javascript">
        var sec = document.getElementById("second");
        var i = 5;
        var timer = setInterval(function () {
            i--;
            sec.innerHTML = i+"s";
            if (i == 1) {
                window.location.href = "Default.aspx";
            }
        }, 1000);
       
    </script>
</body>
</html>
