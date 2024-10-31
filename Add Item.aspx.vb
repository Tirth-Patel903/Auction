Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Partial Class Add_Item
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    Dim cmd As New SqlCommand
    Dim str As String
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim st1, st2 As String
        st2 = ""
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        If FileUpload1.HasFile = True Then
            st1 = Server.MapPath("image")
            st1 = st1 + "//" + FileUpload1.FileName
            FileUpload1.SaveAs(st1)

            st2 = "image//" + FileUpload1.FileName
        End If
        str = "insert into items values(@photo,@idescription,@category,@startbiding,@startdate,@enddate,@status,@lname)"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@lname", TextBox1.Text)
        cmd.Parameters.AddWithValue("@photo", st2)
        cmd.Parameters.AddWithValue("@idescription", TextBox3.Text)
        cmd.Parameters.AddWithValue("@category", TextBox4.Text)
        cmd.Parameters.AddWithValue("@startbiding", TextBox5.Text)
        cmd.Parameters.AddWithValue("@startdate", CDate(TextBox6.Text))
        cmd.Parameters.AddWithValue("@enddate", CDate(TextBox7.Text))
        Dim status As String = ""
        If RadioButton1.Checked = True Then
            status = "Open"
        ElseIf RadioButton2.Checked = True Then
            status = "Close"
        End If
        cmd.Parameters.AddWithValue("@status", status)

        Label5.Text = "Item Is Sucessfully Run"
        cmd.ExecuteNonQuery()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("show Items.aspx")
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Show Bid.aspx")
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox6.Text = Calendar1.SelectedDate
    End Sub

    Protected Sub Calendar2_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar2.SelectionChanged
        TextBox7.Text = Calendar2.SelectedDate
    End Sub
End Class
