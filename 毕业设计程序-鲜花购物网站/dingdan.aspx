<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Managelist.aspx.cs" Inherits="Managelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小美鲜花网上商城</title>

     <style type="text/css">
    .list
    {
        width:1200px;
        height:1200px;
        background-color:#3399FF;
        position:absolute;
        left:50%;
        top:50%;
        margin-top:-180px;
        margin-left:-590px;
    }
    .list1
    {
        text-decoration:none;
        font-size:20px;
        color:#fff;
        font-weight:bold;
    }
    .list1:hover
    {
        color:#ffff66;
        font-weight:bold;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" class="list"><br />   
     <strong style="width:840px;height:20px;border-bottom:1px white solid;padding-bottom:8px;text-align:center;color: #ffff66;display:inline-block;padding-top:20px;font-size:20px;font-weight:bold">订单管理</strong>
     <asp:LinkButton ID="shangpin" runat="server" PostBackUrl="~/Managelist.aspx">返回</asp:LinkButton>
     <div style="margin-top:40px">
       
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
             AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:CommandField ShowEditButton="True" />
                 <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                     SortExpression="id" InsertVisible="False" />
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
         <br />
       
      </div>
    </div>
    
    </form>
</body>
</html>
