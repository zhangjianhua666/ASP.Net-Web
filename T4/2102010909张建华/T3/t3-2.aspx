<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="t3-2.aspx.cs" Inherits="T3.t3_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/logoin.css" rel="stylesheet" type="text/css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="logo">头像上传</div>
    <div class="logoin_from">
        <ul>
            <li class="logoin-item"> 
                <span>选择头像：</span>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </li>
             <li class="logoin-sub"> 

                 <asp:Button ID="butOk" runat="server" Text="上传" OnClick="butOk_Click1" Width="132px" />

             </li>
             <li class="logoin-item"> 

                 <asp:Label ID="ibiMessage" runat="server" Text="" ForeColor="#cc0000"></asp:Label>

             </li>
             <li class="logoin-item"> 

                 <asp:ImageButton ID="ImageUser" Width="60px" Height="60px" runat="server" title="" OnClick="ImageUser_Click" />
                 <asp:ImageButton ID="ImageButton1" runat="server" Width="60px" Height="60px" title=""/>
             </li>
        </ul>
    </div>
    <link href="Content/StyleSheet1.css" rel="stylesheet" type="text/css"/>
</asp:Content>
