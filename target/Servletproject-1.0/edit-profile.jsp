<%@page import="com.akgarg.entity.User" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setHeader("Expires", "0"); // Proxies.

    User user = (User) session.getAttribute("currentLoginUser");

    if (user == null) {
        response.sendRedirect("login");
    }
%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Profile - <%= user == null ? "" : user.getUsername()%>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="profile_navbar.jsp" %>

<div style="margin: 5% 25% 0 25%; border: 2px solid black">
    <div class="card">
        <div class=" text-center card-header">
            <h3>Edit Profile</h3>
        </div>
        <div class="text-center mt-2 mb-2" style="display: none" id="update-profile-result-div">
            <h3 id="update-profile-result-message"></h3>
        </div>
        <div class="text-center mt-2 mb-2">
            <img class="card-img-top text-center img-fluid"
                 src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/220px-User_icon_2.svg.png"
                 style="height: 200px; width: 200px;" alt="Profile Picture">
        </div>
        <div class="card-body">
            <form action="update-profile-data" method="post" id="update-profile-form">
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username"
                           value="<%=user==null ? "" : user.getUsername()%>" readonly>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email"
                               value="<%=user==null ? "" : user.getEmail()%>" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Enter New Password</label>
                        <input type="password" class="form-control" id="password" name="new-password" autocomplete="">
                    </div>
                    <div class="mb-3">
                        <label for="confirm-password" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" id="confirm-password" name="confirm-password"
                               autocomplete="">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="profile" class="btn btn-danger">Cancel</a>
                    </div>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="resource/scripts/script.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
