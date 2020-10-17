<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AppoinmentCrystalReport.aspx.cs" Inherits="ClinicSystemInWebForm.Reports.AppoinmentCrystalReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <CR:CrystalReportViewer ID="AppointmentCrystalReportViewer" runat="server" AutoDataBind="true" />

</asp:Content>
