<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usercenter.aspx.cs" Inherits="Usercenter" %>
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
        .style1
        {
            height: 518px;
        }
        .style2
        {
            width: 644px;
        }
        .style3
        {
            height: 25px;
            width: 644px;
        }
        .style4
        {
            width: 597px;
            height: 3px;
        }
        .style5
        {
            width: 644px;
            height: 3px;
        }
        .LinkButton1
        {
            text-decoration:none;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <uc1:Top ID="Top1" runat="server" />
    </div>
    

    <table runat="server" visible="true" id="usertabledata" align="center">
                            <tr>
                                <td class="style1">
                                    <table border="0" cellpadding="0" cellspacing="0" height="25" width="767">
                                        <tr>
                                            <td valign="bottom">
                                                <div align="center">
                                                    <strong><span style="color: #ff0000">以下是您的个人资料，编辑完成后单击“确认修改”：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                    <a href="Default.aspx" 
                                                        style="color: #C0C0C0; text-decoration: none; font-size: 20px;">返回</a>
&nbsp; </span></strong></div>
                                            </td>
                                        </tr>
                                    </table><br /><br />
                                    <table align="center" border="1" bordercolor="#c0c0c0" cellpadding="2" 
                                        cellspacing="0" style="width: 676px; height: 280px">
                                        <tbody>
                                            <tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    真实姓名</td>
                                                <td height="25" align="left" class="style2">
                                                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
                                                        Font-Size="Medium"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    密码</td>
                                                <td height="25" align="left" class="style2">
                                                    <asp:TextBox ID="pass" runat="server"  Width="149px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="pass" ErrorMessage="*请输入密码！" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            <%--<tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    确认密码</td>
                                                <td height="25" width="600" align="left">
                                                    <asp:TextBox ID="pass2" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
                                            </tr>--%>
                                            <tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    电子邮箱</td>
                                                <td height="25" align="left" class="style2">
                                                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ControlToValidate="email" ErrorMessage="*请输入正确的邮箱地址！" ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    联系地址</td>
                                                <td height="25" align="left" class="style2">
                                                    <asp:TextBox ID="addr" runat="server" Width="150px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="addr" ErrorMessage="*请输入地址！" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                           <%-- <tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    邮政编码</td>
                                                <td height="25" width="600" align="left">
                                                    <asp:TextBox ID="area_code" runat="server"></asp:TextBox></td>
                                            </tr>--%>
                                            <tr>
                                                <td align="right" class="style4">
                                                    手机号码</td>
                                                <td align="left" class="style5">
                                                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="phone" ErrorMessage="*请输入正确手机号码！" ForeColor="Red" 
                                                        ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="phone" ErrorMessage="*请输入手机号！" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" style="height: 25px; width: 597px;">
                                                    QQ 号</td>
                                                <td align="left" class="style3">
                                                    <asp:TextBox ID="qq" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="qq" ErrorMessage="*请输入qq号！" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" height="25" style="width: 597px">
                                                    职 业</td>
                                                <td height="25" align="left" class="style2">
                                                    <asp:TextBox ID="zhiye" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="zhiye" ErrorMessage="*请输入职业！" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" height="25">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="updateBtn" runat="server" Text="确认修改" 
                                                        OnClick="updateBtn_Click" />
                                                    &nbsp;&nbsp;
                                                    </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [userdate]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
    </form>
</body>
</html>
