<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="VendorTax.ascx.vb" Inherits="UBH.VendorManagement.VendorTax" %>

<br />
<table>
    <tr>
        <td align="right">Tax ID#:</td>
        <td>
            <telerik:RadTextBox ID="rtbTIN" runat="server"
                Skin="Windows7"
                MaxLength="20"
                Width="100px">
            </telerik:RadTextBox>
            <asp:RequiredFieldValidator ID="rfvTaxID" runat="server" ErrorMessage="Tax ID is required" 
                Text="*"
                ControlToValidate="rtbTIN">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            Send 1099:
        </td>
        <td>
            <telerik:RadComboBox ID="rcboSend1099" runat="server"
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