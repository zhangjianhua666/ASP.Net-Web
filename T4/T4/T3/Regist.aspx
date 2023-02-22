<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regist.aspx.cs" Inherits="T3.Regist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/t4-2.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>用户注册</h3>
              <ul>
                 
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

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd2" ErrorMessage="请输入密码！" ForeColor="Red"></asp:RequiredFieldValidator>

                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtPwd2" ErrorMessage="两次密码输入不一致" ForeColor="Red"></asp:CompareValidator>

                </li>
                <li class="login-item"><span>电子邮箱：</span>
                    <asp:TextBox ID="TextEml" runat="server" class="login-input" ></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextEml" ErrorMessage="请输入邮箱地址！" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEml" ErrorMessage="请输入正确的邮箱地址" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

                </li>
                 <li class="login-item"><span>年龄：</span>
                    <asp:TextBox ID="aeg" runat="server" class="login-input" ></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="aeg" ErrorMessage="请输入年龄！" ForeColor="Red"></asp:RequiredFieldValidator>

                     <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="请输入正确的年龄！" ForeColor="Red" MaximumValue="200" MinimumValue="0" ControlToValidate="aeg"></asp:RangeValidator>

                </li>
                <li class="login-sub">
                    <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
                    <input type="reset" name="Reset" value="重置" />
                 </li>
            </ul>
        </div>
    </form>
</body>
</html>
