﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DoctorIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Doctor.DoctorIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card-title">
                <h3>Doctors</h3>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="card-body">

                    <asp:Table ID="DoctorTable" runat="server" CssClass="data table table-striped table-responsive-sm  no-margin">
                        <asp:TableRow ID="doctortheaderRow" runat="server">
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Doctor ID ">Doctor ID</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Name of Patient">Name</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Name of Patient">Phone</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Doctor Specialization">Specialization</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Availablity Status">Status</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Account Status">Account  Status</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Add new Doctor">
                                <asp:LinkButton ID="AddNewDoctor" PostBackUr="RegisterDoctor Account" runat="server" CssClass="btn btn-primary btn-sm">
                                <i class="fa fa-edit"></i>Add
                                </asp:LinkButton>
                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="AppointmentDateRow" runat="server">


                            <asp:TableCell runat="server" ToolTip="Doctor ID "> CDR001</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Name of Patient">DR XYZ</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Name of Patient">0xxxxxxxxxxx</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Doctor Specialization">MBBS</asp:TableCell>

                            <asp:TableCell runat="server" ToolTip="Availablity Status">


                                <asp:HyperLink ID="DrStatusHyperlinkA" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: green" CssClass="badge" readonly runat="server">Available</asp:HyperLink>

                                &nbsp

                                <asp:HyperLink ID="DrStatusHyperlinkC" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: red" CssClass="badge" readonly runat="server">Closed</asp:HyperLink>


                            </asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Account Status">

                                <asp:HyperLink ID="DrAccStatusHyperlinkA" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: green" CssClass="badge" readonly runat="server">Active</asp:HyperLink>

                                &nbsp

                                <asp:HyperLink ID="DrAccStatusHyperlinkL" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: red" CssClass="badge" readonly runat="server">Locked</asp:HyperLink>



                            </asp:TableCell>

                            <asp:TableCell runat="server" ToolTip="Doctor Profile Details">
                                <asp:LinkButton ID="EditAppointmentLB" PostBackUrl="#" runat="server" CssClass="btn btn-default btn-sm"><i class="fa fa-folder"></i>Details</asp:LinkButton>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                </div>
            </div>
        </div>





    </div>


</asp:Content>
