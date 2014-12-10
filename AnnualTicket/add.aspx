<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            font-size: medium;
        }
    </style>
    <link href="assets/css/stylescamera.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
           <table>
               <tr>
                   <td>
                       <div id="camera">
	                        <span class="camTop"></span>
                            <div id="screen"></div>
                            <div id="buttons">
    	                        <div class="buttonPane">
        	                        <a id="shootButton" href="" class="blueButton">拍照</a>
                                </div>
                                <div class="buttonPane hidden">
        	                        <a id="cancelButton" href="" class="blueButton">取消</a> <a id="uploadButton" href="" class="greenButton">确定</a>
                                </div>
                            </div>
                            <span class="settings"></span>
                        </div>
                        
                   </td>
                   <td>
                         <table class="style1">
                             <tr>
                                 <td colspan="2">
                                    <%-- <div id="photos">--%>
                                         <asp:Image ID="ImageHead" runat="server" ImageUrl="~/uploads/original/example.jpg" />
                                        <%-- <asp:ImageButton ID="ImageHead" runat="server" ImageUrl="~/uploads/original/example.jpg" ></asp:ImageButton>--%>
                                    <%-- </div>--%>

                                 </td>
                             </tr>
                            <tr>
                                <td class="style2">
                                    游客卡号：</td>
                                <td class="style2">
                                    <asp:TextBox ID="usernum" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    游客姓名：</td>
                                <td class="style2">
                                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    省份证号：</td>
                                <td class="style2">
                                    <asp:TextBox ID="useridentify" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="style2">
                                <td class="style2">
                                    游客性别：</td>
                                <td class="style3">
                                    <asp:RadioButton ID="usersex1" runat="server"  Text="男" GroupName="sex1" />
                                    <asp:RadioButton ID="usersex2" runat="server" Text="女" GroupName="sex1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    电话号码：</td>
                                <td class="style2">
                                    <asp:TextBox ID="userphone" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    办卡类型：</td>
                                <td class="style2">
                                    <asp:TextBox ID="usertype" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                   
                                <td class="style2">
                                    <asp:Button ID="checkButton" runat="server"  
                                        Text="提交" OnClick="checkButton_Click" />
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button"/>
                                </td>
                                <td>
                                    <asp:TextBox ID="imagetxt" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                          
                        </table>
                   </td>
               </tr>
           </table>

            <script src="assets/js/jquery-1.9.1.min.js"></script>
            <script src="assets/fancybox/jquery.easing-1.3.pack.js"></script>
            <script src="assets/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
            <script src="assets/webcam/webcam.js"></script>
            <script src="assets/js/script.js"></script>
        </div>
      
    </div>
</asp:Content>

