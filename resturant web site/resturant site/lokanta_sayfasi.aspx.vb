
Partial Class Rewayat2
    Inherits System.Web.UI.Page

    Protected Sub ListView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewCommandEventArgs) Handles ListView1.ItemCommand
        If (e.CommandName = "Save") Then

            Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString)
        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (TextBox1.Text <> "") Then
            ListView1.DataSourceID = Nothing
            ListView1.DataSource = SqlDataSource2
            ListView1.DataBind()


        End If
        If (ListView1.Items.Count = 0) Then


        End If
    End Sub

    Protected Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
