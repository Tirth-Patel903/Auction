<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" title="Untitled Page" %>

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
    .style12
    {
        width: 145px;
    }
    .style11
    {
        width: 238px;
        text-align: center;
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
                style="color: #FFFFFF" Text="Feedback"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <table class="style5">
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Name : "></asp:Label>
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
                            Text="Email id : "></asp:Label>
                    </td>
                    <td class="style11" style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                            Text="Contact No. : "></asp:Label>
                    </td>
                    <td class="style11" style="text-align: center">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label6" runat="server" style="font-weight: 700" 
                            Text="Subject : "></asp:Label>
                    </td>
                    <td class="style11" style="text-align: center">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                            Text="Message : "></asp:Label>
                    </td>
                    <td class="style11" style="text-align: center">
                        <asp:TextBox ID="TextBox5" runat="server" style="margin-bottom: 0px" 
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style12">
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
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

