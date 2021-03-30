<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Chrome, Safari, Edge, Opera */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }
    </style>
</head>

<body class="primary-background">
<%@include file="navbar.jsp" %>
<br>

<main class="d-flex align-items-center mt-5 primary-background">
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-header" style="background: #ffffff; border-bottom-color: grey">
                        <h3 class="text-center text-primary text-dark p-2"><span class="fa fa-key"></span>
                            Forgot Password
                        </h3>
                    </div>
                    <div class="card-body">
                        <form action="submit_forgot_password_form" method="post" id="forgot_password_form">
                            <div class="mb-3">
                                <label for="forgot-password-email" class="form-label">Enter registered email</label>
                                <input type="email" class="form-control" id="forgot-password-email"
                                       name="forgot-password-email" required placeholder="Enter email"
                                       autocomplete="username">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary" id="send-email-button">Send OTP</button>
                            </div>
                            <br>
                            <div class="container" style="display: none" id="email-send-spinner">
                                <div class="spinner-border text-center text-primary"
                                     style="position: relative; top: 70%; left: 40%;width: 3rem; height: 3rem;"
                                     role="status"></div>
                                <h3 class="text-primary text-center">Sending OTP...</h3>
                            </div>
                        </form>

                        <form action="verify-otp" method="post" id="forgot_password_otp_form"
                              style="display: none">
                            <div class="mb-3">
                                <label for="forgot-password-otp-text" class="form-label">Enter OTP</label>
                                <input type="text" class="form-control" id="forgot-password-otp-text"
                                       title="Enter OTP"
                                       name="forgot-password-otp-entered" placeholder="Enter OTP" pattern="[0-9]{6}"
                                       maxlength="6" minlength="6" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary" id="send-otp-button">Verify OTP</button>
                            </div>
                            <br>
                        </form>
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