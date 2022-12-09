<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>shop cart - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="<c:url value='/CSS/Cart/shop_cart.css'/> ">
        <link rel="stylesheet" href="<c:url value='/styles/header.css'/> ">
        <link rel="stylesheet" href="<c:url value='/styles/footer.css'/> ">
        <link rel="stylesheet" href="<c:url value='/CSS/font.css'/> ">
        <link rel="stylesheet" href="<c:url value='/CSS/reset.css'/> ">
        <link rel="stylesheet" href="<c:url value='/CSS/style.css'/> ">
        <link rel="apple-touch-icon" sizes="57x57" href="<c:url value='/images/favicon/apple-icon-57x57.png'/>">
        <link rel="apple-touch-icon" sizes="60x60" href="<c:url value='/images/favicon/apple-icon-60x60.png'/>">
        <link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/images/favicon/apple-icon-72x72.png'/>">
        <link rel="apple-touch-icon" sizes="76x76" href="<c:url value='/images/favicon/apple-icon-76x76.png'/>">
        <link rel="apple-touch-icon" sizes="114x114" href="<c:url value='/images/favicon/apple-icon-114x114.png'/>">
        <link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/images/favicon/apple-icon-120x120.png'/>">
        <link rel="apple-touch-icon" sizes="144x144" href="<c:url value='/images/favicon/apple-icon-144x144.png'/>">
        <link rel="apple-touch-icon" sizes="152x152" href="<c:url value='/images/favicon/apple-icon-152x152.png'/>">
        <link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/images/favicon/apple-icon-180x180.png'/>">
        <link rel="icon" type="image/png" sizes="192x192"  href="<c:url value='/images/favicon/android-icon-192x192.png'/>">
        <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/images/favicon/favicon-32x32.png'/>">
        <link rel="icon" type="image/png" sizes="96x96" href="<c:url value='/images/favicon-96x96.png'/>">
        <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/images/favicon-16x16.png'/>">
    </head>

    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div id="main">
            <!-- HEADER -->
            <div id="header">
                <!-- nav -->
                <div id="wrap-nav">
                    <ul id="nav">
                        <li><a href="<c:url value='/index.jsp'/>">Home</a></li>
                        <li><a href="">
                                Course
                                <i class="nav-arrow-down ti-angle-down"></i></a>
                            <ul class="subnav">
                                <li class="subnav-item"><a href="<c:url value='/nav/Course'/>">Grade 1</a></li>
                                <li class="subnav-item"><a href="<c:url value='/nav/Course'/>">Grade 2</a></li>
                                <li class="subnav-item"><a href="<c:url value='/nav/Course'/>">Grade 3</a></li>
                            </ul>
                        </li>        
                        <li>
                            <a href="<c:url value='/nav/Product'/> ">Product</a></li>
                        <li>
                            <a href="">
                                More
                                <i class="nav-arrow-down ti-angle-down"></i>
                            </a>
                            <ul class="subnav">
                                <li class="subnav-item"><a href="">About Us</a></li>
                                <li class="subnav-item"><a href="">Books</a></li>
                                <li class="subnav-item"><a href="">Contact</a></li>
                            </ul>
                        </li>                   
                    </ul>
                    <div class="wrap-login-btn">
                        <a href="<c:url value='/nav/login.jsp'/> ">
                            <button class="login-btn">Log In</button>
                        </a>
                    </div>  
                    <div class="wrap-signup-btn">
                        <a href="<c:url value='/nav/login.jsp'/> ">
                            <button class="signup-btn">Sign Up</button>
                        </a>
                    </div>  
                </div>
                <!-- end nav -->
            </div>
            <!-- END HEADER -->

        </div>


