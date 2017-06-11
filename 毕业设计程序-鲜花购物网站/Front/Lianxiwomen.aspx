<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lianxiwomen.aspx.cs" Inherits="Front_Lianxiwomen" %>

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
          top:40%;
          
              }
        .style3
        {
            height: 60px;
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
                    <td valign="top" style="width: 390px;margin-left:20px;">
                        <img src="../images/063.gif" /></td>
                    <td valign="top" align="left">
                        <table border="0" cellpadding="0" cellspacing="0" width="739" class="lianxi">
                            <tr>
                                <td style="height: 52px">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/b_9.gif" />roseonly

Tel：010-85888791
                                </td>
                            </tr>
                           
                            <tr>
                                <td>
                                    <div id="Div1" runat="server" style="border-right: #ff00ff 1px solid; border-top: #ff00ff 1px solid;
                                        border-left: #ff00ff 1px solid; border-bottom: #ff00ff 1px solid;">
                                    </div>
                                </td>
                            </tr>
                           
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/b_9.gif" />企业合作

Tel：(86-10)85888791转8910
Email：marketing@roseonly.com</td>
                            </tr>
                            
                            <tr>
                                <td class="style3">
                                    <div id="Div2" runat="server" style="border-right: #ff00ff 1px solid; border-top: #ff00ff 1px solid;
                                        border-left: #ff00ff 1px solid; border-bottom: #ff00ff 1px solid;">
                                    </div>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/b_9.gif" />客服中心

Tel：400-1314-520
Email：service@roseonly.com</td>
                            </tr>
                            
                           
                           
                           
                            
                          
                          
                           
              
                          
                          <tr>
                                <td>
                                    <div id="Div3" runat="server" style="border-right: #ff00ff 1px solid; border-top: #ff00ff 1px solid;
                                        border-left: #ff00ff 1px solid; border-bottom: #ff00ff 1px solid;">
                                    </div>
                                </td>
                            </tr>
                        </table>
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
