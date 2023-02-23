<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="T3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/t4.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>用户登录</h2>
             <ul>
                <li class="login-item"><span>用户名：</span>
                    <asp:TextBox ID="txtUser" runat="server" class="login-input" ></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="请输入用户名！" ForeColor="Red"></asp:RequiredFieldValidator>

                </li>
                <li class="login-item"><span>密码：</span>
                    <asp:TextBox ID="txtPwd" runat="server" class="login-input" TextMode="Password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入密码！" ForeColor="Red"></asp:RequiredFieldValidator>

                </li>
                  <li class="login-item">
                      <asp:CheckBox ID="cbRem" runat="server" text="记住密码"/>
                </li>
                <li class="login-sub">
                    <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                    <input type="reset" name="Reset" value="重置" />
                 </li>
            </ul>
        </div>
    </form>
</body>
</html>
