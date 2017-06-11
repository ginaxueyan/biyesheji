<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Left.ascx.cs" Inherits="Front_Left" %>
<script type="text/javascript" src="../jquery-1.7.1.min.js"></script>
<style type="text/css">
    .LinkButton1,a
    {
        font-size:16px;
        color:#FF00FF;
        text-decoration:none;
        line-height:16px;
        }
    .style1
    {
        height: 29px;
        font-weight:bold;
    }
    .style3
    {
        width: 187px;
        height: 38px;
    }
    #logintable
    {
        height: 250px;
        width: 171px;
    }
    
    
    
    ul li
    {
         list-style-type:none;
         
        }
   ul li a
   {
       font-size:14px;
       height:24px;
       line-height:24px;
       text-decoration:none;
       color:#000;
       }
    ul li a:hover
    {
        color:#FF66CC;
        font-weight:bold;
        }
    #news
    {
        margin-top:8px;
        height:100px;
        overflow:hidden;
        margin-left:-26px;
        }   
    .icon
    {
        margin-right:4px;
        display:inline-block;
        border-width:4px;
        border-style:dashed dashed dashed solid;
        border-color:transparent transparent transparent #FF66CC;
        
        } 
    </style>
    <script type="text/javascript">
        $(function () {
            var $this = $("#news");
            var scrollTimer;
            $this.hover(function () {
                clearInterval(scrollTimer);
            }, function () {
                scrollTimer = setInterval(function () {
                    scrollNews($this);
                }, 2000);
            }).trigger("mouseleave");

            function scrollNews(obj) {
                var $self = obj.find("ul");
                var lineHeight = $self.find("li:first").height();
                $self.animate({
                    "marginTop": -lineHeight + "px"
                }, 600, function () {
                    $self.css({
                        marginTop: 0
                    }).find("li:first").appendTo($self);
                })
            }
        })

    </script>
<table id="logintable" runat="server" border="0" cellpadding="0" 
    cellspacing="0">
    <tr>
        <td style="height: 275px; vertical-align: bottom; background-image: url(../images/index_r1_c2.gif);
            width: 201px; line-height: 8px;" align="center">
            <table border="0" cellpadding="0" cellspacing="0" 
                style="height: 150px; width: 146px;">
                <tr>
                    <td colspan="2" style="vertical-align: bottom; height: 39px;">
                      &nbsp; &nbsp; &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/images/index_r2_c4.gif" />
                    </td>
                </tr>
                <tr></tr>
               <tr>
                    <td>
                        &nbsp; &nbsp; &nbsp;&nbsp; 用户:<asp:TextBox ID="username1" runat="server" ForeColor="Gray"
                            Height="12px" Width="62px" TabIndex="2"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp; &nbsp; &nbsp;&nbsp; 密码:<asp:TextBox ID="txtmima" runat="server" ForeColor="Gray"
                            Height="12px" Width="62px" TabIndex="3" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp; &nbsp; <asp:Button ID="Button1" runat="server" Height="20px" Text="登录" OnClick="Button1_Click"
                            TabIndex="4" />
                        <asp:Button ID="Button2" runat="server" Height="20px" Text="注册" 
                            TabIndex="5" onclick="Button2_Click" /><br /><br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" 
                            runat="server" Height="20px" Text="后台登录" 
                            TabIndex="5" onclick="Button2_Click" PostBackUrl="~/Login.aspx" /><br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [花名], [价格] FROM [Kind]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </td>
    </tr>
</table>
<table id="loginInTbl" cellpadding="2" cellspacing="2" visible="false" runat="server"
    style="width: 173px;border:0px">
   <tr>
        <td style="border-style: none; border-color: inherit; border-width: 0px;" 
            valign="top" align="center" colspan="2" class="style3">
         
            欢迎您:<asp:Label
                ID="usernameLb" runat="server" ForeColor="Red"></asp:Label><br />

          
        </td>
    </tr>
    <tr>
        <td colspan="2">
           <div align="center">
                            
               <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">·个人资料</asp:LinkButton>  </div></td>
    </tr>
    <tr>
        <td colspan="2">
           <div align="center">
                            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">·个人订单</asp:LinkButton></div></td>
    </tr>
</table>
<br /><br />
&nbsp;<img src="../images/gong.gif" style="height: 38px; width: 183px;" />
 <div id="news">
      <ul>
        <li><i class="icon"></i><a href="Newshufu.aspx">鲜花护肤功效</a></li>
        <li><i class="icon"></i><a href="Newsbaoxian.aspx">鲜花保鲜法</a></li>
        <li><i class="icon"></i><a href="Newshuayu.aspx">鲜花寓意 浪漫花语</a></li>
        <li><i class="icon"></i><a href="Newszhishu.aspx">鲜花枝数与其对应的含义</a></li>
        <li><i class="icon"></i><a href="Newsnvshen.aspx">520送什么给女神？</a></li>
        <li><i class="icon"></i><a href="Newskapian.aspx">送女朋友鲜花，送花卡片写什么？</a></li>
      </ul>
    </div>


