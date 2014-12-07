<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminManager.aspx.cs" Inherits="adminManager" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 50%;
        height: 10px;
        border: 2px solid #FFFFFF;
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
            用户名称：</td>
        <td>
            <asp:TextBox ID="addname" runat="server" style="text-align: center"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            用户级别：</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px" 
                Width="144px">
                <asp:ListItem>系统人员</asp:ListItem>
                <asp:ListItem Selected="True">办证人员</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Buttonadd" runat="server" Text="添加" />
            <asp:Button ID="Buttoncancel" runat="server" Text="取消" />
        </td>
    </tr>
</table>

</asp:Content>

