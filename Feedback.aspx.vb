Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration

Partial Class Feedback
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    Dim cmd As New SqlCommand
    Dim str As String
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        str = "insert into feedback values (@name,@emailid,@contactno,@subject,@message)"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@name", TextBox1.Text)
        cmd.Parameters.AddWithValue("@emailid", TextBox2.Text)
        cmd.Parameters.AddWithValue("@contactno", TextBox3.Text)
        cmd.Parameters.AddWithValue("@subject", TextBox4.Text)
        cmd.Parameters.AddWithValue("@message", TextBox5.Text)

        Label5.Text = "Feedback Is Sucessfully"
        cmd.ExecuteNonQuery()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""

    End Sub

    Protected Sub TextBox5_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox5.TextChanged

    End Sub
End Class
