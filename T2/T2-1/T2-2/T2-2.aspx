﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T2-2.aspx.cs" Inherits="T2_2.T2_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" type="text/css" href="Content/StyleLogin.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <ul>
                 <h3>用户注册</h3>
                <li class="login-item"><span>用户名：</span>
                    <asp:TextBox ID="textUser" runat="server" class="login-input" ></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textUser" ErrorMessage="请输入用户名！" ForeColor="Red"></asp:RequiredFieldValidator>

                </li>
                <li class="login-item"><span>密码：</span>
                    <asp:TextBox ID="txtPwd" runat="server" class="login-input" TextMode="Password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入密码！" ForeColor="Red"></asp:RequiredFieldValidator>

                </li>
                  <li class="login-item"><span>确认密码：</span>
                    <asp:TextBox ID="txtPwd2" runat="server" class="login-input" TextMode="Password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入密码！" ForeColor="Red"></asp:RequiredFieldValidator>

                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" ErrorMessage="两次密码输入不一致" ForeColor="Red"></asp:CompareValidator>

                </li>
                <li class="login-sub">
                    <asp:Button ID="Button1" runat="server" Text="注册" />
                    <input type="reset" name="Reset" value="重置" />
                 </li>
            </ul>
        </div>
    </form>
</body>
</html>
