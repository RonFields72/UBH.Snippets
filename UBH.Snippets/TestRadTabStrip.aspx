<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UBHMaster.Master" CodeBehind="TestRadTabStrip.aspx.vb" Inherits="UBH.VendorManagement.TestRadTabStrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHEAD" runat="server">
    <link rel="Stylesheet" href="Styles/Styles.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMENU" runat="server">
</asp:Content>




<asp:Content ID="Content3" ContentPlaceHolderID="cphCONTENTS" runat="server">
    <script type="text/javascript">
        function RadTabStrip1_ClientTabSelected(sender, eventArgs) 
        {
            var tab = eventArgs.get_tab();
            var frame = $get("tabFrame");
            frame.src = tab.get_value();
        }
    </script>

    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>

<%--    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Skin="Web20" OnClientTabSelected="RadTabStrip1_ClientTabSelected">
        <Tabs>
            <telerik:RadTab Text="Telerik" Value="http://www.telerik.com"></telerik:RadTab>
            <telerik:RadTab Text="Drudge" Value="http://www.drudgereport.com"></telerik:RadTab>
            <telerik:RadTab Text="ASP.NET" Value="http://www.asp.net"></telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>

    <iframe id="tabFrame" width="100%" height="550px">
    </iframe>--%>
    <telerik:RadTabStrip ID="rtsAddVendorWizard" runat="server" SelectedIndex="2" 
        Skin="Windows7" MultiPageID="RadMultiPage1">
        <Tabs>
            <telerik:RadTab runat="server" Text="Name/Address Info" 
                PageViewID="RadPageView1" >
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Tax Information" PageViewID="RadPageView2" Enabled="false">
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Contract Info" PageViewID="RadPageView3" Enabled="false">
            </telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>

    <telerik:RadMultiPage ID="RadMultiPage1" runat="server">
        <telerik:RadPageView ID="RadPageView1" runat="server">
            This is page #1 - Name/Address Info
            <asp:Button ID="btnNext" runat="server" Text="Next" />
        </telerik:RadPageView>
        <telerik:RadPageView ID="RadPageView2" runat="server">
            This is page #2 - Tax stuff
        </telerik:RadPageView>
        <telerik:RadPageView ID="RadPageView3" runat="server">
            This is page #3 - Contract data
        </telerik:RadPageView>
    </telerik:RadMultiPage>

</asp:Content>

