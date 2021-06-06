<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecommerce.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        
    </table>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_ID" DataSourceID="SqlDataSource1" Height="293px" Width="310px"  RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:#B8860B;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>' Font-Bold="True" Font-Names="Open Sans Extrabold" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="279px" Width="278px" ImageUrl='<%# Eval("Product_Img") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#B8860B;">
                        <asp:Label ID="Label2" runat="server" Text="Price RM" Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Price") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/img/addcart.png" Width="161px" CommandArgument='<%# Eval("Product_ID") %>' CommandName="AddToCart"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString2 %>" SelectCommand="SELECT [Product_ID], [Product_Name], [Product_Price], [Product_Img] FROM [tb_product]"></asp:SqlDataSource>
    
</asp:Content>