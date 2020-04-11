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
            <div class="row justify-content-center custom-row">
                <div class="col-12 col-sm-8 col-md-6">

                    <asp:Wizard ID="RegistrationWizard" runat="server" ActiveStepIndex="0" Height="202px" Width="750px" DisplaySideBar="False" HeaderText="User Registeration" ToolTip=" Account Registration Form" CssClass="form-container" OnFinishButtonClick="RegistrationWizard_FinishButtonClick">
                        <CancelButtonStyle CssClass="btn btn-danger" />
                        <FinishCompleteButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <FinishPreviousButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <HeaderStyle CssClass="card-header" />
                        <StartNextButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <StepNextButtonStyle CssClass="btn btn-primary custom-form-control px-3" />
                        <StepPreviousButtonStyle CssClass="btn btn-primary custom-form-control px-3" />

                        <WizardSteps>
                            <asp:WizardStep ID="UserDetails" runat="server" Title="Step 1">

                                <div class="col-md-2 col-sm-2 mx-auto">
                                    <%--    <i class="fa fa-user-circle fa-5x"></i>--%>
                                    <asp:Image ID="LoginImage" runat="server" CssClass="img-fluid" ImageUrl="~/content/loginI.png" TabIndex="1" />

                                </div>

                                <%--  <div class="form-container">--%>
                                <div class="form-group col-md-8 col-sm-10 mx-auto">
                                    <asp:Label ID="AccountUsername" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="AccountUsernameTB" runat="server" CssClass="form-control custom-form-control" ToolTip="Enter  username "></asp:TextBox>
                                    <%--RequiredFieldValidator--%>
                                    <asp:RequiredFieldValidator ID="registerUsernameRFV" runat="server" ControlToValidate="AccountUsernameTB" InitialValue="" ForeColor="Red" ErrorMessage="Required*"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group  col-md-8 col-sm-10 mx-auto">
                                    <asp:Label ID="AccountPasswordLBL" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="AccountPasswordTB" runat="server" CssClass="form-control custom-form-control" TextMode="Password"></asp:TextBox>
                                    <%--RequiredFieldValidator--%>
                                    <asp:RequiredFieldValidator ID="registerPasswordRFV" runat="server" ControlToValidate="AccountPasswordTB" InitialValue="" ForeColor="Red" ErrorMessage="Required*"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-8 col-sm-10 mx-auto">
                                    <asp:Label ID="AccountCnfrmPswrdL" runat="server" Text="Confirm Password"></asp:Label>
                                    <asp:TextBox ID="AccountCnfrmPswrdTB" runat="server" CssClass="form-control custom-form-control" TextMode="Password"></asp:TextBox>
                                    <%--RequiredFieldValidator--%>
                                    <asp:RequiredFieldValidator ID="registerCnfrmPasswordRFV" runat="server" ControlToValidate="AccountCnfrmPswrdTB" InitialValue="" ForeColor="Red" ErrorMessage="Required*"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-8 col-sm-10 mx-auto">
                                    <%-- CompareValidator--%>
                                    <asp:CompareValidator ID="PaswrdCompareValidator" runat="server" ControlToCompare="AccountPasswordTB" ControlToValidate="AccountCnfrmPswrdTB" ForeColor="Red" ErrorMessage="Password Miss Matched"></asp:CompareValidator>
                                </div>

                                <%--</div>--%>
                            </asp:WizardStep>
                            <asp:WizardStep ID="UserRecoveretails" runat="server" Title="Step 2">

                                <%--                              <div class="form-container">--%>

                                <div class="form-group col-md-8 col-sm-10 mx-auto">
                                    <asp:Label ID="AccountEmailL" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="AccountEmailB" runat="server" CssClass="form-control custom-form-control" TextMode="Email"></asp:TextBox>
                                    <%--RequiredFieldValidator--%>
                                    <asp:RequiredFieldValidator ID="registerEmailRFV" runat="server" ControlToValidate="AccountEmailB" InitialValue="" ForeColor="Red" ErrorMessage="Email Required"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-8 col-sm-10 mx-auto ">
                                    <asp:Label ID="AccountPhoneL" runat="server" Text="Phone"></asp:Label>
                                    <asp:TextBox ID="AccountPhoneTB" runat="server" CssClass="form-control custom-form-control"></asp:TextBox>
                                    <%--RequiredFieldValidator--%>
                                    <asp:RequiredFieldValidator ID="registerPhoneRFV" runat="server" ControlToValidate="AccountPhoneTB" InitialValue="" ForeColor="Red" ErrorMessage="Phone Required"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-8 col-sm-10 mx-auto">
                                    <asp:Label ID="Role" runat="server" Text="Role"></asp:Label>
                                    <asp:DropDownList ID="RoleDropDown" runat="server" CssClass="form-control custom-form-control">
                                        <asp:ListItem Selected="True">Select Role</asp:ListItem>
                                        <asp:ListItem>Patient</asp:ListItem>
                                        <asp:ListItem>Doctor</asp:ListItem>
                                        <asp:ListItem>Receptionist</asp:ListItem>
                                    </asp:DropDownList>
                                    <%--RequiredFieldValidator--%>
                                    <asp:RequiredFieldValidator ID="registerRoleRFV" runat="server" ControlToValidate="RoleDropDown" InitialValue="Select Role" ForeColor="Red" ErrorMessage="Role is Required"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-check col-md-8 col-sm-10 mx-auto">
                                    <asp:CheckBox ID="AccountAgreementCheck" runat="server" />
                                    <asp:Label ID="AccountAgreementL" runat="server">I agree with term & conditions</asp:Label>
                                </div>
                                <%--                           </div>--%>
                                <div class="form-group col-md-8 col-sm-10 mx-auto">
                                    <%-- CompareValidator--%>
                                    <asp:RegularExpressionValidator ID="AccEmailRegularExpValidator" runat="server" ControlToValidate="AccountEmailB"
                                        ErrorMessage="Invalid Email Please Re-Enter" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                                    </asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AccountPhoneTB"
                                        ErrorMessage="Invalid Phone Please Follow +xxxxxxxxxxx format" ForeColor="Red" Font-Size="Small" ValidationExpression="^[+][\d]{12}$">  
                                    </asp:RegularExpressionValidator>
                                </div>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>


                </div>
            </div>
        </div>

    </form>
</body>
</html>
