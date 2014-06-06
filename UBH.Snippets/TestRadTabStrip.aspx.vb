Public Class TestRadTabStrip
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnNext_Click(sender As Object, e As EventArgs) Handles btnNext.Click
        rtsAddVendorWizard.Tabs.FindTabByText("Tax Information").Enabled = True
        rtsAddVendorWizard.Tabs.FindTabByText("Tax Information").Selected = True
    End Sub
End Class