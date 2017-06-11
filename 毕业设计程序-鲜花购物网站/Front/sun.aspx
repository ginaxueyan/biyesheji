<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sun.aspx.cs" Inherits="Front_sun" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc1" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>小美鲜花网上商城</title>
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
      <uc2:Top ID="Top1" runat="server" />
    </div>
    <div style="margin-left:180px;">
    <h3 style="background-color: #FF3399; font-size: 17px; font-weight: bold; color: #FFFFFF; width: 80px; height: 30px;text-align:center;line-height:30px">阳光海岸</h3><br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [花名], [图片], [价格] FROM [Goods]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                                        Height="296px" RepeatDirection="Horizontal" Width="675px" CellPadding="40" 
                                        RepeatColumns="4" >
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="183px" 
                                Width="167px" ImageUrl='<%# Eval("图片", "~/images/flowers/{0}") %>' />
                                                
                               
                                            <br />
                                            <br />
                                           <span style="font-size:14px;color:Gray;">花名:</span>
                                            <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click1" 
                                Text='<%# Eval("花名") %>' Font-Bold="True" Font-Italic="False" Font-Overline="False" ForeColor="#666666"></asp:LinkButton>
                                            <br />
                                            <span style="font-size:14px;color:Gray">价格:</span>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("价格") %>' 
                                                ForeColor="#FF66CC" Font-Bold="True" />
                                            <br />
                                            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          
                                        </ItemTemplate>
                                    </asp:DataList>
    </div>
    <div>
      <uc1:Bottom ID="Bottom1" runat="server" />
    </div>
    </form>
</body>
</html>
