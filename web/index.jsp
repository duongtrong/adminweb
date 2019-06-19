<%--
  Created by IntelliJ IDEA.
  User: trangduong
  Date: 6/18/2019
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
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
                    <li class="active has-sub">
                        <a class="js-arrow" href="index.jsp">
                            <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="chart.html">
                            <i class="fas fa-chart-bar"></i>Charts
                        </a>
                    </li>
                    <li>
                        <a href="table.jsp">
                            <i class="fas fa-table"></i>Tables</a>
                    </li>
                    <li>
                        <a href="form.jsp">
                            <i class="far fa-check-square"></i>Forms</a>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-copy"></i>Pages</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="login.html">Login</a>
                            </li>
                            <li>
                                <a href="register.html">Register</a>
                            </li>
                            <li>
                                <a href="forget-pass.html">Forget Password</a>
                            </li>
                        </ul>
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
                    <div class="row m-t-25">
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c1">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-accountMember-o"></i>
                                        </div>
                                        <div class="text">
                                            <h2>10368</h2>
                                            <span>members online</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart1"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c2">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </div>
                                        <div class="text">
                                            <h2>388,688</h2>
                                            <span>items solid</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c3">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-calendar-note"></i>
                                        </div>
                                        <div class="text">
                                            <h2>1,086</h2>
                                            <span>this week</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart3"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c4">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-money"></i>
                                        </div>
                                        <div class="text">
                                            <h2>$1,060,386</h2>
                                            <span>total earnings</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart4"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="au-card recent-report">
                                <div class="au-card-inner">
                                    <h3 class="title-2">recent reports</h3>
                                    <div class="chart-info">
                                        <div class="chart-info__left">
                                            <div class="chart-note">
                                                <span class="dot dot--blue"></span>
                                                <span>products</span>
                                            </div>
                                            <div class="chart-note mr-0">
                                                <span class="dot dot--green"></span>
                                                <span>services</span>
                                            </div>
                                        </div>
                                        <div class="chart-info__right">
                                            <div class="chart-statis">
                                                    <span class="index incre">
                                                        <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                <span class="label">products</span>
                                            </div>
                                            <div class="chart-statis mr-0">
                                                    <span class="index decre">
                                                        <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                <span class="label">services</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="recent-report__chart">
                                        <canvas id="recent-rep-chart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="au-card chart-percent-card">
                                <div class="au-card-inner">
                                    <h3 class="title-2 tm-b-5">char by %</h3>
                                    <div class="row no-gutters">
                                        <div class="col-xl-6">
                                            <div class="chart-note-wrap">
                                                <div class="chart-note mr-0 d-block">
                                                    <span class="dot dot--blue"></span>
                                                    <span>products</span>
                                                </div>
                                                <div class="chart-note mr-0 d-block">
                                                    <span class="dot dot--red"></span>
                                                    <span>services</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="percent-chart">
                                                <canvas id="percent-chart"></canvas>
                                            </div>
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
        <!-- END MAIN CONTENT-->
        <!-- END PAGE CONTAINER-->
    </div>

</div>

<script src="vendor/jquery-3.2.1.min.js"></script>
<script src="vendor/slick/slick.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
