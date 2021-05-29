<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ecommerce.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <br><br>
<body style="background-image: url('https://wallpaperaccess.com/full/2483946.jpg');">
    <form id="form1" runat="server">
        <div>
            <table align="center" style="width: 700px; height: 600px; background-color: #CCCCCC" class="auto-style4">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Registration Form</h2></td>
                    
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; First Name :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="451px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; Last Name :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="451px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; Email :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="451px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>&nbsp;&nbsp; Gender :</b></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="82px" Width="139px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; Address :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="451px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; H/P : </b></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="451px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; Password :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="451px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>&nbsp;&nbsp; Confirm Password :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Height="32px" Width="451px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" CssClass="auto-style2" Font-Bold="True" Font-Size="Large" Height="39px" Width="130px"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
