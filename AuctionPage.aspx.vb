Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration

Partial Class AuctionPage
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    Dim cmd As New SqlCommand
    Dim str As String
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        str = "select startbiding from items where lname=@lname"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@lname", Session("pname").ToString())
        da = New SqlDataAdapter(cmd)
        ds = New DataSet()
        da.Fill(ds)

        Label2.Text = Session("uname").ToString()
        Label3.Text = Session("pname").ToString()
        Label4.Text = ds.Tables(0).Rows(0).Item(0).ToString()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        str = "insert into BidMst values (@uname,@lname,@mbp,@nbp)"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@uname", Label2.Text)
        cmd.Parameters.AddWithValue("@lname", Label3.Text)
        cmd.Parameters.AddWithValue("@mbp", Label4.Text)
        cmd.Parameters.AddWithValue("@nbp", TextBox1.Text)

        cmd.ExecuteNonQuery()
        con.Close()

        Label5.Text = "Bid successfully registered"
    End Sub
End Class
