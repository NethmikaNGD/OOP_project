<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CounseEnroll</title>
<%--        <link rel="stylesheet" href="StyleSheet/mainStyle.css">--%>
<%--        <link rel="stylesheet" href="StyleSheet/navi.css">--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />--%>
<%--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
    </head>

    <body>
    <!-- Navbar -->
    <!-- Navbar -->
    <nav>
        <label class="logo">CourseEnroll</label>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">Courses</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Feedback</a></li>
        </ul>
    </nav>

    <div class="login-form">
        <div class="form-header">
            <p class="header-form"> Welcome Back</p>
        </div>

        <!-- Login Form -->
        <form action="LoginSer" method="post">
            <div class="userInput">
                <input type="text" name="username" placeholder="Username or Email" class="userinput" required>
                <input type="password" name="password" placeholder="Password" class="userinput" required>
            </div>

            <div class="password-forget">
                <a href="#forgetpass" class="txt">Forget Password?</a>
            </div>

            <div class="button">
                <button type="submit" class="loginBttn action">Login</button>
                <a href="register.jsp" class="loginBttn action1">Register</a>
            </div>
        </form>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
