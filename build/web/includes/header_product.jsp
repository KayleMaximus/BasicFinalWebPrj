<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Musician Dream</title>
        <link rel="stylesheet" href="<c:url value='/styles/header.css'/> ">
        <link rel="stylesheet" href="<c:url value='/styles/footer.css'/> ">
        <link rel="stylesheet" href="<c:url value='/CSS/font.css'/> ">
        <link rel="stylesheet" href="<c:url value='/CSS/reset.css'/> ">
        <link rel="stylesheet" href="<c:url value='/CSS/style.css'/> ">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
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
        <link rel="manifest" href="<c:url value='/images/manifest.json'/>">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
    </head>

    <body>
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
                            <a href="<c:url value='/nav/Product'/>">Product</a></li>
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
                        <a href="<c:url value='/nav/Cart/showCart'/>">
                            <button class="login-btn"><i class="fa fa-shopping-cart"></i></button>
                        </a>
                    </div>  
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


       