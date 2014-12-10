<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addCardType.aspx.cs" Inherits="addCardType" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 50%;
        height: 10px;
        float: left;
        border: 4px solid #FFFFFF;
        background-color: #FFFFFF;
    }
        .style3
        {
            font-size: medium;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style2">
    <tr>
        <td class="style3">
            卡类别名称：</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            可带的人数：</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            年票卡金额：</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Buttonadd" runat="server" Text="添加" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Buttoncancel" runat="server" Text="取消" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

