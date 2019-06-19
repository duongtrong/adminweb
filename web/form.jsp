<%--
  Created by IntelliJ IDEA.
  User: trangduong
  Date: 6/19/2019
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <div class="header-button">
<%--                            <div class="noti-wrap">--%>
<%--                                <div class="noti__item js-item-menu">--%>
<%--                                    <i class="zmdi zmdi-comment-more"></i>--%>
<%--                                    <span class="quantity">1</span>--%>
<%--                                    <div class="mess-dropdown js-dropdown">--%>
<%--                                        <div class="mess__title">--%>
<%--                                            <p>You have 2 news message</p>--%>
<%--                                        </div>--%>
<%--                                        <div class="mess__item">--%>
<%--                                            <div class="image img-cir img-40">--%>
<%--                                                <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <h6>Michelle Moreno</h6>--%>
<%--                                                <p>Have sent a photo</p>--%>
<%--                                                <span class="time">3 min ago</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="mess__item">--%>
<%--                                            <div class="image img-cir img-40">--%>
<%--                                                <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <h6>Diane Myers</h6>--%>
<%--                                                <p>You are now connected on message</p>--%>
<%--                                                <span class="time">Yesterday</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="mess__footer">--%>
<%--                                            <a href="#">View all messages</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="noti__item js-item-menu">--%>
<%--                                    <i class="zmdi zmdi-email"></i>--%>
<%--                                    <span class="quantity">1</span>--%>
<%--                                    <div class="email-dropdown js-dropdown">--%>
<%--                                        <div class="email__title">--%>
<%--                                            <p>You have 3 New Emails</p>--%>
<%--                                        </div>--%>
<%--                                        <div class="email__item">--%>
<%--                                            <div class="image img-cir img-40">--%>
<%--                                                <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <p>Meeting about new dashboard...</p>--%>
<%--                                                <span>Cynthia Harvey, 3 min ago</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="email__item">--%>
<%--                                            <div class="image img-cir img-40">--%>
<%--                                                <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <p>Meeting about new dashboard...</p>--%>
<%--                                                <span>Cynthia Harvey, Yesterday</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="email__item">--%>
<%--                                            <div class="image img-cir img-40">--%>
<%--                                                <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <p>Meeting about new dashboard...</p>--%>
<%--                                                <span>Cynthia Harvey, April 12,,2018</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="email__footer">--%>
<%--                                            <a href="#">See all emails</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="noti__item js-item-menu">--%>
<%--                                    <i class="zmdi zmdi-notifications"></i>--%>
<%--                                    <span class="quantity">3</span>--%>
<%--                                    <div class="notifi-dropdown js-dropdown">--%>
<%--                                        <div class="notifi__title">--%>
<%--                                            <p>You have 3 Notifications</p>--%>
<%--                                        </div>--%>
<%--                                        <div class="notifi__item">--%>
<%--                                            <div class="bg-c1 img-cir img-40">--%>
<%--                                                <i class="zmdi zmdi-email-open"></i>--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <p>You got a email notification</p>--%>
<%--                                                <span class="date">April 12, 2018 06:50</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="notifi__item">--%>
<%--                                            <div class="bg-c2 img-cir img-40">--%>
<%--                                                <i class="zmdi zmdi-accountMember-box"></i>--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <p>Your accountMember has been blocked</p>--%>
<%--                                                <span class="date">April 12, 2018 06:50</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="notifi__item">--%>
<%--                                            <div class="bg-c3 img-cir img-40">--%>
<%--                                                <i class="zmdi zmdi-file-text"></i>--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <p>You got a new file</p>--%>
<%--                                                <span class="date">April 12, 2018 06:50</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="notifi__footer">--%>
<%--                                            <a href="#">All notifications</a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="accountMember-wrap">
                                <div class="accountMember-item clearfix js-item-menu">
                                    <div class="image">
                                        <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                    </div>
                                    <div class="content">
                                        <a class="js-acc-btn" href="#">john doe</a>
                                    </div>
                                    <div class="accountMember-dropdown js-dropdown">
                                        <div class="info clearfix">
                                            <div class="image">
                                                <a href="#">
                                                    <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h5 class="name">
                                                    <a href="#">john doe</a>
                                                </h5>
                                                <span class="email">johndoe@example.com</span>
                                            </div>
                                        </div>
                                        <div class="accountMember-dropdown__body">
                                            <div class="accountMember-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-accountMember"></i>Account</a>
                                            </div>
                                            <div class="accountMember-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-settings"></i>Setting</a>
                                            </div>
                                            <div class="accountMember-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-money-box"></i>Billing</a>
                                            </div>
                                        </div>
                                        <div class="accountMember-dropdown__footer">
                                            <a href="#">
                                                <i class="zmdi zmdi-power"></i>Logout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                <div class="card-body card-block">
                                    <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Username</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" name="username" placeholder="Username" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Fullname</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" name="fullName" placeholder="Fullname" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Email</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="email"name="email-input" placeholder="Enter Email" class="form-control">

                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Password</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="password" name="password" placeholder="Password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Radios</label>
                                            </div>
                                            <div class="col col-md-9">
                                                <div class="form-check">
                                                    <div class="radio">
                                                        <label for="radio1" class="form-check-label ">
                                                            <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Option 1
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="radio2" class="form-check-label ">
                                                            <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Option 2
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="radio3" class="form-check-label ">
                                                            <input type="radio" id="radio3" name="radios" value="option3" class="form-check-input">Option 3
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Inline Checkboxes</label>
                                            </div>
                                            <div class="col col-md-9">
                                                <div class="form-check-inline form-check">
                                                    <label for="inline-checkbox1" class="form-check-label ">
                                                        <input type="checkbox" id="inline-checkbox1" name="inline-checkbox1" value="option1" class="form-check-input">One
                                                    </label>
                                                    <label for="inline-checkbox2" class="form-check-label ">
                                                        <input type="checkbox" id="inline-checkbox2" name="inline-checkbox2" value="option2" class="form-check-input">Two
                                                    </label>
                                                    <label for="inline-checkbox3" class="form-check-label ">
                                                        <input type="checkbox" id="inline-checkbox3" name="inline-checkbox3" value="option3" class="form-check-input">Three
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="file-input" class=" form-control-label">File input</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="file" id="file-input" name="file-input" class="form-control-file">
                                            </div>
                                        </div>
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
<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<!--    <script src="vendor/bootstrap-4.1/popper.min.js"></script>-->
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<!--    <script src="vendor/slick/slick.min.js"></script>-->
<!--    <script src="vendor/wow/wow.min.js"></script>-->
<script src="vendor/animsition/animsition.min.js"></script>
<!--    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>-->
<!--    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>-->
<!--    <script src="vendor/counter-up/jquery.counterup.min.js"></script>-->
<!--    <script src="vendor/circle-progress/circle-progress.min.js"></script>-->
<!--    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>-->
<!--    <script src="vendor/chartjs/Chart.bundle.min.js"></script>-->
<!--&lt;!&ndash;    <script src="vendor/select2/select2.min.js">&ndash;&gt;</script>-->
<!-- Main JS-->
<script src="js/main.js"></script>
</body>
</html>

