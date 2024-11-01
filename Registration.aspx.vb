Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration

Partial Class Registration
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

        str = "insert into reg values (@fname,@lname,@gender,@address,@country,@state,@city,@uname,@password,@emailid,@contact)"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@fname", TextBox1.Text)
        cmd.Parameters.AddWithValue("@lname", TextBox2.Text)
        Dim gen As String = ""
        If RadioButton1.Checked = True Then
            gen = "Male"
        ElseIf RadioButton2.Checked = True Then
            gen = "Female"
        End If
        cmd.Parameters.AddWithValue("@gender", gen)
        cmd.Parameters.AddWithValue("@address", TextBox3.Text)
        cmd.Parameters.AddWithValue("@country", TextBox4.Text)
        cmd.Parameters.AddWithValue("@state", TextBox5.Text)
        cmd.Parameters.AddWithValue("@city", TextBox6.Text)
        cmd.Parameters.AddWithValue("@uname", TextBox7.Text)
        cmd.Parameters.AddWithValue("@password", TextBox8.Text)
        cmd.Parameters.AddWithValue("@emailid", TextBox10.Text)
        cmd.Parameters.AddWithValue("@contact", BID.Text)

        Label14.Text = "Registration Is Sucessfully"
        cmd.ExecuteNonQuery()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox10.Text = ""
        BID.Text = ""
    End Sub

  
End Class
