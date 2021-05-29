
Partial Class ViewDetails2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Me.Page.Title = TextBox1.Text + " - " + "lokanta_sayfası"


        'Add Keywords Meta Tag.
        Dim keywords As New HtmlMeta()
        keywords.HttpEquiv = "keywords"
        keywords.Name = "keywords"
        keywords.Content = TextBox1.Text
        Me.Page.Header.Controls.Add(keywords)

        'Add Description Meta Tag.
        Dim description As New HtmlMeta()
        description.HttpEquiv = "description"
        description.Name = "description"
        description.Content = TextBox10.Text
        Me.Page.Header.Controls.Add(description)

        'Session("nameAuthor") = TextBox12.Text
        'Session.Timeout = "1440"

    End Sub

    Protected Sub DetailsView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewCommandEventArgs) Handles DetailsView1.ItemCommand
        If (e.CommandName = "Name") Then

            Response.Redirect("author.aspx?id=" + e.CommandArgument.ToString)
        End If
    End Sub
End Class
