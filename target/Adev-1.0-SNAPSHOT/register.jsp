<%--
  Created by IntelliJ IDEA.
  User: HOME
  Date: 11/14/2021
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="./assets/css/signup.css">
    <link rel="stylesheet"
          href="./assets/font/fontawesome-free-5.15.4-web%20(1)/fontawesome-free-5.15.4-web/css/all.min.css">
    <title>Title</title>
</head>
<body>
<div class="main" style="height: 100vh">
    <div class="container" style="border-radius: 5px">
        <form id="form" class="form" action="/TestJSP/RegisterController" method="post">

            <div class="alert alert-danger" role="alert" style="color: red">
                <p>${same}</p>
            </div>

            <div class="header">
                <h3 style="text-transform: uppercase">Register</h3>
            </div>
            <div class="user">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="UserName" name="username" value="${nameuser}" style="padding-left: 6px"
                       required>


            </div>
            <div class="email">
                <i class="fas fa-pen"></i>
                <input type="text" placeholder="Email Address" name="email" style="padding-left: 6px" required>

            </div>
            <div class="pass">

                <i class="fas fa-key"></i>
                <input id="ip-pass" class="id_password" type="password" placeholder="Password" name="password"
                       style="padding-left: 6px"
                       required>
                <i class="icon-eyes fas fa-eye" id="togglePassword"></i>
            </div>
            <div class="pass">

                <i class="fas fa-key"></i>
                <input id="ip-pass1" type="password" placeholder="Confirm Password" name="confirm"
                       style="padding-left: 6px" required>
                <!-- <i class="icon-eyes fas fa-eye"></i> -->
            </div>
            <div class="rules">
                <input type="checkbox" name="rules" required>
                <p>I Agree To The Term & Conditions</p>
            </div>
            <div class="button" style="border-radius: 5px">
                <input type="submit" value="Register" readonly>
            </div>
            <!-- <div class="social">
                <p>Or Login with</p>
                <div class="icon-social">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-google"></i>
                </div>
            </div> -->
            <div class="sign-up">
                <p>Dont have an Account ?</p>
                <a href="/TestJSP/login.jsp">Sign In</a>
            </div>

        </form>
    </div>
</div>
<script>
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('.id_password');

    togglePassword.addEventListener('click', function (e) {
        // toggle the type attribute
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        // toggle the eye slash icon
        this.classList.toggle('fa-eye-slash');
    });
</script>
</body>
</html>
