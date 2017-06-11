<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Front_Default" %>

<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc2" %>
<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>小美鲜花网上商城</title>
    <link href="../css/FrontStyle.css" rel="stylesheet" />
    <style type="text/css">
          body
     {
         background: #FFFFFF url(../images/img01.gif) repeat;

         }
    .c
        {
            font-family: 楷体;
            font-size: xx-large;
            font-weight: 900;
            font-style: normal;
            color: #FF99FF;
        }
        .style28
        {
            width: 1080px;
            
            height: 586px;
        }
        .style31
        {
            width: 524px;
        }
        .style29
        {
            width: 520px;
            height: 586px;
            background-image: url('../images/相框.PNG');
        }
        .style30
        {
            
            width: 432px;
            height: 586px;
        background-color: #CCFF99;
    }
        .style33
        {
            width: 21%;
            height: 620px;
        }
        .style34
        {
            height: 620px;
        }
        table
        {
            margin-right:45px;
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
            <div id="img" style="position: absolute;">
            </div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <!--头-->
                    <div>
    <marquee width="920" behavior="scroll" direction="left" align="middle" border="0"
                onmouseover="this.stop()" onmouseout="this.start()" scrolldelay="250" style="color: #D3D3D3"><SPAN 
      style="FONT-SIZE: 18px; color: #FF00FF;"><asp:Label id="movezi" runat="server" Text="Label">小美鲜花网欢迎你</asp:Label></SPAN></marquee>
</div>
                    <td colspan="3">
                        <div class="header">
<div class="header_mid">
  <div class="header_left">
    <a href="Default.aspx" class="A" onfocus="this.blur()">网站首页</a>
   <%-- <a href="Myware.aspx" class="A" onfocus="this.blur()">查看购物</a>--%>
    <a href="question.aspx" class="A" onfocus="this.blur()">常见问题</a>
    <a href="linian.aspx" class="A" onfocus="this.blur()">公司理念</a>
    <a href="service.aspx" class="A" onfocus="this.blur()">服务保证</a>
    <a href="Lianxiwomen.aspx" class="A" onfocus="this.blur()">联系我们</a>
  </div>
  <div class="header_right">
      <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
      <asp:Button ID="Button1"
          runat="server" Text="搜索" Height="32px" Width="66px" Font-Bold="True" 
          Font-Size="12pt" onclick="Button1_Click" />
  </div>
   
    
   
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
   
    
   
  </div>
  
</div>

                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top; text-align: left; " class="style33">
                        <!--左-->
                        <uc3:left id="left1" runat="server" />
                        <%--<asp:imagebutton id="imagebutton3" runat="server" imageurl="~/images/talk.jpg"  />--%></td>
                    <!--右-->
                    <td valign="top" class="style34">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td align="left" style="height: 210px; ">

                                    <table class="style28">
                                        <tr>
                                            <td class="style31">
                                                <div class="style29">
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                            </asp:ScriptManager>
                        <br />
                                                            <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="3000">
                                                            </asp:Timer>
                        <br />
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                                SelectCommand="SELECT [图片], [花名], [价格] FROM [Goods]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                         <br />
                        <br />
                        <br />
                        <br />
          
                                                          &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:ImageButton ID="ImageButton4" 
                                                                runat="server" ImageUrl="~/images/漫画/1.jpg" onclick="ImageButton1_Click" 
                                                                Height="304px" />
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="style30">
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="Label1" runat="server" CssClass="c" 
                                                        Text="浪漫选花，以花代话；&lt;br /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;爱她，就送她一束花吧！"></asp:Label>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/花签/1.PNG" 
                                                                onclick="ImageButton2_Click" Width="432px" Height="98px" />
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                                <td valign="top" align="left" style="width: 100%">
                                    &nbsp;<!--最新公告--></td>
                            </tr>
                           
                           
                            <tr>
                                <td align="left" colspan="2" style="
                                    height: 33px;">
                                    <br />
                                    <img src="../images/index_63.jpg" />&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [图片], [价格], [花名] FROM [Goods]"></asp:SqlDataSource>
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                        Height="296px" RepeatDirection="Horizontal" Width="675px" CellPadding="40" 
                                        RepeatColumns="4" BorderColor="#CCCCCC" BorderWidth="1px" >
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="183px" 
                                Width="167px" ImageUrl='<%# Eval("图片", "~/images/flowers/{0}") %>' />
                                                
                               
                                            <br />
                                            <br />
                                           <span style="font-size:14px;color:Gray;">花名:</span>
                                            <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click1" 
                                Text='<%# Eval("花名") %>' Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                                                ForeColor="#666666"></asp:LinkButton>
                                            <br />
                                            <span style="font-size:14px;color:Gray">价格:</span>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("价格") %>' 
                                                ForeColor="#FF66CC" Font-Bold="True" />
                                            <br />
                                            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                                        
                            </tr>
             
                        </table>
                    </td>
                  
                </tr>
                 
                <tr>
                    <!--尾-->
                    <td colspan="3">
                        <uc2:Bottom ID="Bottom1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
