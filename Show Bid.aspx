<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="Show Bid.aspx.vb" Inherits="Show_Bid" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 331px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center">
                <table align="center" class="style1">
                    <tr>
                        <td>
                            Select Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="iname" DataValueField="iname">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [SRNO] FROM [BidMst]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="SHOW" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" CellSpacing="2" 
                                DataSourceID="SqlDataSource2" AllowSorting="True">
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <Columns>
                                    <asp:BoundField DataField="SRNO" HeaderText="SRNO" SortExpression="SRNO" />
                                    <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                                    <asp:BoundField DataField="mbprice" HeaderText="mbprice" 
                                        SortExpression="mbprice" />
                                    <asp:BoundField DataField="Nbprice" HeaderText="Nbprice" 
                                        SortExpression="Nbprice" />
                                </Columns>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [BidMst]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

