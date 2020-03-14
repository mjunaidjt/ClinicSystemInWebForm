<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ClinicSystemInWebForm.Shared.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="~/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/LoginStyle.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <%--styling--%>
    <style>
       
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-6 col-md-3">

                    <div class="form-container" >
                        <div class="form-group">
                            <asp:Label ID="LoginEmailLabel" runat="server" Text="Email" ></asp:Label>
                            <asp:TextBox ID="LoginEmailTextBox" runat="server" CssClass="form-control custom-form-control"></asp:TextBox>
                            <%--<label for="exampleInputEmail1">Email address</label>--%>
                            <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="LoginPasswordLabel" runat="server" Text="Password" ></asp:Label>
                            <asp:TextBox ID="LoginPasswordTextBox" runat="server" CssClass="form-control custom-form-control"></asp:TextBox>
                        </div>
                        <div class="form-check">
                            <asp:CheckBox ID="LoginCheckBox" runat="server" />
                            <asp:Label ID="LoginCheckBoxLabel" runat="server" >Keep me Logged In</asp:Label>
                        </div>
                        <br />
                        <div class="text-center">
                             <asp:button id="loginbutton" runat="server" text="log in" CssClass="btn btn-primary custom-btn" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
