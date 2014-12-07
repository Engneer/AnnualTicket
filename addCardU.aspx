<%@ Page Title="添加年票卡" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addCardU.aspx.cs" Inherits="addCardU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 50%;
            height: 10px;
            float: left;
            border: 2px solid #FFFFFF;
            background-color: #FFFFFF;
        }
        .style3
        {
            height: 19px;
            text-align: left;
        }
        .style4
        {
            height: 19px;
            text-align: center;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            height: 20px;
        }
    </style>
    <script language="javascript" type="text/javascript">
    function showImg(value)
    {
        var obj = window.document.getElementById("Img");
        obj.src = value;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style2">
        <tr>
            <td>
                照片:</td>
            <td style="text-align: left">
                <asp:Image ID="Img" runat="server" Height="200px" Width="148px" scr="#" AlternateText="预览"/>
            </td>
        </tr>
        <tr>
            <td>
                选择:</td>
            <td style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server"  onchange="javascript:showImg(this.value)"  />
            </td>
        </tr>
        <tr>
            <td>
                卡号:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                姓名:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                性别:</td>
            <td class="style5" style="text-align: left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="51px">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                身份证号:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                用户类型:</td>
            <td style="text-align: left">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="130px">
                    <asp:ListItem>普通</asp:ListItem>
                    <asp:ListItem>会员</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                联系电话:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" Text="提交" />
            </td>
            <td class="style6" style="text-align: left">
                <asp:Button ID="Button2" runat="server" Text="取消" />
            </td>
        </tr>
    </table>

</asp:Content>

