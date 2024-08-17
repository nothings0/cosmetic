<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sign In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./style/login.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous"
          referrerpolicy="no-referrer"
        />
    </head>
    <body>
    <div class="container" id="container">
        <div class="form-container sign-in">
            <form action="" method="post">
                <h1>Sign In</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your email password</span>
                <input type="text" name="emailphone" placeholder="Email">
                <input type="password" name="password" placeholder="Password">
                <c:if test="${error_login != null}">
                    <p style="color: red; margin: 10px 0;">${error_login}</p>
                </c:if>
                <div style="width: 100%; display: flex; justify-content: flex-end">
                    <a href="forgot-password">Forget Your Password?</a>
                </div>
                <button type="submit">Sign In</button>
                <p>Bạn chưa có tài khoản <a href="register">Đăng ký ngay</a></p>
            </form>
        </div>
    </div>

    <!--<script src="./style/login.js"></script>-->
   </body>
</html>