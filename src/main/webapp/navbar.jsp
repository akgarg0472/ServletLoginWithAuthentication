<%@ page import="com.akgarg.entity.User" %>
<%
    User user = (User) session.getAttribute("currentLoginUser");
%>
<nav class="navbar navbar-expand-lg navbar-dark primary-background navbar-fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="index"><span class="fa fa-certificate"></span> Servlet Project</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://www.linkedin.com/in/akgarg0472/" target="_blank">About me</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Projects
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="https://github.com/akgarg0472" target="_blank">Java</a></li>
                        <li><a class="dropdown-item" href="https://github.com/akgarg0472" target="_blank">C++</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="https://github.com/akgarg0472" target="_blank">Console
                            Projects</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-us-anchor" onclick="showContactInfo()">Contact us</a>
                </li>
            </ul>

            <ul class="d-flex navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page"
                       href="profile"><strong><%= user == null ? "My Account" : user.getUsername() %>
                    </strong><span class="fa fa-angle-down"></span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>