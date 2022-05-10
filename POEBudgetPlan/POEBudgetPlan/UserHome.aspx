<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="POEBudgetPlan.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Budget Plan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse" id="navbarContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="UserHome.aspx">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Property.aspx">Property<span class="sr-only">(current)</span></a>
                    </li> 
                    <li class="nav-item active">
                        <a class="nav-link" href="Vehicle.aspx">Vehicle<span class="sr-only">(current)</span></a>
                    </li> 
                </ul>
                <a href="Home.aspx" class="btn btn-link" role="button">Logout</a>
            </div>
        </nav>

        <div class="container">
            <h2 class="text-center">Personal Budget Planning</h2>
             <div class="col-sm-10 col-sm-offset-1" style="margin-left: 285px">
                 <div class="form-group form-control-sm">
                     <label class="col-sm-6">Gross monthly income</label>
                     <div class="col-sm-6">
                          <asp:TextBox ID="tbGrossMonthlyIncome" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                          <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                              ControlToValidate="tbGrossMonthlyIncome"  ErrorMessage="Value must be a currency" />
                     </div>
                                                            
                     <label class="col-sm-6">Estimated monthly tax deducted</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbMonthlyTax" runat="server" CssClass="form-control" placeholder="0.00"></asp:TextBox>
                          <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                              ControlToValidate="tbMonthlyTax"  ErrorMessage="Value must be a currency" />
                      </div>
                      
                     <label class="col-sm-6">Groceries</label>
                     <div class="col-sm-6">
                         <asp:TextBox ID="tbGrocery" CssClass="form-control" placeholder="0.00" runat="server"></asp:TextBox>
                         <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                             ControlToValidate="tbGrocery" ErrorMessage="Value must be a currency" />                         
                     </div>
                      <label class="col-sm-6">Water and Lights</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbWaterLights"  CssClass="form-control" placeholder="0.00" runat="server" ></asp:TextBox>
                          <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                              ControlToValidate="tbWaterLights"  ErrorMessage="Value must be a currency" />
                      </div>

                      <label class="col-sm-6" style="margin-top: 5px"">Travel Costs (including petrol)</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbTravelCost"  CssClass="form-control" placeholder="0.00" runat="server" ></asp:TextBox>
                          <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                              ControlToValidate="tbTravelCost"  ErrorMessage="Value must be a currency" />
                      </div>

                     <label class="col-sm-6" style="margin-top: 5px"">Cellphone and telephone</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbCellphone"  CssClass="form-control" placeholder="0713211487" runat="server" ></asp:TextBox>
                           <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"
                              ControlToValidate="tbCellphone"  ErrorMessage="Value must be numerics" />
                      </div>

                     <label class="col-sm-6" style="margin-top: 5px"">Other Expense</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbOther"  CssClass="form-control" placeholder="0.00" runat="server" ></asp:TextBox>
                          <asp:CompareValidator runat="server" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"
                              ControlToValidate="tbTravelCost"  ErrorMessage="Value must be a currency" />
                      </div>

                      <div  style="margin-left:15px; margin-top: 20px">
                          <asp:Button ID="btnSave"  CssClass="btn btn-warning form-control col-sm-2" OnClick="btnSave_Click" Text="Save" runat="server" />
                      </div>                     
                 </div>
                 <div>                    
                 </div>                
             </div>
        </div>
    </form>
</body>
</html>
