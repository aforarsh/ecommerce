<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WBL.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<body style="background-image: url('https://wallpaperaccess.com/full/2483946.jpg');">
    <div class="navbar" style="border-width: 3px; border-color: #333333; height:auto">
        <br />
        <table style="width: 700px; height:390px; background-color: #5f98f3;" align="center">
            <tr>
                <td align="center" width="50%" colspan="2" class="auto-style1">
                    <h1>Add Payment</h1><hr />
                </td>
            </tr>
            
            <tr>
                <td align="center" width="50%">
                    <h3>Product Total Price(RM):</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Receipt:</h3>
                </td>
                <td width="50%">
                    <asp:FileUpload ID="imageUpload" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Payment Date:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtCalendar" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calendar2.png" ImageAlign="AbsBottom" Height="33px" Width="33px" OnClick="ImageButton1_Click"/>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1" OnDayRender="Calendar1_DayRender" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" Width="350px" NextPrevFormat="FullMonth">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr> 
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" /> 
                </td>
            </tr>
            
        </table><br />
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_latestConnectionString %>" SelectCommand="SELECT * FROM [tb_payment]"></asp:SqlDataSource>
    </div>
</asp:Content>
