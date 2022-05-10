<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="POEBudgetPlan.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
                        <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
                    </li>                  
                </ul>
                
                <a href="Register.aspx" class="btn btn-link" role="button">Register</a><span><a href="Login.aspx">Login</a></span>
            </div>
        </nav>

        <div class="container">
            <h2 class="text-center">Register</h2>
             <div class="col-sm-10 col-sm-offset-1" style="margin-left: 285px">
                 <div class="form-group form-control-sm">
                     <label class="col-sm-6">Name</label>
                     <div class="col-sm-6">
                          <asp:TextBox ID="tbName" runat="server" CssClass="form-control" placeholder="John"></asp:TextBox>
                     </div>
                                                            
                     <label class="col-sm-6">Surname</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbSurname" runat="server" CssClass="form-control" placeholder="Smith"></asp:TextBox>
                      </div>
                      
                     <label class="col-sm-6">Email</label>
                     <div class="col-sm-6">
                         <div class="input-group mb-2">
                            <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="johnsmith@domain.com"  runat="server" TextMode="Email"></asp:TextBox>
                         </div>
                     </div>
                      <label class="col-sm-6">Password</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbPassword"  CssClass="form-control" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
                      </div>
                      <label class="col-sm-6" style="margin-top: 5px"">Confirm Password(copy and paste is not allowed)</label>
                      <div class="col-sm-6">
                          <asp:TextBox ID="tbConfirmPassword"  CssClass="form-control" placeholder="confirm password" runat="server" TextMode="Password"  oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                      </div>
                      <div  style="margin-left:15px; margin-top: 20px">
                          <asp:Button ID="btnRegister"  CssClass="btn btn-warning form-control col-sm-2" Text="Register" OnClick="btnRegister_Click" runat="server" />
                          <a href="Login.aspx">Already have an acount?</a> <asp:Label ID="lblMessage" runat="server"></asp:Label>
                      </div>  
                     
                 </div>
                 <div>                    
                 </div>                
             </div>
        </div>
    </form>
</body>
</html>
