<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AttendenceR.aspx.cs" Inherits="ClinicSystemInWebForm.Reports.AttendenceR" %>
<asp:Content ID="AttendenceRepHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AttendenceRepID" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
    <div class="col-md-12">

        <!-- form date pickers -->
        <div class="card" style="">
            <div class="card-body">
                <div class="well" style="overflow: auto">
                    <div class="col-md-6">
                        <div id="">
                            <label class="col-md-12 col-sm-12">Enter Patient Token: </label>
                            <asp:TextBox ID="patientToken" CssClass="form-control" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="patientTokenBtn" CssClass="btn btn-primary btn-sm" runat="server" Text="Search" OnClick="patientTokenBtn_Click" />
                        </div>

                    </div>
                
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="x_panel card ">
            <div id="renderTable" class="x_content card-body ">
                <%--Attendence Modal--%>

                <div class="col-md-12">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="x_title">Feedback</h4>
               <button type="button" class="close" data-dismiss="modal">
                <i class="fa fa-times" aria-hidden="true" style="color:red"></i>
              </button>
        </div>

        <div class="modal-body">

            <div class="table-responsive">

                   <asp:GridView ID="AttendenceReport"  runat="server" Width="100%" CssClass="table table-striped table-bordered" AutoGenerateColumns="false" DataKeyNames="feedback_ID">                       
                      
                       <Columns> 
                            
                            <asp:BoundField DataField="feedback_Remarks" HeaderText="Remarks" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="feedback_Dignosis" HeaderText="Dignosis" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="feedback_Presciption" HeaderText="Prescription"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <%--<asp:BoundField DataField="feedback_DateTime" HeaderText="Date Time"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />--%>
                                    
                        </Columns>
                        
                    </asp:GridView>

                </div>
          
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>

    </div>
</div>

                 <%--Attendence Modal--%>

            </div>
        </div>
    </div>
</div>



</asp:Content>
