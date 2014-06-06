<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="VendorContractInfo.ascx.vb" Inherits="UBH.VendorManagement.VendorContractInfo" %>

<br />
<table>
    <tr>
        <td align="right">
            Default Workers Compensation Option:
        </td>
        <td>
            <telerik:RadComboBox ID="rcboDefaultWC" runat="server"
                Skin="Windows7"
                Width="275px" 
                DataSourceID="ods_WCCertTypes" 
                DataTextField="vctShortName" 
                DataValueField="vctIdentity">
            </telerik:RadComboBox>
            <asp:ObjectDataSource ID="ods_WCCertTypes" runat="server" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="GetWorkersCompCerts" 
                TypeName="UBH.VendorManagement.UBH.VendorManagement.BLL.CertificationBLL">
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td align="right">
            Per Item Contract:
        </td>
        <td>
            <telerik:RadComboBox ID="rcboPerItemContract" runat="server"
                Skin="Windows7"
                Width="100px">
                <Items>
                    <telerik:RadComboBoxItem Text="Yes" Value="Y" />
                    <telerik:RadComboBoxItem Text="No" Value="N" Selected="true" />
                </Items>
            </telerik:RadComboBox>
        </td>
    </tr>
</table>