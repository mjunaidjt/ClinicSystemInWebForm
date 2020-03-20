<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="ClinicSystemInWebForm.Patient.PatientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



    <div id="PatientModal" class="modal fade in">
        <div class="modal-dialog " style="width: 900px;">
            <div class="modal-content">
                <div id="MyModalContent"></div>
            </div>
        </div>
    </div>


    <div class="card-header">
        <div class="title_left">
            <h3>Details</h3>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">


                    <div class="row">

                        <div class="col-md-4 col-sm-4 col-xs-12 profile_left ">
                            <div class="col-md-10 col-sm-5">
                                <div id="crop-avatar">
                                    <!-- Current avatar -->
                                    <asp:Image ID="PatientProfileImg"  CssClass="img-fluid img-thumbnail"  runat="server" ImageUrl="~/content/profile.png" />
                                </div>
                            </div>
                            <h3>Junaid</h3>
                            <ul class="list-unstyled user_data">
                                <li><i class="fa fa-key"><strong>Token:</strong>P001</i></li>
                                <li><i class="fa fa-user"><strong>Sex:</strong>Male</i></li>
                                <li><i class="fa fa-user"><strong>Date of Birth:</strong>13 Feb 1999</i></li>
                                <li><i class="fa fa-user"><strong>Height:</strong>5'5"</i></li>
                                <li><i class="fa fa-user"><strong>Weight:</strong>68 Kg</i></li>
                                <li>
                                    <i class="fa fa-map-marker user-profile-icon"></i><strong>Address:</strong>Ghala Mandhi Sambrial,Sialkot 
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i><strong>Phone:</strong>03367375526 , 03177336448
                                </li>
                                <li class="m-top-xs">
                                    <i class="fa fa-clock-o"></i><strong>Date :</strong> Mar 07 2020  8:16pm
                                </li>
                            </ul>
                            <asp:LinkButton ID="PatientEditLinkButton" runat="server" CssClass="btn btn-success fa fa-edit m-right-xs"> Edit</asp:LinkButton>
                            <br />
                        </div>

                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                            <div class="row no-gutters ">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <span class="card card-header">Appointment</span>
                                    <br />

                                    <asp:HyperLink ID="AppointmentPatientID" runat="server" NavigateUrl="~/Appointments/CreateAppointment.aspx">Patient Appointment <i class="fa fa-plus"></i></asp:HyperLink>
                                    <span class="badge badge-danger">1</span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <span class="card card-header">Attendance </span>
                                    <br />
                                    <asp:HyperLink ID="attendancePatientID" runat="server" NavigateUrl="~/Attendence/CreateAttendence.aspx">Lab Attendance <i class="fa fa-plus"></i></asp:HyperLink>
                                </div>
                            </div>


                        </div>

                    </div>



        </div>
    </div>



</asp:Content>
