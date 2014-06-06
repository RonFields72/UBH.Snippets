Imports Telerik.Web.UI

Public Class VendorNameAddress
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub rbtnNext_Click(sender As Object, e As EventArgs) Handles rbtnNext.Click
        GoToNextTab()
    End Sub

    Private Sub GoToNextTab()
        Dim tabStrip As New RadTabStrip
        tabStrip = Page.FindControl("RadTabStrip1")
        Dim taxInfoTab As New RadTab
        taxInfoTab = tabStrip.FindTabByText("Tax Info")
        taxInfoTab.Enabled = True
        taxInfoTab.Selected = True

        GoToNextPageView()
    End Sub
  
    Private Sub GoToNextPageView()
        Dim multiPage As RadMultiPage = Page.FindControl("RadMultiPage1")
        Dim taxInfoPageView As RadPageView = multiPage.FindPageViewByID("TaxInfo")
        If taxInfoPageView Is Nothing Then
            taxInfoPageView = New RadPageView()
            taxInfoPageView.ID = "TaxInfo"
            multiPage.PageViews.Add(taxInfoPageView)
        End If
        taxInfoPageView.Selected = True
    End Sub
End Class