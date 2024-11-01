<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 31px;
    }
    .style2
    {
        background-color: #CCFF66;
    }
        .style3
        {
        }
        .style5
        {
            width: 768px;
            height: 298px;
        }
        .style6
        {
            width: 148px;
        }
        .style7
        {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 281px; text-align: center;" align="center">
    <tr>
        <td class="style1" style="text-align: center; background-color: #000000">
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" 
                Text="REGISTRATION"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2" valign="top">
            <table align="center" class="style5">
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label2" runat="server" style="text-align: center" 
                            Text="First Name : "></asp:Label>
                    </td>
                    <td class="style7" style="text-align: center">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="First name must be enter"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label3" runat="server" Text="Last Name : "></asp:Label>
                    </td>
                    <td class="style7" style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Last name must be enter"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label4" runat="server" Text="Gender : "></asp:Label>
                    </td>
                    <td class="style7" style="text-align: center">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label5" runat="server" Text="Address : "></asp:Label>
                    </td>
                    <td class="style7" style="text-align: center">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Address must be enter"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label6" runat="server" Text="Country : "></asp:Label>
                    </td>
                    <td class="style7" style="text-align: center">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label7" runat="server" Text="State : "></asp:Label>
                    </td>
                    <td class="style7" style="text-align: center">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label8" runat="server" Text="City : "></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label9" runat="server" Text="Username : "></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="Username must be enter"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label10" runat="server" Text="Password : "></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox8" ControlToValidate="TextBox9" 
                            ErrorMessage="Password must be same"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label11" runat="server" Text="Confrim Password : "></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label12" runat="server" Text="Email id : "></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label13" runat="server" Text="Contact No. : "></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="BID" runat="server"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style6">
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

