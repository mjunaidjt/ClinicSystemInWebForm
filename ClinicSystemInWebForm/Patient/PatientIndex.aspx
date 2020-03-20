<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PatientIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Patient.PatientIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

       <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card-title">
                <h3>Patients</h3>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="card-body">


                    <asp:Table ID="PatientDataTable" runat="server" CssClass="data table table-striped table-responsive-sm no-margin">
                        <asp:TableRow ID="PatientheaderRow" runat="server">
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Token/ID of Patient">Token ID</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Name of Patient">Name</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Phone Number of Patient">Phone</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Address of Patient">Address</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="City of Patient">City</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Add New Patient ">
                            <asp:LinkButton ID="AddNewPatient" runat="server" CssClass="btn btn-primary btn-sm" PostBackUrl="~/Patient/PatientForm.aspx"><i class="fa fa-edit"></i>Add</asp:LinkButton>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="PatientDateRows" runat="server">

                            <asp:TableCell runat="server" ToolTip="Token/ID of Patient">P0001</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Name of Patient">Dummy Name</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Phone Number of Patient">0000-0000000</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Address of Patient">Dummy Address</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="City of Patient">City</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="PatientControls">

                            <asp:LinkButton ID="DetailsPatient" runat="server" ToolTip="Patient Detail Info"  ForeColor="black" PostBackUrl="~/Patient/PatientDetails.aspx"><i class="fa fa-info"></i></asp:LinkButton>
                             &nbsp
                            <asp:LinkButton ID="DeletePatient" runat="server" ToolTip="Delete Patient"  ForeColor="red" PostBackUrl="#"><i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>


                            </asp:TableCell>

                        </asp:TableRow>
                    </asp:Table>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
