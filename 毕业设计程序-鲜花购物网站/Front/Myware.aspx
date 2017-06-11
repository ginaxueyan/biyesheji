<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Myware.aspx.cs" Inherits="Front_Myware" %>

<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc1" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc2" %>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="2">
                        <uc2:Top ID="Top1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top; text-align: left; width: 21%">
                        <uc3:Left ID="Left1" runat="server" />
                    </td>
                    <td valign="top">
                        <table id="table1" runat="server" align="center" border="0" cellpadding="0" cellspacing="0"
                            width="100%">
                            <tr>
                                <td align="center" colspan="1">
                                </td>
                                <td align="center" colspan="4">
                                    <strong><span style="font-size: 9pt; color: #ff0000">
                                        <br />
                                        您选择的商品已经放入购物车，您现在可以前往收银台提交订单，也可以继续购物。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
                                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        <br />
                                    </span></strong> 
                                    <asp:GridView ID="ShopCart" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" GridLines="Horizontal" 
                 AllowPaging="True" 
                PageSize="4"  
                 DataSourceID="SqlDataSource1" DataKeyNames="编号">
                                        <Columns>
                                            <asp:BoundField DataField="编号" HeaderText="编号" 
                                                ReadOnly="True" SortExpression="编号" InsertVisible="False" />
                                            <asp:BoundField DataField="购买数量" HeaderText="购买数量" SortExpression="购买数量" />
                                            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                                            <asp:BoundField DataField="花名" HeaderText="花名" SortExpression="花名" />
                                           <%-- <asp:BoundField DataField="图片" HeaderText="图片" SortExpression="图片" />--%>
                                           <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" onclientclick="return confirm('确认要删除记录吗？')">删除 </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                                        </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
                                    <br />
            
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [gouwuche]" 
                                        DeleteCommand="DELETE FROM [gouwuche] WHERE [编号] = @编号" 
                                        InsertCommand="INSERT INTO [gouwuche] ([购买数量], [价格], [花名]) VALUES (@购买数量, @价格, @花名)" 
                                        
                                        UpdateCommand="UPDATE [gouwuche] SET [购买数量] = @购买数量, [价格] = @价格, [花名] = @花名 WHERE [编号] = @编号">
                                        <DeleteParameters>
                                            <asp:Parameter Name="编号" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="购买数量" Type="Int32" />
                                            <asp:Parameter Name="价格" Type="String" />
                                            <asp:Parameter Name="花名" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="购买数量" Type="Int32" />
                                            <asp:Parameter Name="价格" Type="String" />
                                            <asp:Parameter Name="花名" Type="String" />
                                            <asp:Parameter Name="编号" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#404040"
                                        Text="Label" Visible="False"></asp:Label><br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="height: 23px;">
                                </td>
                                <td align="center" style="height: 23px;">
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/未命名.jpg" onclick="ImageButton3_Click" 
                                          /><br />
                                </td>
                                <td align="center" style="height: 23px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/goon.gif" 
                                        onclick="ImageButton1_Click"  /></td>
                                <td align="center" style="height: 23px">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/syt.gif" 
                                        onclick="ImageButton2_Click"  /></td>
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
