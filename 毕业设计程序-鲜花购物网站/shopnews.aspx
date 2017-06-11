<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopnews.aspx.cs" Inherits="shopnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  
</script>
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
     <strong style="width:840px;height:20px;border-bottom:1px white solid;padding-bottom:8px;text-align:center;color: #ffff66;display:inline-block;padding-top:20px;font-size:20px;font-weight:bold">商品信息</strong>
     <asp:LinkButton ID="shangpin" runat="server" PostBackUrl="~/Managelist.aspx">返回</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="编号" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="编号" HeaderText="编号" ReadOnly="True" 
                    SortExpression="编号" InsertVisible="False" />
                <asp:BoundField DataField="花名" HeaderText="花名" SortExpression="花名" />
                <asp:BoundField DataField="材料" HeaderText="材料" SortExpression="材料" />
                <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                <asp:BoundField DataField="花语" HeaderText="花语" SortExpression="花语" />
                <asp:ImageField HeaderText="图片" DataImageUrlField="图片" 
                    DataImageUrlFormatString="~\images\flowers\{0}" ControlStyle-Height="60" ControlStyle-Width="60">
<ControlStyle Height="60px" Width="60px"></ControlStyle>
                </asp:ImageField>
                 <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" onclientclick="return confirm('确认要删除记录吗？')">删除 </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" 
                Height="25px" Width="65px" />
        <div style="margin-top:20px">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="编号："></asp:Label><asp:TextBox ID="TextBox1"
                runat="server" Height="20px" Width="220px"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" runat="server" Text="花名："></asp:Label><asp:TextBox ID="TextBox2"
                runat="server" Height="20px" Width="220px"></asp:TextBox><br /><br />
            <asp:Label ID="Label3" runat="server" Text="材料："></asp:Label><asp:TextBox ID="TextBox3"
                runat="server" Height="20px" Width="220px"></asp:TextBox><br /><br />
            <asp:Label ID="Label4" runat="server" Text="价格："></asp:Label><asp:TextBox ID="TextBox4"
                runat="server" Height="20px" Width="220px"></asp:TextBox><br /><br />
            <%--<asp:Label ID="Label5" runat="server" Text="用途："></asp:Label><asp:TextBox ID="TextBox5"
                runat="server" Height="20px" Width="220px"></asp:TextBox><br /><br />--%>
            <asp:Label ID="Label6" runat="server" Text="花语："></asp:Label>
            <asp:TextBox ID="TextBox6"
                runat="server" Height="20px" Width="220px"></asp:TextBox><br /><br />
            <asp:Label ID="Label7" runat="server" Text="图片："></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="220px" />
            <asp:Button ID="btnShow" runat="server" Text="显示" onclick="btnShow_Click" />
            <br />
            <asp:Image ID="imgGoodsPhoto" runat="server" Height="45px" Width="59px" />
            </asp:Panel>
            <br /><br />
        </div>

     <div style="margin-top:40px">
       
       
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             DeleteCommand="DELETE FROM [Goods] WHERE [编号] = @编号" 
             InsertCommand="INSERT INTO [Goods] ([花名], [材料], [价格], [花语], [图片]) VALUES (@花名, @材料, @价格, @花语, @图片)" 
             SelectCommand="SELECT * FROM [Goods]" 
             
             UpdateCommand="UPDATE [Goods] SET [花名] = @花名, [材料] = @材料, [价格] = @价格, [花语] = @花语, [图片] = @图片 WHERE [编号] = @编号">
             <DeleteParameters>
                 <asp:Parameter Name="编号" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="花名" Type="String" />
                 <asp:Parameter Name="材料" Type="String" />
                 <asp:Parameter Name="价格" Type="Double" />
                 <asp:Parameter Name="花语" Type="String" />
                 <asp:Parameter Name="图片" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="花名" Type="String" />
                 <asp:Parameter Name="材料" Type="String" />
                 <asp:Parameter Name="价格" Type="Double" />
                
                 <asp:Parameter Name="花语" Type="String" />
                 <asp:Parameter Name="图片" Type="String" />
                 <asp:Parameter Name="编号" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
       
      </div>
    </div>
    
    </form>
</body>
</html>
