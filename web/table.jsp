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
                                        <th>phone</th>
                                        <th>date</th>
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
                                            0981522133
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
