<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="POEBudgetPlan.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>

    <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="Home.aspx">Budget Plan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse" id="navbarContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Home.aspx">Home<span class="sr-only">(current)</span></a>
                    </li>                    
                </ul>
                
                <a href="Register.aspx" class="btn btn-link" role="button">Register</a><span><a href="Login.aspx">Login</a></span>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div id="demo" class="carousel slide " data-ride="carousel" style="margin-top: 5px">

                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <%--//<li data-target="#demo" data-slide-to="0" ></li>--%>
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                        </ul>

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <%--<div class="carousel-item active">
                            <img src="images/budget_660x450_013119075831.jpg" alt="Los Angeles" width="1100" height="500"/>
                        </div>--%>
                            <div class="carousel-item active">
                                <img src="images/Budget-tools-FB.jpg" alt="Chicago" width="1100" height="500" />
                            </div>
                            <div class="carousel-item">
                                <img src="images/Budgeting Methods_Banner.png" alt="New York" width="1100" height="500" />
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div class="col-md-5 ">
                    <h3>Budget Planning Service</h3>
                    <p>
                        This is a personal budget planning application. It helps with estimating the user’s monthly expenditures, the user’s savings, etc.
                        The estimated monthly expenses include groceries, water and lights, travel costs and cell phone bill.
                    </p>
                </div>
            </div>
             

        </div>
    </form>
</body>
</html>
