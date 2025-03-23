<%--
  Created by IntelliJ IDEA.
  User: Dinet
  Date: 3/22/2025
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course</title>
</head>
<body>
    <div class="Course-form">
        <h2>Create Course</h2>
        <form action="CreateCourse" method="post">
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required><br><br>

            <label for="courseName">Author Name:</label>
            <input type="text" id="authorName" name="authorName" required><br><br>

            <label for="courseName">Price:</label>
            <input type="text" id="price" name="price" required><br><br>

            <label for="courseDescription">Course Description:</label>
            <textarea id="courseDescription" name="courseDescription" required></textarea><br><br>

            <a href="home.jsp"><button type="submit">Create Course</button></a>
        </form>
    </div>

</body>
</html>
