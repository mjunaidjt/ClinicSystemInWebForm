<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PatientForm.aspx.cs" Inherits="ClinicSystemInWebForm.Patient.PatientForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PatientContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-center">

        <div class="col col-md-12 col-xs-12 bg-light ">

            <div class="card">

                <div class="card-header ">
                    <span class="section">Add Patient</span>
                </div>
                <div class="card-body text-center ml-4">

                    <div class="form-inline">
                        <asp:Label ID="PatientName" runat="server" Text="Name" CssClass="col-md-2 col-sm-2 col-xs-12">Name</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Name" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientGender" runat="server" Text="Gender" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Gender</asp:Label>
                        <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control col-md-5 col-sm-6 col-xs-12 ml-4">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientBirth" runat="server" Text="Date of Birth" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Date of Birth</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="BirthTextBox" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientHieght" runat="server" Text="Height" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Height</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Height" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="Label1" runat="server" Text="Weight" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Weight</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Weight" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class=" form-inline">
                        <asp:Label ID="PatientPhone" runat="server" Text="Phone" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Phone</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Phone" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientEmailAddress" runat="server" Text="Email" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Email</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Address" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientAddress" runat="server" Text="Adress" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Address</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-group ml--4">
                        <button type="submit" class="btn btn-success col-md-4 col-sm-4 col-xs-12 col-md-offset-4">Save</button>
                    </div>

                </div>
            </div>

        </div>

    </div>

</asp:Content>
