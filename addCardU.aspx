<%@ Page Title="�����Ʊ��" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addCardU.aspx.cs" Inherits="addCardU" %>

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
                ��Ƭ:</td>
            <td style="text-align: left">
                <asp:Image ID="Img" runat="server" Height="200px" Width="148px" scr="#" AlternateText="Ԥ��"/>
            </td>
        </tr>
        <tr>
            <td>
                ѡ��:</td>
            <td style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server"  onchange="javascript:showImg(this.value)"  />
            </td>
        </tr>
        <tr>
            <td>
                ����:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                ����:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                �Ա�:</td>
            <td class="style5" style="text-align: left">
                <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="sex" Text="��" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="Ů" />
            </td>
        </tr>
        <tr>
            <td>
                ���֤��:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                �û�����:</td>
            <td style="text-align: left">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="130px">
                    <asp:ListItem>��ͨ</asp:ListItem>
                    <asp:ListItem>��Ա</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                ��ϵ�绰:</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" Text="�ύ" />
            </td>
            <td class="style6" style="text-align: left">
                <asp:Button ID="Button2" runat="server" Text="ȡ��" />
            </td>
        </tr>
    </table>

</asp:Content>

