
<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentReport.aspx.cs" Inherits="ClinicSystemInWebForm.Reports.AppointmentReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AppointmentR" ContentPlaceHolderID="MainContent" runat="server">



<span class="card card-header">Appointments</span>
    
<div class="row justify-content-around">
  
            <div class="col-md-5 col-sm-5">
                  <br />
                <asp:Label ID="SelectStatusL" runat="server" CssClass="col-md-6 col-sm-6" Text="Select Status"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownStatus" CssClass="form-control col-md-12 col-sm-12" runat="server" OnSelectedIndexChanged="DropDownStatus_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Select Status   </asp:ListItem>
                    <asp:ListItem Value="N">Pending</asp:ListItem>
                    <asp:ListItem Value="Y">Approved</asp:ListItem>
                </asp:DropDownList>

            </div>

<%--    <div class="col-md-1 col-sm-1"></div>--%>

            <div class="col-md-5 col-sm-5">
               <div class="form-group" >
                    <br />
                  <asp:Label ID="DocReportL" runat="server" CssClass="label-control col-md-6 col-sm-6" Text="Doctor ID" ToolTip="Doctor ID">Doctor</asp:Label>
                    <br />
                   <br />
                   <asp:TextBox ID="DocReportTB" CssClass="form-control col-md-12 col-sm-12" ToolTip="Enter Doctor ID"  runat="server"></asp:TextBox>
                   
               </div>

               <div class="form-group" >
               
                  <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                 <input type="button" class="btn btn-default" id="showAll" value="Show All" />
                 <Button class="btn btn-default" data-toggle="modal" data-target="#renderTable"> </Button>

               </div>
            </div>
    
</div>


<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div id="renderTable" class="x_content">
               
                <%--Appointment Partial--%>
                  <div class="col-md-12">
         <div  class="modal-content">
        <div class="modal-header">
 
            <h4 class="card-title ">Appointments</h4>
             <button type="button" class="close" data-dismiss="modal">
                <i class="fa fa-times" aria-hidden="true" style="color:red"></i>
            </button>
        </div>
        <div class="modal-body">
         
              <div class="table-responsive">

                   <asp:GridView ID="AppointmentsReport"  runat="server" Width="100%" CssClass="table table-striped table-bordered" AutoGenerateColumns="false" DataKeyNames="appoinment_ID">                       
                      
                       <Columns> 
                            
                            <asp:BoundField DataField="appointment_Date" HeaderText="Date Time" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Name" HeaderText="Appointed Doctor" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="appoinment_Details" HeaderText="Details"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="appointment_Status" HeaderText="Status"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                                    
                        </Columns>
                        
                    </asp:GridView>

                </div>
            
            </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>

</div>

                <%--Appoinment Partial--%>
            </div>
        </div>
    </div>
</div>



    
    <script>
        //$('.datepicker').datepicker();
        $(document).ready(function () {
            $('#submit').on('click', function () {
                $('#renderTable').load("TestAppointment", $('#AppointmentR').serialize());
            });
        });
        $('#showAll').on('click', function () {
            location.reload(true);
        });
    </script>


</asp:Content>
