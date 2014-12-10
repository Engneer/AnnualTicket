<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checktourists.aspx.cs" Inherits="checktourists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="number" HeaderText="卡号" />
            <asp:BoundField DataField="name" HeaderText="姓名" />
            <asp:BoundField DataField="sex" HeaderText="性别" />
            <asp:BoundField DataField="identify" HeaderText="身份证号" />
            <asp:BoundField DataField="level" HeaderText="级别" />
            <asp:BoundField DataField="phone" HeaderText="电话号码" />
            <asp:BoundField DataField="handletime" HeaderText="办理时间" />
            <asp:ImageField DataImageUrlField="imageurl" HeaderText="头像">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>

