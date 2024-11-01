Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    Dim cmd As New SqlCommand
    Dim str As String
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Dim dr As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        cmd = New SqlCommand("select * from reg where uname='" + TextBox1.Text + "'and password='" + TextBox2.Text + "' ", con)
        dr = cmd.ExecuteReader
        If dr.Read() Then
            Session("address") = dr.Item(5).ToString
            Dim a As String = ""
            MsgBox("welcome")
            dr.Close()
            Session("uname") = TextBox1.Text
            Response.Redirect("add item.aspx")
        Else
            MsgBox("invalid")
        End If
        con.Close()
    End Sub
End Class
