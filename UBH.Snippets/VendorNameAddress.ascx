<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="VendorNameAddress.ascx.vb" Inherits="UBH.VendorManagement.VendorNameAddress" %>

<br />
<table>
    <tr>
        <td align="right">Name:</td>
        <td>
            <telerik:RadTextBox ID="rtbVendorName" runat="server"
                Width="275px"
                Skin="Windows7">
            </telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Vendor Name is required" 
                Text="*"
                ControlToValidate="rtbVendorName">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">Address 1:</td>
        <td>
            <telerik:RadTextBox ID="rtbVendorAddress1" runat="server"
                Width="275px"
                Skin="Windows7">
            </telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" ErrorMessage="Vendor Address 1 is required" 
                Text="*"
                ControlToValidate="rtbVendorAddress1">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">Address 2:</td>
        <td>
            <telerik:RadTextBox ID="rtbVendorAddress2" runat="server"
                Width="275px"
                Skin="Windows7">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td align="right">City:</td>
        <td>
            <telerik:RadTextBox ID="rtbVendorCity" runat="server"
                Width="275px"
                Skin="Windows7">
            </telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Vendor City is required" 
                Text="*"
                ControlToValidate="rtbVendorCity">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">State:</td>
        <td>
            <telerik:RadComboBox ID="rcboVendorState" runat="server"
                Width="100px"
                Skin="Windows7"
                DataSourceID="odsStateAbbrevList" 
                DataTextField="umStateAbbrev" 
                DataValueField="umStateAbbrev">
            </telerik:RadComboBox>
            <asp:ObjectDataSource ID="odsStateAbbrevList" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="GetStates" 
                TypeName="UBH.VendorManagement.UBH.VendorManagement.BLL.UBHMasterBLL">
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td align="right">ZIP/Postal:</td>
        <td>
            <telerik:RadTextBox ID="rtbVendorZIP" runat="server"
                Skin="Windows7"
                Width="100px">
            </telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="rfvZIP" runat="server" ErrorMessage="Vendor ZIP is required" 
                Text="*"
                ControlToValidate="rtbVendorZIP">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            Phone:
        </td>
        <td>
            <telerik:RadMaskedTextBox ID="rmtbVendorPhone" runat="server"
                Skin="Windows7"
                Width="100px"
                Mask="(###) ###-####">
            </telerik:RadMaskedTextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Fax:
        </td>
        <td>
            <telerik:RadMaskedTextBox ID="rmtbVendorFax" runat="server"
                Skin="Windows7"
                Width="100px"
                Mask="(###) ###-####">
            </telerik:RadMaskedTextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Email:
        </td>
        <td>
            <telerik:RadTextBox ID="rtbVendorEmail" runat="server"
                Skin="Windows7"
                Width="275px">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

<asp:ValidationSummary ID="vsValidations" runat="server" DisplayMode="BulletList" Font-Italic="true"/>

<table>
    <tr>
        <td class="nextButtonContainer">
            <telerik:RadButton ID="rbtnNext" runat="server" Text="Next" Skin="Windows7">
            </telerik:RadButton>
        </td>
    </tr>
</table>