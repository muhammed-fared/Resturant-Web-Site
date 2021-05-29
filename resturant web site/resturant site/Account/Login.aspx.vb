
Imports System.Data.SqlClient

Partial Class Account_Login
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=SQL7002.site4now.net;Initial Catalog=DB_A41227_rrDB;User Id=DB_A41227_rrDB_admin;Password=najla123;")
    Dim cmd As New SqlCommand

    Dim name As String
    Dim pass As String
    Public Property UserName As Object
    Public Property Password As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
    End Sub


    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)



        Try


            cmd.CommandType = System.Data.CommandType.Text
            cmd.CommandText = "Insert Into login  IDlogin, usernam, passwords values ('" + name + "','" + pass + "')"
            cmd.ExecuteNonQuery()
        Catch ex As Exception


        End Try

    End Sub

    Protected Sub LoginButton_Click1(sender As Object, e As EventArgs)
        Response.Redirect("~/lokanta_sayfasi.aspx")
    End Sub
End Class