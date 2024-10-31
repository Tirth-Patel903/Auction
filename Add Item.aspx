<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="Add Item.aspx.vb" Inherits="Add_Item" title="Untitled Page" %>

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
        width: 642px;
        height: 263px;
    }
    .style13
    {
        width: 230px;
    }
    .style16
    {
        }
    .style17
    {
            width: 264px;
            text-align: center;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 252px;">
    <tr>
        <td class="style1">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" 
                style="color: #FFFFFF" Text="Add Items"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <table class="style5">
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                            Text="Item Name : "></asp:Label>
                    </td>
                    <td class="style17">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Product name must be enter"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                            Text="Item Photo : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="No File Selected"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                            Text="Item Description : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label6" runat="server" style="font-weight: 700" 
                            Text="Category : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                            Text="Starting Bid Prize : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Enter Starting Price For Biding"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label8" runat="server" style="font-weight: 700" 
                            Text="Starting date for Biding : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <br />
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td class="style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="Enter Start Date"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label9" runat="server" style="font-weight: 700" 
                            Text="Ending Date for Biding : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <br />
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                    </td>
                    <td class="style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="Enter End Date"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16">
                        <asp:Label ID="Label10" runat="server" style="font-weight: 700" 
                            Text="Status : "></asp:Label>
                    </td>
                    <td class="style17" style="text-align: center">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Open" />
&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Close" />
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style16" colspan="2">
                        <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                            Text="Submit" />
                        <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Reset" />
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="BID" CausesValidation="False" />
                    &nbsp;
                        <asp:Button ID="Button4" runat="server" Text="SHOW BID" 
                            CausesValidation="False" />
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

