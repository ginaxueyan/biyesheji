<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Managelist.aspx.cs" Inherits="Managelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>小美鲜花网上商城</title>

     <style type="text/css">
    .list
    {
        width:900px;
        height:400px;
        background-color:#3399FF;
        position:absolute;
        left:50%;
        top:50%;
        margin-top:-200px;
        margin-left:-450px;
    }
    .list1
    {
        text-decoration:none;
        font-size:20px;
        color:#fff;
        font-weight:bold;
    }
    .list1:hover
    {
        color:#ffff66;
        font-weight:bold;
        }
        #shangpin
        {
            display:block;
            text-align:right;
            padding-right:20px;
            
            }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" class="list"><br />
     <strong style="text-align:center;color: #ffff66;display:inline-block;padding-top:20px;font-size:40px;font-weight:bold;">管理员界面</strong>
   <asp:LinkButton ID="shangpin" runat="server" PostBackUrl="~/Login.aspx" 
            >退出</asp:LinkButton>
     <div style="margin-top:120px">
      <asp:LinkButton ID="L_gwc" runat="server" class="list1" 
             PostBackUrl="~/usernews.aspx">用户信息</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:LinkButton ID="LinkButton1" runat="server" class="list1" 
             PostBackUrl="~/shopnews.aspx">商品信息</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:LinkButton ID="LinkButton2" runat="server" class="list1" 
             PostBackUrl="~/dingdan.aspx">订单表</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:LinkButton ID="LinkButton3" runat="server" class="list1" 
             PostBackUrl="~/shoppingcar.aspx">购物车</asp:LinkButton>
      </div>
    </div>
    </form>
</body>
</html>
