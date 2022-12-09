<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <link rel="stylesheet" href="<c:url value='/styles/login.css'/> ">
        <link rel="stylesheet" href="<c:url value='/styles/footer.css'/> ">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--animation css-->   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <title>Login</title>
    </head>
    <body>
        <main class="login__registered">
            <div class="container animate__animated animate__zoomInDown">
                <div class="user signin"> 
                    <div class="login-img"><img src="<c:url value='/images/login/pianologin.jpg'/>" alt=""></div>
                    <div class="content">
                        <form action="Account" method="post">
                            <h2>SIGN IN</h2>
                            <c:if test="${message != null}">
                                <p><i>${message}</i></p>
                            </c:if>
                            <input type="hidden" name="action" value="signin">
                            <input type="text" placeholder="Username" id="name" name="username" required>
                            <input type="password" placeholder="Password" name="password"  required>
                            <input type="submit"  value="Sign In" >
                            <p class="signup-change">DON'T HAVE ACCOUNT? <a onclick="toggleFrom()">SIGN UP</a></p>
                        </form>
                    </div>
                </div>  
                <div class="user signup">
                    <div class="content">
                        <form action="Account" method="post">
                            <h2>SIGN UP</h2>
                            <c:if test="${message != null}">
                                <p><i>${message}</i></p>
                            </c:if>
                            <input type="hidden" name="action" value="signup">
                            <input type="text" placeholder="Username" name="username" value="${username}" required>
                            <input type="email" placeholder="Email" name="email" value="${email}" required>
                            <input type="password" placeholder="Input Password" name="password" required>
                            <input type="password" placeholder="Input Password Again" name="repassword" required>
                            <input type="submit"  value="Sign Up">
                            <p class="signup-change">HAVE AN ACCOUNT YET? <a onclick="toggleFrom()">SIGN IN</a></p>
                        </form>
                    </div>
                    <div class="login-img"><img src="<c:url value='/images/login/violinlogin.jpg'/>" alt=""></div>
                </div> 
            </div>
        </main>
        <script src="<c:url value='/script/script.js'/>"></script>

        <jsp:include page="/includes/footer.jsp" /> 