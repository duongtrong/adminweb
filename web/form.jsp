<%@ page import="simpleweb.entity.AccountMember" %><%--
  Created by IntelliJ IDEA.
  User: trangduong
  Date: 6/19/2019
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    AccountMember accountMember = (AccountMember) request.getAttribute("accountMember");
    AccountMember.Role[] roles = (AccountMember.Role[]) request.getAttribute("roles");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Title Page-->
    <title>Forms</title>
    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <!--    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">-->
    <!--    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">-->
    <!--    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">-->
    <!--    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">-->
    <!--    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">-->
    <!--    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">-->
    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
</head>

<body class="animsition">
<div class="page-wrapper">
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
            <a href="index.jsp">
                <img src="images/icon/logo.png" alt="Cool Admin" />
            </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
            <nav class="navbar-sidebar">
                <ul class="list-unstyled navbar__list">
                    <li class="has-sub">
                        <a class="js-arrow" href="index.jsp">
                            <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="chart.html">
                            <i class="fas fa-chart-bar"></i>Charts</a>
                    </li>
                    <li>
                        <a href="table.jsp">
                            <i class="fas fa-table"></i>Tables</a>
                    </li>
                    <li class="active">
                        <a href="form.jsp">
                            <i class="far fa-check-square"></i>Forms</a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <!-- END MENU SIDEBAR-->

    <!-- PAGE CONTAINER-->
    <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <form class="form-header" action="" method="POST">
                            <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                            <button class="au-btn--submit" type="submit">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </header>
        <!-- HEADER DESKTOP-->

        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Basic Form</strong> Elements
                                </div>
                                <div class="login-form">
                                    <form action="/udpate" method="post">
                                        <div class="row form-group">
                                            <div class="col-sm-6">
                                                <label>Username</label>
                                                <input class="au-input au-input--full" type="text" name="username" placeholder="Enter Username" value="<%= accountMember.getUsername()%>">
                                            </div>
                                            <div class="col-sm-6">
                                                <label>Email Address</label>
                                                <input class="au-input au-input--full" type="email" name="email" placeholder="Enter Email" value="<%= accountMember.getEmail()%>">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Full name</label>
                                            <input class="au-input au-input--full" type="text" name="fullName" placeholder="Enter fullname" value="<%= accountMember.getFullName()%>">
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-sm-6">
                                                <label>Phone Number</label>
                                                <input class="au-input au-input--full" type="text" name="phoneNumber" placeholder="Enter phone number" value="<%= accountMember.getPhoneNumber()%>">
                                            </div>
                                            <div class="col-sm-6">
                                                <label>Address</label>
                                                <input class="au-input au-input--full" type="text" name="address" placeholder="Enter address" value="<%= accountMember.getAddress()%>">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Roles</label>
                                            <select name="role" class="form-control">
                                                <%
                                                    for (AccountMember.Role r : roles) {
                                                %>
                                                <option value="<%= r.getValue()%>" <%= r.getValue() == accountMember.getRole() ? "selected" : ""%>>
                                                    <%= r.name()%>
                                                </option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                        <br>
                                        <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Submit</button>
                                    </form>
                                </div>
                                <div class="card-footer">
                                    <div class="row" >
                                        <div class="col col-md-9">
                                            <button type="submit" class="btn btn-primary btn-sm">
                                                <i class="fa fa-dot-circle-o"></i> Submit
                                            </button>
                                            <button type="reset" class="btn btn-danger btn-sm">
                                                <i class="fa fa-ban"></i> Reset
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="vendor/jquery-3.2.1.min.js"></script>
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<!-- Main JS-->
<script src="js/main.js"></script>
</body>
</html>

