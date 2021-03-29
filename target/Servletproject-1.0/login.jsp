<%@ page import="com.akgarg.entity.User" %>
<%
    User user = (User) session.getAttribute("currentLoginUser");

    if (user != null) {
        response.sendRedirect("dashboard.jsp");
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="primary-background">
<%@include file="login-navbar.jsp" %>

<%--this is the html code for the login--%>
<main class="d-flex align-items-center mt-5 primary-background">
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header" style="background: #ffffff; border-bottom-color: grey">
                        <h3 class="text-center text-primary text-dark p-2"><span class="fa fa-user-circle"></span>
                            Login
                        </h3>
                    </div>
                    <div class="card-body">
                        <form action="submit_login_form" method="post" id="login_form">
                            <div class="mb-3">
                                <label for="login-username-email" class="form-label">Email</label>
                                <input type="text" class="form-control" id="login-username-email"
                                       name="login-username" aria-describedby="emailHelp" required
                                       placeholder="Enter Email" autocomplete="username" autofocus>
                            </div>
                            <div class="mb-3">
                                <label for="login-password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="login-password" name="login-password"
                                       placeholder="Enter Password" autocomplete="current-password" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                            <a style="text-decoration:none" href="forgot_password">Forgot Password?</a>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        Don't have an account, <a href="signup">Create a new one</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="resource/scripts/script.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>

</html>
