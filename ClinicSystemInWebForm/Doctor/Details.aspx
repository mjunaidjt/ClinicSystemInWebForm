<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="ClinicSystemInWebForm.Doctor.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="card-title">
                <h2 class="card-header">Profile </h2>
<%--                <ul class="nav navbar-right panel_toolbox">
                    <li>
                       
                        <a href="@Url.Action("Edit","Doctors", new{id =Model.Doctor.Id})" class="btn-link"><i class="fa fa-edit m-right-xs"></i>Edit</a>
                    </li>
                </ul>--%>
         
            </div>
            <div class="card-body">
                <div class="col-md-4 col-sm-4 col-xs-12 profile_left">
                    <div class="col-md-10 col-sm-6">
                        <div id="crop-avatar">
                            <asp:Image ID="DoctorProfileImg"  CssClass="img-fluid img-thumbnail"  runat="server" ImageUrl="~/content/profile.png" />
                        </div>
                    </div>
                      <asp:FormView ID="SelectedDoctorDetail" runat="server" >
                                  <ItemTemplate>
                    <h3><%#Eval("doctor_Name")%></h3>
                    <ul class="list-unstyled user_data">
                        <li>
                            <i class="fa fa-briefcase user-profile-icon">  <%#Eval("doctor_Specialization")%></i> 
                        </li>
                        <li>
                            <i class="fa fa-map-marker user-profile-icon"></i> ABC Street , XYZ City   
                        </li>
                        <li>
                            <i class="fa fa-phone"></i>   <%#Eval("doctor_Phone")%>
                        </li>
                        <li><i class="fa fa-inbox"></i>  <%#Eval("doctor_Email")%></li>

                    </ul>
                    <!-- start skills -->

                   <asp:HyperLink ID="DrPAvailable" style="padding: 3px 10px 3px 10px; background-color:green; color:white; " class="badge" readonly runat="server">Available</asp:HyperLink>
                         
                         <%--<asp:HyperLink ID="HyperLink1" style="padding: 3px 10px 3px 10px; background-color:red; color:white; " class="badge" readonly runat="server">Closed</asp:HyperLink>--%>
                
                    <!-- end of skills -->
                       </ItemTemplate>
                          </asp:FormView>

                </div>
                <div class="col-md-8 col-sm-8 col-xs-12">
                        
                   <div class="table-responsive">

                <asp:GridView ID="DrAppointmentGrid"  runat="server" Width="100%" CssClass="table table-striped table-bordered " AutoGenerateColumns="false" DataKeyNames="appoinment_ID">                       
                        <Columns>
                            <asp:BoundField DataField="patient_Name" HeaderText="Patient Name" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="patient_Phone" HeaderText="Phone" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />                            
                            <asp:BoundField DataField="appointment_Date" HeaderText="Date Time" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="appoinment_Details" HeaderText="Detail"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                                           
                        </Columns>
                        
                    </asp:GridView>

                </div>


            
                      
            </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
