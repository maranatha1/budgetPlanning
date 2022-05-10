<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle.aspx.cs" Inherits="POEBudgetPlan.Vehicle" %>

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
             <h2 class="text-center">Vehicle Details</h2>
             <div class="col-sm-10 col-sm-offset-1" style="margin-left: 285px">
                 <div class="form-group form-control-sm">
                     <label class="col-sm-6">Model and Make</label>
                     <div class="col-sm-6">
                         <asp:TextBox ID="tbModel" runat="server" CssClass="form-control" ></asp:TextBox>
                     </div>

                     <label class="col-sm-6">Purchase Price</label>
                     <div class="col-sm-6">
                         <asp:TextBox ID="tbPurchasePrice" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                         <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                             ControlToValidate="tbPurchasePrice" ErrorMessage="Value must be a currency" />
                     </div>

                     <label class="col-sm-6">Total Deposit</label>
                     <div class="col-sm-6">
                         <asp:TextBox ID="tbDeposit" CssClass="form-control" placeholder="0.00" runat="server"></asp:TextBox>
                         <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                             ControlToValidate="tbDeposit" ErrorMessage="Value must be a currency" />
                     </div>
                     <label class="col-sm-6">Interest Rate (percentage)</label>
                     <div class="col-sm-6">
                         <asp:TextBox ID="tbInterestRate" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Double"
                             ControlToValidate="tbInterestRate" ErrorMessage="Value must be numeric" />
                     </div>

                     <label class="col-sm-6">Estimated Insurance Premium</label>
                     <div class="col-sm-6">
                         <asp:TextBox ID="tbPremium" CssClass="form-control" placeholder="0.00" runat="server"></asp:TextBox>
                         <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                             ControlToValidate="tbPremium" ErrorMessage="Value must be a currency" />
                     </div>
                     <div style="margin-left: 15px; margin-top: 20px">
                         <asp:Button ID="btnSave" CssClass="btn btn-warning form-control col-sm-2" OnClick="btnSave_Click" Text="Save" runat="server" />
                     </div>
                 </div>
             </div>
        </div>
    </form>
</body>
</html>
