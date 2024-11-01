<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 21px;
        text-align: center;
        background-color: #000000;
    }
    .style2
    {
        height: 215px;
        text-align: center;
        background-color: #CCFF99;
    }
    .style3
    {
        width: 128px;
        text-align: center;
    }
    .style4
    {
        width: 73px;
    }
    .style5
    {
        width: 487px;
        height: 263px;
    }
    .style6
    {
        width: 103px;
    }
    .style7
    {
        background-color: #CCFF99;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 252px;">
    <tr>
        <td class="style1">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" 
                style="color: #FFFFFF" Text="Login"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <table class="style5">
                <tr>
                    <td style="text-align: center" class="style4">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Username:"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style4">
                        <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Password:"></asp:Label>
                    </td>
                    <td class="style3" style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            style="color: #FF6600; font-weight: 700" PostBackUrl="~/forget.aspx">forgetPassword</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style4">
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Submit" Width="67px" />
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Reset" />
                    </td>
                    <td class="style6">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </table>
</asp:Content>

