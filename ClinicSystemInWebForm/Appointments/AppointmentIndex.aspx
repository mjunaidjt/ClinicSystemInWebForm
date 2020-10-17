<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Appointments.AppointmentIndex" %>

<asp:Content ID="AppointmentIndexHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AppointmentIndexBID" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Appointments </h3>
            </div>

            <div class="card-body">

                <div class="table-responsive">

                <asp:GridView ID="AppointmentDataGrid"  runat="server" Width="100%" CssClass="table table-striped table-bordered " AutoGenerateColumns="false" DataKeyNames="appoinment_ID" OnSelectedIndexChanged="AppointmentDataGrid_SelectedIndexChanged">                       
                        <Columns>
                            
                            <asp:BoundField DataField="appoinment_ID" HeaderText="Token" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass="" />
                            <asp:BoundField DataField="patient_Name" HeaderText="Patient Name" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="patient_BirthDate" HeaderText="Date of Birth" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="patient_Phone" HeaderText="Phone" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />                            
                            <asp:BoundField DataField="appointment_Date" HeaderText="Date Time" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Name" HeaderText="Appointed Doctor" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <%--<asp:BoundField DataField="" HeaderText="Detail"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />--%>
                            <asp:BoundField DataField="appointment_Status" HeaderText="Status"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                  
                            <asp:CommandField  HeaderText=""  ShowSelectButton="true" SelectText="<i class='fa fa-pencil-square-o btn-sm btn btn-primary rounded-circle rounded-circle' style='color:black'></i>"  />


                            <%--<asp:TemplateField>
                                <ItemTemplate>
                                   <asp:LinkButton ID="EditAppointmentLB" PostBackUrl="~/Appointments/Edit.aspx" runat="server" CssClass="btn btn-primary btn-sm"><i class="fa fa-pencil-square"></i>Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            
                        </Columns>
                        
                    </asp:GridView>

                </div>

            </div>
        </div>

    </div>


</asp:Content>
