
Partial Class Show_Items
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Session("pname") = GridView1.SelectedRow.Cells(1).Text
        Response.Redirect("Auctionpage.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class
