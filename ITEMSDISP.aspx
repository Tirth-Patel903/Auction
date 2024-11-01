<%@ Page Title="" Language="VB" MasterPageFile="~/Auction.master" AutoEventWireup="false" CodeFile="ITEMSDISP.aspx.vb" Inherits="ITEMSDISP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" 
                DataSourceID="SqlDataSource1">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="photo" HeaderText="photo" 
                        SortExpression="photo" />
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
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [items]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

