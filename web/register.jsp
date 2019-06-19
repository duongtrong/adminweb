<%@ page import="simpleweb.entity.AccountMember" %>
<%--
  Created by IntelliJ IDEA.
  User: trangduong
  Date: 6/19/2019
  Time: 5:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    AccountMember.Role[] roles = (AccountMember.Role[]) request.getAttribute("roles");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="css/theme.css" rel="stylesheet" media="all">
</head>
<body class="animsition">
<div class="page-wrapper">
    <div class="page-content--bge5">
        <div class="container">
            <div class="login-wrap">
                <div class="login-content">
                    <div class="login-logo">
                        <img src="images/icon/logo.png" alt="CoolAdmin">
                    </div>
                    <div class="login-form">
                        <form action="/register" method="post">
                            <div class="row form-group">
                                <div class="col-sm-6">
                                    <label>Username</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Enter Username">
                                </div>
                                <div class="col-sm-6">
                                    <label>Email Address</label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Enter Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input class="au-input au-input--full" type="password" name="password" placeholder="Enter Password">
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input class="au-input au-input--full" type="password" name="confirmPassword" placeholder="Confirm Password">
                            </div>
                            <div class="form-group">
                                <label>Full name</label>
                                <input class="au-input au-input--full" type="text" name="fullName" placeholder="Enter fullname">
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input class="au-input au-input--full" type="text" name="phoneNumber" placeholder="Enter phone number">
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="au-input au-input--full" type="text" name="address" placeholder="Enter address">
                            </div>
                            <div class="form-group">
                                <label>Roles</label>
                                <select name="role" class="form-control">
                                    <%
                                        for (AccountMember.Role r : roles) {
                                    %>
                                        <option value="<%= r.getValue()%>">
                                            <%= r.name()%>
                                        </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <br>
                            <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">register</button>
                        </form>
                        <div class="register-link">
                            <p>
                                Already have accountMember?
                                <a href="/login">Sign In</a>
                            </p>
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
<script src="js/main.js"></script>
</body>
</html>

