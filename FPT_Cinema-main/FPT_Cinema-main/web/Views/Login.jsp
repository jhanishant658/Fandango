<%-- 
    Document   : Login
    Created on : Oct 17, 2023, 12:42:13 AM
    Author     : PC-Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie" %>

<%
    // Get cookies only once
    Cookie[] cookies = request.getCookies();
    String savedUsername = "";
    String savedPassword = "";
    boolean rememberMeChecked = false;

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("rememberUser")) {
                savedUsername = cookie.getValue();
                rememberMeChecked = true;
            }
            if (cookie.getName().equals("rememberPass")) {
                savedPassword = cookie.getValue();
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FPT Cinema</title>
        <link rel="stylesheet" href="Css/styleLogin.css?v=2"/>
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="icon" type="image/x-icon" href="https://th.bing.com/th/id/R.e15d750fe41eb99350f0c56e6b66b653?rik=QJI66s2o67Q7jw&pid=ImgRaw&r=0">
    </head>
    <body>
        <div class="login-form">
            <div class="form-header">
                <a href="/Project_PRJ301/Home"><span class="material-symbols-outlined icon">
                        Home   
                    </span></a>
            </div>
            <h2>Đăng nhập</h2> 
            <h5 style="color: red">${error}</h5>
            <form action="Login" method="post">  
                <div class="form-group">
                    <label for="username">Tên tài khoản</label>
                    <input type="text" name="username" placeholder="Tên tài khoản" 
                           value="<%= savedUsername %>" required> 
                </div>

                <div class="form-group password-container">
                    <label for="password">Mật khẩu</label>
                    <div class="input-wrapper">
                        <input type="password" id="password" name="password" placeholder="Mật khẩu" 
                               value="<%= savedPassword %>" required>
                        <span class="material-symbols-outlined icon1" onclick="togglePasswordVisibility()">
                            visibility_off
                        </span>
                    </div>
                </div>

                <div class="form-group remember-me-container">
                    <input type="checkbox" name="remember" id="remember" <%= rememberMeChecked ? "checked" : "" %> > 
                    <label for="remember">Remember Me</label>
                </div>

                <p style="text-align: right"><a class="forget" href="/Project_PRJ301/ForgetPass">Quên mật khẩu?</a></p> 

                <button type="submit">Đăng nhập</button>

                <p>Bạn chưa có tài khoản? <a href="/Project_PRJ301/Register"><span class="forget">Đăng ký</span></p></a>
            </form>
        </div>

        <script>
            function togglePasswordVisibility() {
                var passwordInput = document.getElementById("password");
                var visibilitySpan = document.querySelector(".material-symbols-outlined.icon1");
                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                    visibilitySpan.textContent = "visibility";
                } else {
                    passwordInput.type = "password";
                    visibilitySpan.textContent = "visibility_off";
                }
            }
        </script>
    </body>
</html>
