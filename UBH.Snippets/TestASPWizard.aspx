<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UBHMaster.Master" CodeBehind="TestASPWizard.aspx.vb" Inherits="UBH.VendorManagement.TestASPWizard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHEAD" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMENU" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="cphCONTENTS" runat="server">
    
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>

    <h3>UBH New Vendor Wizard</h3>

    <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" 
        BorderColor="#B5C7DE" BorderWidth="1px" 
        Font-Names="Segoe UI, Helvetica Nueue" Font-Size="0.8em" Height="400px" 
        Width="750px">
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Segoe UI, Helvetica Nueue" Font-Size="0.8em" 
            ForeColor="#284E98"  />
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Segoe UI, Helvetica Nueue" 
            ForeColor="White" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1" StepType="Start" >
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
            </asp:WizardStep>
            <asp:WizardStep runat="server" StepType="Finish" Title="Save Vendor">
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>

