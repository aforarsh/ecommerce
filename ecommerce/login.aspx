<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ecommerce.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ZHR COMPUTER & NETWORK</title>
    <style type="text/css">
        .auto-style1 {
            width: 538px;
            height: 208px;
        }
        .auto-style2 {
            height: 242px;
        }
    </style>
</head>
    <br><br><br><br><br><br><br>
<body style="background-image: url('https://wallpaperaccess.com/full/2483946.jpg');">
    <form id="form1" runat="server" class="auto-style2">
        <div>
        </div>
            <table align="center" class="auto-style1" style="background-color: #C0C0C0">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Login</h2>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%">
                        <b>Email ID: </b>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="372px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%"><b>Password: </b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="174px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Silver" Font-Bold="True" Font-Size="Medium" Width="88px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
