<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Java Programming Language</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="resource/styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<%@include file="navbar.jsp" %>

<div style="margin: 5% 25% 0 25%; border: 2px solid #ffffff; border-radius: 20px;">
    <div class="card" style="border-radius: 20px;">
        <div class="text-center mt-2 mb-2">
            <img src="https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/1200px-Java_programming_language_logo.svg.png"
                 width="250px" height="250px" alt="Java">
        </div>
        <div class="card-body" style="text-align: justify">
            <p>Java is a class-based, object-oriented programming language that is designed to have as few
                implementation dependencies as possible. It is a general-purpose programming language intended to let
                application developers write once, run anywhere (WORA), meaning that compiled Java code can run on
                all platforms that support Java without the need for recompilation. Java applications are typically
                compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying
                computer architecture.</p>
            <p>The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The
                Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are
                typically not available in traditional compiled languages. As of 2019, Java was one of the most popular
                programming languages in use according to GitHub, particularly for client-server web applications, with
                a reported 9 million developers.</p>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</body>
</html>