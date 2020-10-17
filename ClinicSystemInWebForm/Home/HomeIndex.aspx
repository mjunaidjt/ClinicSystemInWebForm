<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HomeIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Home.HomeIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="row top_tiles">    
    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon"><i class="fa fa-caret-square-o-right"></i></div>
            <div class="count patients">
                <asp:Label ID="patientL" runat="server" Text="Label"></asp:Label>
            </div>
            <h3>Total Patients</h3>
            <p class="count_bottom"><i class="green todayspatients"> </i> Added Till Today</p>
        </div>
    </div>
    
       
    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon"><i class="fa fa-comments-o"></i></div>
            <div class="count appointments">
                <asp:Label ID="AppointmentL" runat="server" Text=""></asp:Label>
            </div>
            <h3>Total Appointments</h3>
            <p class="count_bottom"><i class="green todaysappointments"> </i>  For Today</p>
        </div>
    </div>
    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon"><i class="fa fa-sort-amount-desc"></i></div>
            <div class="count doctors">
                <asp:Label ID="doctorL" runat="server" Text=""></asp:Label>
            </div>
            <h3>Total Doctors</h3>
            <p class="count_bottom"><i class="green availabledoctors"> </i> Doctors Available</p>
        </div>
    </div>
    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="tile-stats">
            <div class="icon"><i class="fa fa-check-square-o"></i></div>
            <div class="count users">
                <asp:Label ID="usersL" runat="server" Text=""></asp:Label>
            </div>
            <h3>Total Users</h3>
            <p class="count_bottom"><i class="green activeaccounts"> </i> Active Accounts</p>
        </div>
    </div>
        </div>    
            </ItemTemplate>
            </asp:FormView>
    

</asp:Content>
