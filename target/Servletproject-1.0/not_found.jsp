<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Page not found</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <style>
        body {
            background: #cccfcf;
        }

        .card h1 {
            font-size: 50px !important;
        }

        .card p {
            font-size: 30px;
        }

        .card-background {
            background: #dedede;
        }

        .card-border {
            border: 2px dotted #cccfcf;
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <div class="card card-border">
        <h1 class="card-header text-center">Error 404</h1>
        <div class="card-body card-background">
            <br>
            <div class="container text-center">
                <img src="https://www.gstatic.com/youtube/src/web/htdocs/img/monkey.png" alt="monkey error">
                <br>
                <p class="text-danger"> The requested URL was not found on the server</p>
                <br>
                <a href="index" class="btn btn-success">Go to Homepage</a>
            </div>
        </div>
    </div>
</div>
</body>

</html>