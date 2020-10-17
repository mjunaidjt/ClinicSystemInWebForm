<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FeedbackCrystalReport.aspx.cs" Inherits="ClinicSystemInWebForm.Reports.FeedbackCrystalReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      
    <CR:CrystalReportViewer ID="FeedbackCrystalReportViewer" runat="server" AutoDataBind="true" />

</asp:Content>
