﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CreateAppointment.aspx.cs" Inherits="ClinicSystemInWebForm.Appointments.CreateAppointment" %>
<asp:Content ID="CreateAppointmentHID" ContentPlaceHolderID="head" runat="server">
    <title>appointment/create</title>
</asp:Content>

<asp:Content ID="CreateAppointmentBID" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-6 col-xs-12">
            <div class="x_panel card">
                                    
                <span class="section card-header font-weight-bold">Doctor Information</span>

                <div class="x_content card-body">
 
                    <br />
                   
                    <div class="form-group">
                        <asp:Label ID="AppointmentDoctorLabel" runat="server" Text="Doctor" CssClass="control-label col-md-2 col-sm-2 col-xs-12"></asp:Label>
                           <asp:DropDownList ID="AppointmentDoctorList" runat="server" CssClass="form-control  col-md-9 col-sm-9 col-xs-12">
                               <asp:ListItem Selected="True">Select Doctor</asp:ListItem>
                            
                            </asp:DropDownList>
                                    <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="AppointmentDoctorList_Validator" runat="server" ControlToValidate="AppointmentDoctorList" InitialValue="Select Doctor"  ErrorMessage="Required"   
                               ForeColor="Red" CssClass="form-control"></asp:RequiredFieldValidator>
                        <%--</div>--%>
                    </div>

                </div>
            </div>
            <br />
            <div class="x_panel card">
                <div class="card-header">
                    <span class="font-weight-bold"> Patient Appointments </span> 
                </div>
                <div class="x_content card-body">
                    <div id="divPatientAppointments" class="">
                   
            
                 <div class="table-responsive">

                   <asp:GridView ID="patientAppointmentGrid"  runat="server" Width="100%" CssClass="table table-striped table-bordered " AutoGenerateColumns="false" DataKeyNames="appoinment_ID">                       
                        <Columns>

                            <asp:BoundField DataField="patient_Name" HeaderText="Patient" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="appointment_Date" HeaderText="Date Time" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Name" HeaderText="Appointed Dr" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="appoinment_Details" HeaderText="Details"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            
                        </Columns>
                        
                    </asp:GridView>

                </div>


                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-xs-12 ">
            <div class="x_panel card">
               
                <span class="section card-header font-weight-bold"> Appointment </span>
               
                <div class="x_content card-body">

                    <br />
                    <div class="form-group">
                           <asp:Label ID="AppointmentDateLabel" runat="server" Text="Date" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                           <asp:TextBox ID="AppointmentDateTextBox" runat="server" CssClass="form-control date" ToolTip="Enter the date of appoinment here" TextMode="Date"></asp:TextBox>
                                    <%--RequiredFieldValidator--%>                          
                            <asp:RequiredFieldValidator ID="AppointmentDateValidator" runat="server" ControlToValidate="AppointmentDateTextBox" ErrorMessage="Required"   
                              ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="AppointmentTimeLabel" runat="server" Text="Time" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <asp:TextBox ID="AppointmentTimeTextBox" runat="server" CssClass="form-control" ToolTip="Enter the Time of Appointment here"  TextMode="Time"></asp:TextBox>
                                    <%--RequiredFieldValidator--%>                         
                            <asp:RequiredFieldValidator ID="AppointmentTimeValidator" runat="server" ControlToValidate="AppointmentDetailsTextBox" ErrorMessage="Required"   
                               ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>              
                    <div class="form-group">
                         <asp:Label ID="AppointmentDetailsLabel" runat="server" Text="Details" CssClass="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <asp:TextBox ID="AppointmentDetailsTextBox" runat="server" CssClass="form-control" ToolTip="Enter the Details of Appointment here" ></asp:TextBox>
                                    <%--RequiredFieldValidator--%>                           
                            <asp:requiredfieldvalidator id="appointmentdetails_validator" runat="server" controltovalidate="AppointmentDetailsTextBox" errormessage="required"   
                               forecolor="red"></asp:requiredfieldvalidator>
                        </div>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-6">
                           <asp:HyperLink ID="AppointmentBack_Button" runat="server" CssClass="btn btn-primary" NavigateUrl="~/Patient/PatientIndex.aspx" ToolTip="Go Back to Patient">Back</asp:HyperLink>
                           <asp:Button ID="SaveAppointment" runat="server"  CssClass="btn btn-success" Text="Save" OnClick="SaveAppointment_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>
