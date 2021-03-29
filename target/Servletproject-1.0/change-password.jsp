<%
    String forgotEmail = (String) session.getAttribute("forgot-email");

    if (forgotEmail == null) {
        response.sendRedirect("index");
    }
%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="navbar.jsp" %>

<div style="margin: 5% 25% 0 25%; border: 2px solid #ffffff; border-radius: 20px;">
    <div class="card" style="border-radius: 20px;">
        <div class=" text-center card-header" style="border-top-left-radius: 20px;border-top-right-radius: 20px">
            <h3>Change Password</h3>
        </div>
        <div class="text-center mt-2 mb-2">
            <span class="fa fa-unlock" style="font-size: 50px"></span>
        </div>
        <div class="card-body">
            <form action="update-password" method="post" id="update-password-form">
                <div class="mb-3">
                    <label for="new-password" class="form-label">Enter New Password</label>
                    <input type="password" class="form-control" id="new-password" placeholder="Enter new Password"
                           autocomplete="new-password" required>
                    <br>
                    <div class="mb-3">
                        <label for="confirm-new-password" class="form-label">Confirm New Password</label>
                        <input type="password" class="form-control" id="confirm-new-password"
                               placeholder="Confirm New Password" autocomplete="new-password" required>
                    </div>
                </div>
                <%--                <div class="container text-center">--%>
                <button type="submit" class="btn btn-primary mt-2">Change Password</button>
                <%--                </div>--%>
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
