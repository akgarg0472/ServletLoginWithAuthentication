<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Home</title>
    <!-- bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .col-sm a {
            text-decoration: none;
        }

        .col-sm a:hover {
            text-decoration: underline white;
        }
    </style>
</head>

<body>
<%@include file="navbar.jsp" %>

<div class="container-fluid  primary-background m-0 p-0">
    <div class="container">
        <div class="jumbotron text-white p-4">
            <h3 class="display-4 text-center">Welcome...</h3>
            <marquee class="m-1" scrollamount="20" direction="right"><h3>Welcome to the Servlet Project website</h3>
            </marquee>
            <p>This website is a project website whose backend work is done using Java servlet API</p>
            <p>A Jakarta Servlet (formerly Java Servlet) is a Java software component that extends the capabilities of a
                server. Although servlets can respond to many types of requests, they most commonly implement web
                containers for hosting web applications on web servers and thus qualify as a server-side servlet web
                API.</p>
            <div class="text-center">
                <a href="login" class="btn btn-lg btn-outline-light" id="login-button"><span
                        class="fa fa-user-circle" id="user-logo-span"></span> Login</a>
                <a href="signup" class="btn btn-lg btn-outline-light me-2"><span class="fa fa-user-plus"></span>
                    Signup</a>
            </div>
        </div>
    </div>
</div>
<br>

<%--this is the HTML for cards of programming and subjects--%>
<div class="container p-5">
    <div class="row mb-3">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Java</h5>
                    <p class="card-text" style="text-align: justify;">Know about the Java Programming language. I am
                        not owner of any text content or image. All content copyright reserved to their respective
                        owner.</p>
                </div>
                <div class="text-center">
                    <a href="java" class="btn btn-primary mb-3" target="_blank">Read more</a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Python</h5>
                    <p class="card-text" style="text-align: justify;">Know about the Python Programming language. I am
                        not owner of any text content or image. All content copyright reserved to their respective
                        owner.</p>
                    <div class="text-center">
                        <a href="python" target="_blank" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Data Structures</h5>
                    <p class="card-text" style="text-align: justify;">Know about the Data Structures and algorithms. I
                        am not owner of any text content or image. All content copyright reserved to their respective
                        owner.</p>
                    <div class="text-center">
                        <a href="data-structures" target="_blank" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Computer Networks</h5>
                    <p class="card-text" style="text-align: justify;">Know about the Computer networks. I am not owner
                        of any text content or image. All content copyright reserved to their respective owner.</p>
                    <div class="text-center">
                        <a href="computer-networks" target="_blank" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">DBMS</h5>
                    <p class="card-text" style="text-align: justify;">Know about the DBMS. I am not owner of any text
                        content or image. All content copyright reserved to their respective owner.</p>
                    <div class="text-center">
                        <a href="dbms" target="_blank" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Operating System</h5>
                    <p class="card-text" style="text-align: justify;">Know about the Operating System. I am not owner of
                        any text content or image. All content copyright reserved to their respective owner.</p>
                    <div class="text-center">
                        <a href="os" target="_blank" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%-- footer code --%>
<div style="border: 2px solid black;background: #302340;">
    <div class="container text-center">
        <div class="row m-4 ">
            <div class="col-sm" style="text-align: left;">
                <address>
                    <h6 class="text-white">Developer: Akhilesh Garg</h6>
                    <h6 class="text-white">Email: akgarg0472@gmail.com</h6>
                    <h6 class="text-white">Contact: +91 9876543210</h6>
                </address>
            </div>
            <div class="col-sm" style="text-align: left;">

            </div>
            <div class="col-sm" style="text-align: left;">

                <a href="https://www.facebook.com/akgarg0407" target="_blank" class="text-white"><span
                        class="fa fa-facebook fa-sm">&ensp;&nbsp;</span>Facebook</a>
                <br>
                <a href="https://www.instagram.com/akgarg0407/" target="_blank" class="text-white"><span
                        class="fa fa-instagram fa-sm">&ensp;</span>Instagram</a>
                <br>
                <a href="https://www.linkedin.com/in/akgarg0472/" target="_blank" class="text-white"><span
                        class="fa fa-linkedin fa-sm">&ensp;</span>LinkedIn</a>
                <br>
                <a href="https://github.com/akgarg0472" target="_blank" class="text-white"><span
                        class="fa fa-github fa-sm">&ensp;</span>Github</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JavaScripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="resource/scripts/script.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>

</html>