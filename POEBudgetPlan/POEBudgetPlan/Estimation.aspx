<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estimation.aspx.cs" Inherits="POEBudgetPlan.Estimation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="UserHome.aspx">Budget Plan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse" id="navbarContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="UserHome.aspx">Home<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <a href="Home.aspx" class="btn btn-link" role="button">Logout</a>
            </div>
        </nav>

        <div class="container">
            <h2 class="text-center">Thank you for using budget planning services</h2>
            <div class="col-sm-10 col-sm-offset-1" style="margin-left: 285px">
                <label class="col-sm-6">Available Balance</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="tbAvailableAmt" ReadOnly="true" runat="server" CssClass="form-control" placeholder="4500.00"></asp:TextBox>
                    <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                        ControlToValidate="tbAvailableAmt" ErrorMessage="Value must be a currency" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
