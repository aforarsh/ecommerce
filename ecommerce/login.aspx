<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ecommerce.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ZHR COMPUTER & NETWORK</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2" align="center">
                        <h2>Login</h2>
                    </td>
                </tr>
                <tr>
                    <td><b>Email ID: </b></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="302px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><b>Password: </b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="302px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
