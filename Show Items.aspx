<%@ Page Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="Show Items.aspx.vb" Inherits="Show_Items" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField ApplyFormatInEditMode="True" DataField="photo" 
                            HeaderText="photo" SortExpression="photo" />
                        <asp:BoundField DataField="idescription" HeaderText="idescription" 
                            SortExpression="idescription" />
                        <asp:BoundField DataField="category" HeaderText="category" 
                            SortExpression="category" />
                        <asp:BoundField DataField="startbiding" HeaderText="startbiding" 
                            SortExpression="startbiding" />
                        <asp:BoundField DataField="startdate" HeaderText="startdate" 
                            SortExpression="startdate" />
                        <asp:BoundField DataField="enddate" HeaderText="enddate" 
                            SortExpression="enddate" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

