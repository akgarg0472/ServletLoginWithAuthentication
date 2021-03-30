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
    <title>Dashboard - <%= user == null ? "" : user.getUsername()%>
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
            <h3>Dashboard</h3>
        </div>
        <div class="text-center mt-2 mb-2">
            <img class="card-img-top text-center img-fluid"
                 src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/220px-User_icon_2.svg.png"
                 style="height: 200px; width: 200px;" alt="Profile Picture">
        </div>
        <div class="card-body">
            <h5 class="card-title"><strong>Name:</strong> <%= user == null ? "" : user.getUsername()%>
                <h5 class="card-title"><strong>Email:</strong> <%= user == null ? "" : user.getEmail()%>
                </h5>
                <br>
                <p class="card-text">This is the dashboard of servlet project website. Thank you for registering with
                    us</p>
                <br>
                <div class="text-center">
                    <a href="edit-profile" class="btn btn-warning">Edit Profile</a>
                </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="resource/scripts/script.js"></script>
</body>
</html>