<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="del3.aspx.cs" Inherits="del3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 按名字查询：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="search" runat="server" Text="查询" onclick="search_Click" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False"  
        Width=773px  OnPageIndexChanging="GridView1_PageIndexChanging" OnRowEditing="GridView1_RowEditing"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowUpdating="GridView1_RowUpdating"
        OnRowDeleting="GridView1_RowDeleting" 
        PageSize="2" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
        BorderWidth="1px" CellPadding="4" >
        <RowStyle BackColor="White" ForeColor="#003399" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="编号" />
            <asp:BoundField DataField="name" HeaderText="姓名" />
            <asp:BoundField DataField="level" HeaderText="级别" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
</asp:Content>

