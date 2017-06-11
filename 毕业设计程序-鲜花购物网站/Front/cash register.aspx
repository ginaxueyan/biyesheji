<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cash register.aspx.cs" Inherits="Front_cash_register" %>
<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc1" %>
<%@ Register Src="Top.ascx" TagName="Top" TagPrefix="uc2" %>
<%@ Register Src="Bottom.ascx" TagName="Bottom" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>小美鲜花网上商城</title>
     <link href="../css/FrontStyle.css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
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
        <uc1:Left ID="Left1" runat="server" />
        </td>
               <td>
                        <table id="one" runat="server" align="center">
                            <tr>
                                <td style="width: 3px">
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="520">
                                        <tbody>
                                            <tr bgcolor="#ffffff">
                                                <td bgcolor="#ffe6ef" style="height: 25px">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="280px">
                                                        <Columns>
                                                        <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="ChecBox2" runat="server" Text="全选" AutoPostBack="True" 
                                oncheckedchanged="ChecBox2_CheckedChanged" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [dingdan]" 
                                                        DeleteCommand="DELETE FROM [dingdan] WHERE [id] = @id" 
                                                        InsertCommand="INSERT INTO [dingdan] ([花名], [购买数量], [价格]) VALUES (@花名, @购买数量, @价格)" 
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
                                                    <br />
                                                    <asp:Label ID="Label2" runat="server" Text="收货地址："></asp:Label>
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                    <span><strong>
                                                    <br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;您选购的商品总价为:￥</strong><asp:Label ID="subtotalLb" runat="server"></asp:Label><span style="font-size: 10pt;
                                                            color: #000000">元  
                                                    <br />
                                                    <br />
                                                    <br /><asp:Button ID="Button1" runat="server" CausesValidation="False" Style="cursor: hand"
                                                        Text="提交" Width="82px" BorderColor="Black" BorderStyle="Solid"
                                                        BorderWidth="1px" OnClick="Button1_Click"  />
                                                    </span></span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                   
                                    
                                </td>
                            </tr>
                        </table>
                       
                                   
                                </td>
                            </tr>
                        </table>
                    </td>
      </tr>
       <tr>
                    <td colspan="2">
                        <uc3:Bottom ID="Bottom1" runat="server" />
                    </td>
                </tr>
     </table>
    </div>
    </form>
</body>
</html>
