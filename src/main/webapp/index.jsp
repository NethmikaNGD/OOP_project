<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CounseEnroll</title>
        <link rel="stylesheet" href="StyleSheet/mainStyle.css">
        <link rel="stylesheet" href="StyleSheet/navi.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<%--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
    </head>

    <body>
    <!-- Navbar -->
    <nav>
        <!-- Checkbox for toggling menu -->
        <input type="checkbox" id="check">
        <!-- Menu icon -->
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <!-- Site logo -->
        <label class="logo">CourseEnroll</label>
        <!-- Navigation links -->
        <ul>
            <li><a class="active" href="#">Courrse</a></li>
            <li><a href="#">Catagory</a></li>
<%--            <li><a href="#">Profile</a></li>--%>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Feedback</a></li>
        </ul>
    </nav>

    <div class="loging-form">
        <div class="form-header">
            <p class="header-form"> Welcome Back</p>
        </div>
        <div class="userInput">
            <label>
                <input type="email"  name="userName" placeholder="UserName or Email" class="userinput">
                <input type="password"  name="usePassword" placeholder="Password" class="userinput">
            </label>
        </div>
        <div class = "pssword-forget">
          <a href="#forgetpass" class="txt" > <p class="txt" title="Create the new Password">Forgett Password ?</p></a>
        </div>
        <div class="button">
            <a href="home.jsp" class="loginBttn "><button class="loginBttn action">Login</button></a>
            <a href="register.jsp" class="loginBttn"><button class="loginBttn action1">Register</button></a>
        </div>

    </div>






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
