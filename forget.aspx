<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="forget.aspx.vb" Inherits="forget" title="Untitled Page" %>

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
    .style5
    {
        width: 530px;
        height: 263px;
    }
    .style7
    {
        background-color: #CCFF99;
    }
    .style11
    {
        width: 238px;
        text-align: center;
    }
    .style12
    {
        width: 145px;
    }
    .style13
    {
        width: 178px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 252px;">
    <tr>
        <td class="style1">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" 
                style="color: #FFFFFF" Text="Forget Password"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <table class="style5">
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Email ID"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                            Text="New Password"></asp:Label>
                    </td>
                    <td class="style11" style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                            ErrorMessage="password must be same"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                            Text="confirm Password"></asp:Label>
                    </td>
                    <td class="style11" style="text-align: center">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700; height: 26px;" 
                            Text="Submit" />
                    </td>
                    <td class="style11">
                        <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Reset" />
                    </td>
                    <td class="style13">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </table>
</asp:Content>

