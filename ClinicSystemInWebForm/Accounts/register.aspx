<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ClinicSystemInWebForm.Accounts.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="~/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/LoginStyle.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="registrationForm" runat="server">

        <div class="container-fluid bg">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-8 col-md-6">


                    <asp:Wizard ID="RegistrationWizard" runat="server" ActiveStepIndex="0" Height="400px" Width="750px" DisplaySideBar="False" HeaderText="REGISTERATION" ToolTip=" Account Registration Form" CssClass="form-container">
                        <CancelButtonStyle CssClass="btn btn-danger" />
                        <FinishCompleteButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <FinishPreviousButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <HeaderStyle CssClass="card-header" />
                        <StartNextButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <StepNextButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <StepPreviousButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <StepNavigationTemplate>
                            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" CssClass="btn btn-light" Text="Previous" />
                            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" CssClass="btn btn-light" Text="Next" />
                        </StepNavigationTemplate>
                        <WizardSteps>
                            <asp:WizardStep ID="UserDetails" runat="server" Title="Step 1">

                              <%--  <div class="form-container">--%>
                                    <div class="form-group col-md-8 col-sm-10 mx-auto">
                                        <asp:Label ID="AccountUsernameL" runat="server" Text="Username"></asp:Label>
                                        <asp:TextBox ID="AccountUsernameTB" runat="server" CssClass="form-control custom-form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group  col-md-8 col-sm-10 mx-auto">
                                        <asp:Label ID="AccountPasswordL" runat="server" Text="Password"></asp:Label>
                                        <asp:TextBox ID="AccountPasswordTB" runat="server" CssClass="form-control custom-form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-8 col-sm-10 mx-auto">
                                        <asp:Label ID="AccountCnfrmPswrdL" runat="server" Text="Confirm Password"></asp:Label>
                                        <asp:TextBox ID="AccountCnfrmPswrdTB" runat="server" CssClass="form-control custom-form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                <%--</div>--%>

                            </asp:WizardStep>
                            <asp:WizardStep ID="UserRecoveretails" runat="server" Title="Step 2">

  <%--                              <div class="form-container">--%>

                                    <div class="form-group col-md-8 col-sm-10 mx-auto">
                                        <asp:Label ID="AccountEmailL" runat="server" Text="Email"></asp:Label>
                                        <asp:TextBox ID="AccountEmailTextBox" runat="server" CssClass="form-control custom-form-control" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-8 col-sm-10 mx-auto ">
                                        <asp:Label ID="AccountPhoneL" runat="server" Text="Phone"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control custom-form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-8 col-sm-10 mx-auto">
                                        <asp:Label ID="Role" runat="server" Text="Role"></asp:Label>
                                        <asp:DropDownList ID="RolDropDown" runat="server" CssClass="form-control custom-form-control"></asp:DropDownList>
                                    </div>
                                    <div class="form-check col-md-8 col-sm-10 mx-auto">
                                        <asp:CheckBox ID="AccountAgreementCheck" runat="server" />
                                        <asp:Label ID="AccountAgreementL" runat="server">I agree with term & conditions</asp:Label>
                                    </div>
<%--                           </div>--%>

                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>


                </div>
            </div>
        </div>

    </form>
</body>
</html>
