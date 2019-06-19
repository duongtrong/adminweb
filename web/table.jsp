<%@ page import="simpleweb.entity.AccountMember" %>
<%--
  Created by IntelliJ IDEA.
  User: trangduong
  Date: 6/19/2019
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    AccountMember.Role[] roles = (AccountMember.Role[]) request.getAttribute("roles");
    AccountMember accountMember = (AccountMember) request.getAttribute("accountMember");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tables</title>
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
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
                    <li class="active">
                        <a href="table.jsp">
                            <i class="fas fa-table"></i>Tables</a>
                    </li>
                    <li>
                        <a href="form.jsp">
                            <i class="far fa-check-square"></i>Forms</a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <div class="page-container">
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
                            <!--                                <div class="noti-wrap">-->
                            <!--                                    <div class="noti__item js-item-menu">-->
                            <!--                                        <i class="zmdi zmdi-comment-more"></i>-->
                            <!--                                        <span class="quantity">1</span>-->
                            <!--                                        <div class="mess-dropdown js-dropdown">-->
                            <!--                                            <div class="mess__title">-->
                            <!--                                                <p>You have 2 news message</p>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="mess__item">-->
                            <!--                                                <div class="image img-cir img-40">-->
                            <!--                                                    <img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <h6>Michelle Moreno</h6>-->
                            <!--                                                    <p>Have sent a photo</p>-->
                            <!--                                                    <span class="time">3 min ago</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="mess__item">-->
                            <!--                                                <div class="image img-cir img-40">-->
                            <!--                                                    <img src="images/icon/avatar-04.jpg" alt="Diane Myers" />-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <h6>Diane Myers</h6>-->
                            <!--                                                    <p>You are now connected on message</p>-->
                            <!--                                                    <span class="time">Yesterday</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="mess__footer">-->
                            <!--                                                <a href="#">View all messages</a>-->
                            <!--                                            </div>-->
                            <!--                                        </div>-->
                            <!--                                    </div>-->
                            <!--                                    <div class="noti__item js-item-menu">-->
                            <!--                                        <i class="zmdi zmdi-email"></i>-->
                            <!--                                        <span class="quantity">1</span>-->
                            <!--                                        <div class="email-dropdown js-dropdown">-->
                            <!--                                            <div class="email__title">-->
                            <!--                                                <p>You have 3 New Emails</p>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="email__item">-->
                            <!--                                                <div class="image img-cir img-40">-->
                            <!--                                                    <img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <p>Meeting about new dashboard...</p>-->
                            <!--                                                    <span>Cynthia Harvey, 3 min ago</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="email__item">-->
                            <!--                                                <div class="image img-cir img-40">-->
                            <!--                                                    <img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <p>Meeting about new dashboard...</p>-->
                            <!--                                                    <span>Cynthia Harvey, Yesterday</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="email__item">-->
                            <!--                                                <div class="image img-cir img-40">-->
                            <!--                                                    <img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <p>Meeting about new dashboard...</p>-->
                            <!--                                                    <span>Cynthia Harvey, April 12,,2018</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="email__footer">-->
                            <!--                                                <a href="#">See all emails</a>-->
                            <!--                                            </div>-->
                            <!--                                        </div>-->
                            <!--                                    </div>-->
                            <!--                                    <div class="noti__item js-item-menu">-->
                            <!--                                        <i class="zmdi zmdi-notifications"></i>-->
                            <!--                                        <span class="quantity">3</span>-->
                            <!--                                        <div class="notifi-dropdown js-dropdown">-->
                            <!--                                            <div class="notifi__title">-->
                            <!--                                                <p>You have 3 Notifications</p>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="notifi__item">-->
                            <!--                                                <div class="bg-c1 img-cir img-40">-->
                            <!--                                                    <i class="zmdi zmdi-email-open"></i>-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <p>You got a email notification</p>-->
                            <!--                                                    <span class="date">April 12, 2018 06:50</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="notifi__item">-->
                            <!--                                                <div class="bg-c2 img-cir img-40">-->
                            <!--                                                    <i class="zmdi zmdi-accountMember-box"></i>-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <p>Your accountMember has been blocked</p>-->
                            <!--                                                    <span class="date">April 12, 2018 06:50</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="notifi__item">-->
                            <!--                                                <div class="bg-c3 img-cir img-40">-->
                            <!--                                                    <i class="zmdi zmdi-file-text"></i>-->
                            <!--                                                </div>-->
                            <!--                                                <div class="content">-->
                            <!--                                                    <p>You got a new file</p>-->
                            <!--                                                    <span class="date">April 12, 2018 06:50</span>-->
                            <!--                                                </div>-->
                            <!--                                            </div>-->
                            <!--                                            <div class="notifi__footer">-->
                            <!--                                                <a href="#">All notifications</a>-->
                            <!--                                            </div>-->
                            <!--                                        </div>-->
                            <!--                                    </div>-->
                            <!--                                </div>-->
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
        <!-- END HEADER DESKTOP-->

        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">data table</h3>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>username</th>
                                        <th>fullname</th>
                                        <th>email</th>
                                        <th>description</th>
                                        <th>date</th>
                                        <th>status</th>
                                        <th>role</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>A0010</td>
                                        <td>Lori Lynch</td>
                                        <td>Nguyen Van A</td>
                                        <td>
                                            <span class="block-email">john@example.com</span>
                                        </td>
                                        <td class="desc">iPhone X 64Gb Grey</td>
                                        <td>2018-09-29 05:57</td>
                                        <td>
                                            <span class="status--process">Processed</span>
                                        </td>
                                        <td>USER</td>
                                        <td>
                                            <div class="table-data-feature">
                                                <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                    <i class="zmdi zmdi-edit"></i>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                    <i class="zmdi zmdi-more"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>B0010</td>
                                        <td>Lori Lynch</td>
                                        <td>Nguyen Van A</td>
                                        <td>
                                            <span class="block-email">lyn@example.com</span>
                                        </td>
                                        <td class="desc">iPhone X 256Gb Black</td>
                                        <td>2018-09-25 19:03</td>
                                        <td>
                                            <span class="status--denied">Denied</span>
                                        </td>
                                        <td>MEMBER</td>
                                        <td>
                                            <div class="table-data-feature">
                                                <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                    <i class="zmdi zmdi-edit"></i>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                    <i class="zmdi zmdi-more"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <br>
                            <br>
                            <div class="user-data m-b-30">
                                <h3 class="title-3 m-b-30">
                                    <i class="zmdi zmdi-accountMember-calendar"></i>user data</h3>
                                <!--                                    <div class="filters m-b-45">-->
                                <!--                                        <div class="rs-select2&#45;&#45;dark rs-select2&#45;&#45;md m-r-10 rs-select2&#45;&#45;border">-->
                                <!--                                            <select class="js-select2" name="property">-->
                                <!--                                                <option selected="selected">All Properties</option>-->
                                <!--                                                <option value="">Products</option>-->
                                <!--                                                <option value="">Services</option>-->
                                <!--                                            </select>-->
                                <!--                                            <div class="dropDownSelect2"></div>-->
                                <!--                                        </div>-->
                                <!--                                        <div class="rs-select2&#45;&#45;dark rs-select2&#45;&#45;sm rs-select2&#45;&#45;border">-->
                                <!--                                            <select class="js-select2 au-select-dark" name="time">-->
                                <!--                                                <option selected="selected">All Time</option>-->
                                <!--                                                <option value="">By Month</option>-->
                                <!--                                                <option value="">By Day</option>-->
                                <!--                                            </select>-->
                                <!--                                            <div class="dropDownSelect2"></div>-->
                                <!--                                        </div>-->
                                <!--                                    </div>-->
                                <div class="table-responsive table-data">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <td>name</td>
                                            <td>role</td>
                                            <td>type</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <div class="table-data__info">
                                                    <h6>lori lynch</h6>
                                                    <span>
                                                                <a href="#">johndoe@gmail.com</a>
                                                            </span>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="role admin">admin</span>
                                            </td>
                                            <td>
                                                <div class="rs-select2--trans rs-select2--sm">
                                                    <select class="js-select2" name="property">
                                                        <option selected="selected">Full Control</option>
                                                        <option value="">Post</option>
                                                        <option value="">Watch</option>
                                                    </select>
                                                    <div class="dropDownSelect2"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="table-data__info">
                                                    <h6>lori lynch</h6>
                                                    <span>
                                                                <a href="#">johndoe@gmail.com</a>
                                                            </span>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="role user">user</span>
                                            </td>
                                            <td>
                                                <div class="rs-select2--trans rs-select2--sm">
                                                    <select class="js-select2" name="property">
                                                        <option value="">Full Control</option>
                                                        <option value="" selected="selected">Post</option>
                                                        <option value="">Watch</option>
                                                    </select>
                                                    <div class="dropDownSelect2"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="table-data__info">
                                                    <h6>lori lynch</h6>
                                                    <span>
                                                                    <a href="#">johndoe@gmail.com</a>
                                                                </span>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="role member">member</span>
                                            </td>
                                            <td>
                                                <div class="rs-select2--trans rs-select2--sm">
                                                    <select class="js-select2" name="property">
                                                        <option selected="selected">Full Control</option>
                                                        <option value="">Post</option>
                                                        <option value="">Watch</option>
                                                    </select>
                                                    <div class="dropDownSelect2"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
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
<script src="vendor/select2/select2.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
