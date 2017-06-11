<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userdingdan.aspx.cs" Inherits="Userdingdan" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc2" %>
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
      <uc1:Top ID="Top1" runat="server" />
    </div>
    <div class="center">
    </div>
    <div style="margin:0px auto; width: 153px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="花名" HeaderText="花名" SortExpression="花名" />
            <asp:BoundField DataField="购买数量" HeaderText="购买数量" SortExpression="购买数量" />
            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
            <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" onclientclick="return confirm('确认要删除记录吗？')">删除 </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [dingdan] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [dingdan] ([花名], [购买数量], [价格]) VALUES (@花名, @购买数量, @价格)" 
        SelectCommand="SELECT * FROM [dingdan]" 
        UpdateCommand="UPDATE [dingdan] SET [花名] = @花名, [购买数量] = @购买数量, [价格] = @价格 WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="花名" Type="String" />
            <asp:Parameter Name="购买数量" Type="Int32" />
            <asp:Parameter Name="价格" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="花名" Type="String" />
            <asp:Parameter Name="购买数量" Type="Int32" />
            <asp:Parameter Name="价格" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
