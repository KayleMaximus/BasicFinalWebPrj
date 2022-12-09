<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Musician Dream</title>
        <!--<link rel="stylesheet" href="<c:url value='/CSS/style.css'/> ">-->
        <!--<link rel="stylesheet" href="<c:url value='/CSS/font.css'/> ">-->
        <!--<link rel="stylesheet" href="<c:url value='/CSS/reset.css'/> ">-->
        <link rel="stylesheet" href="<c:url value='/styles/header.css'/> ">
        <link rel="stylesheet" href="<c:url value='/styles/footer.css'/> ">
        <!--<link rel="stylesheet" href="<c:url value='/styles/main.css'/>">-->
        <!--<link rel="stylesheet" href="<c:url value='/styles/reset.css'/>">-->
        <link rel="stylesheet" href=<c:url value='/styles/checkout.css'/>>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' >
        <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" >
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
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
<!--                    <div class="wrap-login-btn">
                        <a href="<c:url value='/nav/Cart/showCart'/>">
                            <button class="login-btn"><i class="fa fa-shopping-cart"></i></button>
                        </a>
                    </div>  -->
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


