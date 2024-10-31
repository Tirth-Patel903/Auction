<%@ Page Title="" Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="AuctionPage.aspx.vb" Inherits="AuctionPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
    }
    .style3
    {
        width: 6px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="right" class="style1">
        <tr>
            <td align="center" >
                <table border="1" class="style1" style="width: auto; height: auto">
                    <tr>
                        <td class="style2" colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="AUCTION "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            USER NAME&nbsp;</td>
                        <td class="style3">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            PRODUCT NAME</td>
                        <td class="style3">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            MINIMUM BID PRICE</td>
                        <td class="style3">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            NEW BID PRICE</td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="submit" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="2">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

