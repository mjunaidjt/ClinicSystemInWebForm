<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="ClinicSystemInWebForm.Appointments.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">

            <div class="card">
                <div class="card-body form-horizontal">


                    <div class="form-group">
                        <asp:Label ID="EditAppointmentL" runat="server" Text="Doctor" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:DropDownList ID="EditAppointmentDrList" runat="server" CssClass="form-control col-md-7 col-xs-12">
                                <asp:ListItem>Muhammad Junaid</asp:ListItem>
                                <asp:ListItem>Umme Habiba</asp:ListItem>
                                <asp:ListItem Selected="True">Select One</asp:ListItem>
                            </asp:DropDownList>
                            <%--         <asp:RequiredFieldValidator ID="AppointmentDoctorList_Validator" runat="server" ControlToValidate="AppointmentDoctorList" ErrorMessage="Required"   
                               ForeColor="Red" CssClass="form-control"></asp:RequiredFieldValidator>--%>
                            <%--</div>--%>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="EditAppointmentDateL" runat="server" Text="Date" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="EditAppointmentDateTB" runat="server" CssClass="form-control col-md-7 col-xs-12 date" ToolTip="Enter the date of appoinment here">Enter Date</asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="AppointmentDateValidator" runat="server" ControlToValidate="EditAppointmentDateTB" ErrorMessage="Required"   
                              ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="EditAppointmentTimeL" runat="server" Text="Time" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="EditAppointmentTimeTB" runat="server" CssClass="form-control col-md-7 col-xs-12 time" ToolTip="Enter the Time of Appointment here">Enter time here</asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="AppointmentTimeValidator" runat="server" ControlToValidate="EditAppointmentTimeTB" ErrorMessage="Required"   
                               ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="EditAppointmentDetailsL" runat="server" Text="Details" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="EditAppointmentDetailsTB" runat="server" CssClass="form-control col-md-7 col-xs-12 " ToolTip="Enter the Details of Appointment here">Enter Appoinment Details</asp:TextBox>
                            <%--          <asp:RequiredFieldValidator ID="AppointmentDetails_Validator" runat="server" ControlToValidate="EditAppointmentDetailsTB" ErrorMessage="Required"   
                               ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="EditAppointmentStatusL" runat="server" Text="Status" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>

                        <div class="col-md-6 col-sm-6 col-xs-12">

                            <asp:RadioButtonList ID="AppointmentStatusR" CssClass="custom-radio" runat="server">
                                <asp:ListItem>Approved</asp:ListItem>
                                <asp:ListItem>Pending</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                    </div>
                
                    <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-4">
                        <asp:HyperLink ID="EditAppointmentBack_Button" runat="server" CssClass="btn btn-default" NavigateUrl="~/Appointments/AppointmentIndex.aspx" ToolTip="Go Back to Patient">Back</asp:HyperLink>
                        <asp:Button ID="EASubmit" CssClass="btn btn-success" runat="server" Text="Save" />
                    </div>
                </div>

            </div>
            </div>
        </div>

    </div>


</asp:Content>
