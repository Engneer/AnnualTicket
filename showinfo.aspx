<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showinfo.aspx.cs" Inherits="showinfo" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    游客卡号：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    游客姓名：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    省份证号：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="style2">
                <td class="style2">
                    游客性别：</td>
                <td class="style3">
                    <asp:RadioButton ID="RadioButton1" runat="server" 
                       Text="男" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="女" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    电话号码：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    办卡类型：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="PhotoshopButton" runat="server" Text="拍照" />
                </td>
                <td class="style2">
                    <asp:Button ID="checkButton" runat="server"  
                        Text="提交" />
                </td>
            </tr>
        </table>
</asp:Content>

