<%--
  Created by IntelliJ IDEA.
  User: UserName
  Date: 27-03-2021
  Time: 08:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="primary-background">
<%@include file="navbar.jsp" %>

<%--this is the html code for the login--%>
<main class="d-flex primary-background">
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header" style="background: #ffffff; border-bottom-color: grey">
                        <h3 class="text-center text-primary text-dark p-2"><span class="fa fa-user-plus"></span>
                            Register Here
                        </h3>
                    </div>
                    <div class="card-body">
                        <form action="submit_signup_form" method="post" id="signup_form">
                            <div class="mb-3">
                                <label for="signup-username" class="form-label">Name</label>
                                <input type="text" class="form-control" id="signup-username" name="signup-username"
                                       aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <div class="mb-3">
                                <label for="signup-email" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="signup-email" name="signup-email"
                                       aria-describedby="emailHelp" placeholder="Enter Email address">
                            </div>
                            <div class="mb-3">
                                <label for="signup-password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="signup-password" name="signup-password"
                                       placeholder="Enter Password" required>
                            </div>
                            <div class="mb-3">
                                <label for="signup-confirm-password" class="form-label">Confirm Password</label>
                                <input type="password" class="form-control" id="signup-confirm-password"
                                       name="signup-confirm-password" placeholder="Confirm Password" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        Already Registered, <a href="login">Login here</a>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="resource/scripts/script.js"></script>
</body>

</html>
