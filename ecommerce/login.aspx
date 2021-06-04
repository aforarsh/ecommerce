<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ecommerce.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ZHR Computer & Services</title>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style3 {
            height: 314px;
            width: 605px;
        }
        .auto-style4 {
            width: 343px;
        }
    </style>
</head>
<body style="background-image: url('https://wallpaperaccess.com/full/2483946.jpg');>
    <form id="form1" runat="server">
        <div>
            <br><br><br><br><br><br><br><br>
            <table align="center" class="auto-style3" style="background-color: #C0C0C0;">
                <tr>
                    <td colspan="2" align="center"><h2>Login</h2></td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center"><b>Email : </b></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="23px" TextMode="Email" Width="328px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" align="center"><b>Password : </b></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" Width="173px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Height="44px" Text="login" Width="117px" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
