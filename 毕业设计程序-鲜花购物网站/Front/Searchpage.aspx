<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Searchpage.aspx.cs" Inherits="Front_Searchpage" %>

<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc1" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc2" %>
<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小美鲜花网上商城</title>
    <link href="../css/FrontStyle.css" rel="stylesheet" />
  
       
   
    <style type="text/css">
         .style3
        {
            height: 12px;
        }
  .header
  {
       width:100%;
       height:56px;
       margin-bottom:26px;
      }
  .header_mid
  { 
      width:980px;
      height:56px;
      line-height:56px;
      margin:0px auto;
      margin-bottom:8px;
      border-bottom:2px solid #ff66cc;
      }
      .header_left
      {
           width:676px;
           height:56px;
           float:left;
        }
      .header_left a.A
      {
          text-decoration:none;
          font-weight:900;
          color:#262626;
          text-align:center;
          font-size:16px;
          display:inline-block;
          width:106px;
          height:56px;
          line-height:56px;
          }
      .header_left a:hover
      {
          background-color: #E91370;
          color:#fff;
          }
     .header_right
     {
         height:56px;
         float:right;
        
          
         }
   .TextBox1
   {
       width:60px;
       height:56px;
       line-height:56px;
       text-indent:2em;
       
       } 
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="2">
                       <div>
    <marquee width="920" behavior="scroll" direction="left" align="middle" border="0"
                onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="250" style="color: #D3D3D3"><SPAN 
      style="FONT-SIZE: 18px; color: #FF00FF;"><asp:Label id="movezi" runat="server" Text="Label">小美鲜花网欢迎你</asp:Label></SPAN></marquee>
</div>
<div class="header">
<div class="header_mid">
  <div class="header_left">
    <a href="Default.aspx" class="A" onfocus="this.blur()">网站首页</a>
    <a href="Myware.aspx" class="A" onfocus="this.blur()">查看购物</a>
    <a href="question.aspx" class="A" onfocus="this.blur()">常见问题</a>
    <a href="linian.aspx" class="A" onfocus="this.blur()">公司理念</a>
    <a href="service.aspx" class="A" onfocus="this.blur()">服务保证</a>
    <a href="Lianxiwomen.aspx" class="A" onfocus="this.blur()">联系我们</a>
  </div>
  <div class="header_right">
      <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
      <asp:Button ID="Button1"
          runat="server" Text="搜索" Height="32px" Width="66px" Font-Bold="True" 
          Font-Size="12pt"  />
  </div>
   
  </div>
  
</div>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top; text-align: left; width: 21%">
                        &nbsp;</td>
                    <td valign="top">
                        <table id="table1" runat="server" align="center" border="0" cellpadding="0" cellspacing="0"
                            width="100%">
                            <tr>
                                <td align="center" colspan="1" class="style3">
                                </td>
                                
                            </tr>
                            <tr>
                                <td align="center" style="height: 23px;">
                                </td>
                                <td align="center" style="height: 23px;">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
                                    <br />
                                </td>
                                <td align="center" style="height: 23px">
                                    
                                    
                                    
                                    <asp:Image ID="Image1" runat="server" Height="116px" 
                                        ImageUrl="~/images/flowers/yujinxiang.jpg" Width="89px" />
                                    <br />
                                    <br />
                                    
                                    
                                  <span style="font-size: 14px;font-weight:bold;">花名：</span>  
                                   <%-- <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF33CC"></asp:Label>--%>
                                     <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click1" 
                                Text='<%# Eval("花名") %>' Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                                                ForeColor="#666666"></asp:LinkButton>
                                    
                                    
                                    
                                    &nbsp;
                                  <span style="font-size:14px;font-weight:bold;">  价格：</span><asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#FF33CC"></asp:Label>
                                    <br />
                                    <br />
                                    
                                    
                                    
                                </td>
                                <td align="center" style="height: 23px">
                                    &nbsp;</td>
                                <td align="center" style="height: 23px">
                                    &nbsp;<br />
                                    <br />
                                    </td>
                            </tr>
                        </table>
                        <div align="center">
                            <strong></strong>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <uc1:Bottom ID="Bottom1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

