<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="./style/login.css" />
    <title>Document</title>
  </head>
  <body>
     <div class="container" id="container">
        <div class="form-container sign-up">
            <form action="" method="post">
                <h1>Create Account</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for registeration</span>
                <!--<input type="text" name="name" placeholder="Name">-->
                <input type="email" name="email" placeholder="Email">
                 <span style="color: red">${err_email}</span>
<!--                <input type="text" name="phone" placeholder="Phone">
                 <span style="color: red">${err_phone}</span>-->
                <input type="password" name="password" placeholder="Password">
                <input type="password" name="repassword" placeholder="Repassword">
                <span style="color: red">${err_repassword}</span>
                <button type="submit">Sign Up</button>
                <p>Đã có tài khoản <a href="login">Đăng nhập ngay</a></p>
            </form>
        </div>
    </div>
  </body>
</html>