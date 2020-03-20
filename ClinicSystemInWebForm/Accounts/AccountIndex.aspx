<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AccountIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Accounts.AccountIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card-title">
                <h3>Manage Users</h3>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="card-body">

                    <asp:Table ID="UserAccountTable" runat="server" CssClass="data table table-striped table-responsive-sm  no-margin">
                        <asp:TableRow ID="UserAccountheaderRow" runat="server">
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip=" Account Username">User</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Email of User">Email</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Phone of User">Phone</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Role of User">Role</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Account Status of user">Account  Status</asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow ID="UserAccountDataRow" runat="server">
                            <asp:TableCell runat="server" ToolTip=" Account Username">abc</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Email of User">abc@gef.com</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Phone of User">0xxxxxxxxx</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Role of User">Patient</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Account Status of user">


                                <asp:HyperLink ID="AccountHyperlinkA" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: green" CssClass="badge" readonly runat="server">Active</asp:HyperLink>

                                &nbsp

                                <asp:HyperLink ID="AccountHyperlinkL" NavigateUrl="#"  Style="padding: 3px 10px 3px 10px; background-color: red" CssClass="badge" readonly runat="server">Locked</asp:HyperLink>


                            </asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Account Status of user">

                                <asp:LinkButton ID="EditUserAccLink" PostBackUrl="edit" CssClass="btn-light" runat="server"><i class="fa fa-pencil-square"></i></asp:LinkButton>

                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                </div>
            </div>
        </div>
    </div>

        
</asp:Content>
