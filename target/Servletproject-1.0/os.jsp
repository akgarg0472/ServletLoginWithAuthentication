<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Operating System (OS)</title>
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
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Operating_system_placement.svg/1200px-Operating_system_placement.svg.png"
                 width="250px" height="250px" alt="OS (Operating System)">
        </div>
        <div class="card-body" style="text-align: justify">
            <p>An operating system (OS) is system software that manages computer hardware, software resources, and
                provides common services for computer programs.<br>
                Time-sharing operating systems schedule tasks for efficient use of the system and may also include
                accounting software for cost allocation of processor time, mass storage, printing, and other
                resources.</p>
            <p>For hardware functions such as input and output and memory allocation, the operating system acts as an
                intermediary between programs and the computer hardware, although the application code is usually
                executed directly by the hardware and frequently makes system calls to an OS function or is interrupted
                by it. Operating systems are found on many devices that contain a computer – from cellular phones and
                video game consoles to web servers and supercomputers.</p>
            <p>The dominant general-purpose desktop operating system is Microsoft Windows with a market share of
                around 76.45%. macOS by Apple Inc. is in second place (17.72%), and the varieties of Linux are
                collectively in third place (1.73%). In the mobile sector (including smartphones and tablets),
                Android's share is up to 72% in the year 2020. According to third quarter 2016 data, Android's share
                on smartphones is dominant with 87.5 percent with also a growth rate of 10.3 percent per year, followed
                by Apple's iOS with 12.1 percent with per year decrease in market share of 5.2 percent, while other
                operating systems amount to just 0.3 percent. Linux distributions are dominant in the server and
                supercomputing sectors. Other specialized classes of operating systems (special-purpose operating
                systems), such as embedded and real-time systems, exist for many applications. Security-focused
                operating systems also exist. Some operating systems have low system requirements (i.e. light-weight
                Linux distribution). Others may have higher system requirements.</p>
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