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
    <style>.lds-roller {
        display: inline-block;
        position: relative;
        width: 80px;
        height: 80px;
    }

    .lds-roller div {
        animation: lds-roller 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
        transform-origin: 40px 40px;
    }

    .lds-roller div:after {
        content: " ";
        display: block;
        position: absolute;
        width: 7px;
        height: 7px;
        border-radius: 50%;
        background: #006dd7;
        margin: -4px 0 0 -4px;
    }

    .lds-roller div:nth-child(1) {
        animation-delay: -0.036s;
    }

    .lds-roller div:nth-child(1):after {
        top: 63px;
        left: 63px;
    }

    .lds-roller div:nth-child(2) {
        animation-delay: -0.072s;
    }

    .lds-roller div:nth-child(2):after {
        top: 68px;
        left: 56px;
    }

    .lds-roller div:nth-child(3) {
        animation-delay: -0.108s;
    }

    .lds-roller div:nth-child(3):after {
        top: 71px;
        left: 48px;
    }

    .lds-roller div:nth-child(4) {
        animation-delay: -0.144s;
    }

    .lds-roller div:nth-child(4):after {
        top: 72px;
        left: 40px;
    }

    .lds-roller div:nth-child(5) {
        animation-delay: -0.18s;
    }

    .lds-roller div:nth-child(5):after {
        top: 71px;
        left: 32px;
    }

    .lds-roller div:nth-child(6) {
        animation-delay: -0.216s;
    }

    .lds-roller div:nth-child(6):after {
        top: 68px;
        left: 24px;
    }

    .lds-roller div:nth-child(7) {
        animation-delay: -0.252s;
    }

    .lds-roller div:nth-child(7):after {
        top: 63px;
        left: 17px;
    }

    .lds-roller div:nth-child(8) {
        animation-delay: -0.288s;
    }

    .lds-roller div:nth-child(8):after {
        top: 56px;
        left: 12px;
    }

    @keyframes lds-roller {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
    }
    </style>
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
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary mt-2" id="change-password-button">Change Password
                    </button>
                </div>
                <br>
                <div class="text-center" id="my-change-password-spinner" style="display: none">
                    <div class="lds-roller">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                    <h5 style="color: #006dd7">Processing...</h5>
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