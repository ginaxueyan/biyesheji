<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="Front_zhucexieyi" %>

<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小美鲜花网－－会员注册</title>
    <link href="../css/FrontStyle.css" rel="stylesheet" />
    <link href="../css/xiaomei.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
// <!CDATA[

// ]]>
</script>
    <style type="text/css">
         body
     {
         background: #FFFFFF url(../images/img01.gif) repeat;

         }
        .style3
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        &nbsp;<uc1:Top ID="Top1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                       
                         <div runat="server" id="second" visible=true style="border-right: #ffe6ef 1px solid; border-top: #ffe6ef 1px solid; border-left: #ffe6ef 1px solid; border-bottom: #ffe6ef 1px solid; width:80%">
                                  <table id="Table1" align="center" runat="server" border="0" cellpadding="0" cellspacing="0" height="25" style="width: 100%">
                                                <tr>
                                                    <td valign="bottom">
                                                        <img height="16" src="../images/home-21.gif" width="16" /><span class="style２" style="font-size: 10pt;
                                                            color: #434343"><strong>填写基本资料</strong></span>
                                                    </td>
                                                </tr>
                                            </table>
                                             <table align="center" runat="server" border="0" bordercolor="#dfdfdf" cellpadding="2" cellspacing="1"
                                                width="70%" id="Table2" style="background-color: #f4f4f4">
                                                    <tbody>
                                                        <tr>
                                                            <td align="right" width="20%">
                                                                用户名<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="username" runat="server" ValidationGroup="second"></asp:TextBox>
                                                                &nbsp; 
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="username" Display="Dynamic" ErrorMessage="*请输入用户名！" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div runat="server" id="checkUserDiv">
                                                                   <asp:Button ID="Button3" runat="server" Text="检测帐号" 
                                                                        ValidationGroup="checkUserDiv" CausesValidation="False" 
                                                                        onclick="Button3_Click" /></div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" width="20%">
                                                                真实姓名<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                                <%--<asp:TextBox ID="name" runat="server" ValidationGroup="second"></asp:TextBox>--%>&nbsp;<asp:TextBox 
                                                                    ID="name" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="name" Display="Dynamic" ErrorMessage="*请输入真实姓名！" 
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style3">
                                                                密&nbsp;&nbsp; 码<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                               <%--<asp:TextBox ID="pass" runat="server" TextMode="Password" ValidationGroup="second"></asp:TextBox>--%>
                                                                &nbsp;<asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="pass" Display="Dynamic" ErrorMessage="*请输入密码！" 
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                确认密码<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="pass2" runat="server" TextMode="Password" ValidationGroup="second"></asp:TextBox>&nbsp;
                                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="*密码与确认密码不一致！" ForeColor="Red" ControlToValidate="pass2" 
                    Display="Dynamic" ControlToCompare="pass"></asp:CompareValidator></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" class="style3">
                                                                电子邮箱<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="email" runat="server" ValidationGroup="second"></asp:TextBox>&nbsp;
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                                    ControlToValidate="email" ErrorMessage="*请输入正确的邮箱" ForeColor="Red" 
                                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                联系地址<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="addr" runat="server" ValidationGroup="second"></asp:TextBox>&nbsp;
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="addr" Display="Dynamic" ErrorMessage="*请输入地址！" 
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                       
                                                        <tr>
                                                            <td align="right">
                                                                手机号码<font color="red">*</font></td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="phone" runat="server" ValidationGroup="second"></asp:TextBox>&nbsp;
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="*请输入电话号码！" 
                    
                    ValidationExpression="^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$" 
                    ControlToValidate="phone" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="phone" Display="Dynamic" ErrorMessage="请输入电话号码！" 
                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right">
                                                                QQ 号</td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="qq" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="qq" Display="Dynamic" ErrorMessage="*请输入qq号！" 
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right">
                                                                职 业</td>
                                                            <td align="left" class="style3">
                                                                <asp:TextBox ID="zhiye" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="zhiye" Display="Dynamic" ErrorMessage="*请输入职业！" 
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                        </tr>
                                                        
                                                       
                                                       
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                                    
                                                                    SelectCommand="SELECT [username], [truename], [pwd], [email], [address], [mobile], [QQ], [sex], [zhiye] FROM [userdate]"></asp:SqlDataSource>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="tijiao" runat="server" Text="提交" ValidationGroup="second" 
                                                                    onclick="Button1_Click"  />
                                                              <asp:Button ID="Button1" runat="server" Text="返回" 
                                                                    onclick="Button1_Click1" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                            </table>
        </div>
         </div>                   <uc2:Bottom ID="Bottom1" runat="server" />
        
    </form>
</body>
</html>
