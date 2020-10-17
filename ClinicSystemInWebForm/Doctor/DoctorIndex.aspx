<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DoctorIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Doctor.DoctorIndex" %>

<asp:Content ID="DoctorIndexHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="DoctorIndexBID" ContentPlaceHolderID="MainContent" runat="server">



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
                    <asp:LinkButton ID="AddNewDoctor"  PostBackUrl="#" runat="server" CssClass="btn btn-primary btn-sm col-md-1">
                                 <i class="fa fa-edit"></i>Add
                    </asp:LinkButton>
                    <br />
                    <br />

                    <div class="table-responsive-md">
                    <asp:GridView ID="DoctorDataGrid"  runat="server" Width="100%" CssClass="table table-striped table-bordered table-responsive-md" AutoGenerateColumns="false" DataKeyNames="doctor_ID" OnSelectedIndexChanged="DoctorDataGrid_SelectedIndexChanged" >                       
                        <Columns>
                            <asp:BoundField DataField="doctor_ID" HeaderText="Doctor" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass="" />
                            <asp:BoundField DataField="doctor_Name" HeaderText="Doctor Name" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Phone" HeaderText="Phone" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Email" HeaderText="Email" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Specialization" HeaderText="Specialization"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <%--<asp:BoundField DataField="" HeaderText="Status" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />--%>
                            <asp:BoundField DataField="is_Active" HeaderText="Is Active"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                     
                            
                             <asp:CommandField  HeaderText=""  ShowSelectButton="true" SelectText="<i class='fa fa-eye btn-sm rounded-circle rounded-circle ' style='color:black'></i>" />
                            
                            

                            
                        </Columns>
                        
                    </asp:GridView>
                </div>

                </div>
            </div>
        </div>


    </div>


</asp:Content>
