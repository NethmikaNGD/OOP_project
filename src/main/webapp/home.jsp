<%--
  Created by IntelliJ IDEA.
  User: Dinet
  Date: 3/22/2025
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<html>
<head>
    <title>CourseEnroll | Courses</title>

    <link rel="stylesheet" href="StyleSheet/navi.css">
    <link rel="stylesheet" href="StyleSheet/homeStyles.css">
    <link rel="stylesheet" href="StyleSheet/cardStyle.css">
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
</head>
<body>
<%--navigation bar--%>
<nav>
    <!-- Checkbox for toggling menu -->
    <input type="checkbox" id="check">
    <!-- Menu icon -->
    <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
    </label>
    <!-- Site logo -->
    <label class="logo">CourseEnroll</label>
    <!-- Search Bar -->
    <div class="search-container">
        <input type="text" placeholder="Find a course..." class="search-input">
        <button type="submit" class="search-btn"><i class="fas fa-search"></i>Search</button>
    </div>
    <!-- Navigation links -->
    <ul>
        <li><a class="active" href="#">Courrse</a></li>
        <li><a href="#">Catagory</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="CreateCourse.jsp">Create Course</a></li>
    </ul>
</nav>
<%--navigation bar--%>

<div class="Course-header">
    <p class="course-header">Most Popular Courses</p>
</div>

<br>
<div class="Course-header">
    <p class="course-header">Recommended Courses</p>
</div>

<div class = "Course-Section-area1">
    <%
        List<String[]> courses = (List<String[]>) request.getAttribute("courses");
        if (courses != null && !courses.isEmpty()) { // Ensure courses list is not null or empty
            for (String[] course : courses) {
    %>
    <div class="card">
        <div class="card-image">
            <img src="assets/courseIMG.png" alt="Course Thumbnail">
        </div>
        <div class="card-content">
            <h3><%= course[0] %></h3> <!-- Course Name -->
            <p class="authors"><%= course[1] %></p> <!-- Author -->
            <div class="rating-price">
                <div class="rating">
                    <span>4.5</span>
                    <span class="stars">★★★★★</span>
                    <span class="reviews">(45,406)</span>
                </div>
                <div class="price"><%= course[2] %></div> <!-- Price -->
            </div>
<%--            <p class="description"><%= course[3] %></p> <!-- Description -->--%>
            <div class="badge">New</div>
        </div>
    </div>
    <%
        } // Closing loop
    } else { // Handle case when no courses are available
    %>
    <p>No courses available.</p>
    <%
        } // Closing if condition
    %>



</div><!-- course-section-area-->

</body>
</html>
