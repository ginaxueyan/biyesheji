<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SeeWare.aspx.cs" Inherits="Front_SeeWare" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc1" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc2" %>
<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>小美鲜花网上商城</title>
    <link href="../css/FrontStyle.css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function pic_onclick() {

        }

// ]]>
    </script>
    <style type="text/css">
        .style5
        {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table width="100%" cellpadding="0" cellspacing="0" border="0">
       <tr>
                    <td colspan="3">
                        <uc2:Top ID="Top1" runat="server" />
                    </td>
                </tr>
                <tr>
                     <td style="vertical-align: top; text-align: left; width: 21%">
                        <uc3:Left ID="Left1" runat="server" />
                    </td>
                    
                    <td valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td valign="top" width="173">
                                    &nbsp;</td>
                                <td style="font-size: 9pt; color: #000000" valign="top" align="left" width="100%">
                                    <table border="0" cellpadding="0" cellspacing="0" height="25" width="98%">
                                        <tr>
                                            <td bgcolor="#f4f4f4" align="left" valign="middle" style="height: 25px">
                                                <br />
                                                当前位置：<a href="Default.aspx"><span style="color: #000000;font-size:12px;">小美鲜花网</span></a> &gt;&gt;<span style="color: #000000">商品详细资料<br />
                                                </span></td>
                                        </tr>
                                    </table>
                                    <br />
                                 <table border="0" cellpadding="1" cellspacing="1" style="border: 1px solid #ff00ff; right: 0px; color: #000000;
                                        margin-left:120px; height: 320px;" width="60%" >
                                        <tr>
                                            <td align="left" rowspan="7" width="200">
                                                <div align="center">
                                                    <asp:image src="../images/flowers/yujinxiang.jpg" id="pic" runat="server" height="260" width="200" 
                                                        onclick="return pic_onclick()"  />
                                                    </div>
                                            </td>
                                            <td align="left"  class="gouwuliucheng" height="46">
                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;名&nbsp;称：<asp:label id="namelb" runat="server"></asp:label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style5">
                                                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;市场价：<asp:label id="pricelb" runat="server"></asp:label>元</td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="left"  height="46">
                                                &nbsp;
                                                <div height="50px">

                         &nbsp;&nbsp;<asp:button 
                                                        id="button2" runat="server"  text="-" onclick="button2_Click" />
                         &nbsp;
                         <asp:textbox id="shuliang" runat="server">1</asp:textbox>
                         &nbsp;&nbsp;
                         <asp:button id="button3" runat="server"  text="+" onclick="button3_Click" />

                     </div>
                                                </td>
                                        </tr>
                                        <tr style="font-weight: bold; color: red">
                                            <td align="left"  height="46">
                                                <a href="#"></a>
                                                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:imagebutton 
                                                    id="imagebutton1" runat="server" height="25px" imageurl="~/images/23.gif"
                                                    width="42px" onclick="imagebutton1_Click"   />&nbsp;
                                                &lt;&lt;放入购物车</td>
                                        </tr>
                                       
                                    </table>
                                    <table border="0" cellpadding="0" cellspacing="0" height="25" width="98%">
                                       
                                    </table>
                                    <div runat="server" align="left" style="width: 98%; height: 100%; border-right: #ff00ff 1px solid;
                                        border-top: #ff00ff 1px solid; border-left: #ff00ff 1px solid; border-bottom: #ff00ff 1px solid;"
                                        id="coutentDiv">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [gouwuche]">
                                        </asp:SqlDataSource>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 13%">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <uc1:Bottom ID="Bottom1" runat="server" />
                    </td>
                </tr>
     </table>
    </div>
    </form>
</body>
</html>
