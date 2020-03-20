<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="ClinicSystemInWebForm.Doctor.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="card-header">
                    <h3>Edit Doctor</h3>
                </div>

                <div class="card-body">
                    <div class="form-horizontal form-label-left">

                        <p class="fa-bold">Doctor ID: DR001</p>

                        <div class="form-group">
                            <asp:Label ID="DoctorNameLabel" runat="server" CssClass="control-label col-sm-3 col-xs-12">Name</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="DoctorNameTB" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="DoctorSpecializationL" runat="server" CssClass="control-label col-sm-3 col-xs-12">Specialization</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="DoctorSpecializationTB" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="DoctorPhoneL" runat="server" CssClass="control-label col-sm-3 col-xs-12">Specialization</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="DoctorPhoneTB" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="DoctorAddressL" runat="server" CssClass="control-label col-sm-3 col-xs-12">Address</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="DoctorAdressTB" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="DrStatusL" runat="server" CssClass="control-label col-sm-3 col-xs-12">Status</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="custom-radio">

                                    <asp:Label ID="AvailableL" runat="server" CssClass="control-label col-sm-3 col-xs-12">
                                        <asp:RadioButton ID="RadioAvailable" runat="server" /> Available
                                    </asp:Label>
                                    <asp:Label ID="ClosedL" runat="server" CssClass="control-label col-sm-3 col-xs-12">
                                        <asp:RadioButton ID="RadioClosed" runat="server" /> Closed
                                    </asp:Label>

                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-4">
                                <asp:LinkButton ID="DrDetailBackLB" PostBackUrl="detail of doctor" runat="server" CssClass="btn btn-default">Back</asp:LinkButton>
                                 &nbsp
                                <asp:Button ID="DrSave" runat="server" Text="Save" CssClass="btn btn-success" />
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
