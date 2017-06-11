<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小美鲜花网上商城</title>
    <link href="../css/login.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
        .style2
        {
            width: 173px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br/>
            <br/>
            <br/>
            <br/>
            <table class="logintable" cellspacing="0" cellpadding="8" width="600" 
                border="0" bgcolor="#3399FF" align="center">
                <tbody>
                    <tr class="loginheader">
                        <td width="80">
                        </td>
                        <td width="100">
                        </td>
                        <td style="width: 173px">
                        </td>
                        <td width="120">
                        </td>
                        <td width="80">
                        </td>
                    </tr>
                    <tr style="border-bottom:4px red solid;">
                        <td class="style1">
                            </td>
                        <td class="style1">
                            </td>
                        <td class="style2">
                           &nbsp;&nbsp;<span style="font-weight: bold; font-size: 14px; color: #ffff66">后台登陆</span> </td>
                        <td class="style1">
                            </td>
                        <td class="style1">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="line2">
                            &nbsp;</td>
                        <td class="line2" style="width: 173px">
                            &nbsp;</td>
                        <td class="line2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="right">
                            用户名:</td>
                        <td style="width: 173px">
                            &nbsp;&nbsp;
                            <asp:TextBox ID="txtname" runat="server" TabIndex="1"></asp:TextBox></td>
                        <td>
                            <a href="Front/Default.aspx" tabindex="5" style="color: #ffff66;">退出</a></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="right">
                            密 码:
                        </td>
                        <td style="width: 173px">
                            &nbsp; &nbsp;<asp:TextBox ID="txtmima" 
                                runat="server" TabIndex="2" TextMode="Password" Width="148px"></asp:TextBox></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="line1" align="right">
                            &nbsp;验证:</td>
                        <td class="line1" align="middle" style="width: 173px">

                          <%--  <script language="JavaScript">document.login.admin_password.focus();function Submit1_onclick() {

}

                            </script>--%>
                            <asp:TextBox ID="txtcode" runat="server" TabIndex="3" style="align:left;"></asp:TextBox>
                            </td>
                        <td class="line1">
                            &nbsp;<img id="imgCode" align="middle" 
                                alt="看不表楚请点击这里更换附加码……" height="20" onclick="this.src=this.src+'?'"
                                src="Front/CheckCode.aspx"/></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="line2">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [ADMIN]"></asp:SqlDataSource>
                        </td>
                        <td class="line2" style="width: 173px">
                            &nbsp;<asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click"
                                Text="登录" TabIndex="4" /></td>
                        <td class="line2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="middle" colspan="5">
                            &nbsp; &nbsp;&copy; 2009-05-08 <a style="color: #fff">Email:advance_dream@163.com</a></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td style="width: 173px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
