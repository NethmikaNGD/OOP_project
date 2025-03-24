<%--
  Created by IntelliJ IDEA.
  User: Dinet
  Date: 3/23/2025
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
</head>
<body>
<h2>Student & Instructor Registration</h2>

<form action="RegisterSer" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required><br><br>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" required><br><br>

    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="email">Email Address:</label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="birthDate">Birth Date:</label>
    <input type="date" id="birthDate" name="birthDate" required><br><br>

    <label>Gender:</label>
    <input type="radio" id="male" name="gender" value="Male" required>
    <label for="male">Male</label>

    <input type="radio" id="female" name="gender" value="Female">
    <label for="female">Female</label>

    <input type="radio" id="other" name="gender" value="Other">
    <label for="other">Other</label><br><br>

    <label for="role">Role:</label>
    <select id="role" name="role" required>
        <option value="Student">Student</option>
        <option value="Instructor">Instructor</option>
    </select><br><br>

    <label for="password">Create Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <label for="ConPassword">Confirm Password:</label>
    <input type="password" id="ConPassword" name="ConPassword" required><br><br>


    <label>Interest Topics/Subjects:</label><br>
    <input type="checkbox" id="math" name="interests" value="Mathematics">
    <label for="math">Mathematics</label><br>

    <input type="checkbox" id="science" name="interests" value="Science">
    <label for="science">Science</label><br>

    <input type="checkbox" id="programming" name="interests" value="Programming">
    <label for="programming">Programming</label><br>

    <input type="checkbox" id="history" name="interests" value="History">
    <label for="history">History</label><br>

    <input type="checkbox" id="literature" name="interests" value="Literature">
    <label for="literature">Literature</label><br>

    <input type="checkbox" id="physics" name="interests" value="Physics">
    <label for="physics">Physics</label><br>

    <input type="checkbox" id="chemistry" name="interests" value="Chemistry">
    <label for="chemistry">Chemistry</label><br>

    <input type="checkbox" id="arts" name="interests" value="Arts">
    <label for="arts">Arts</label><br><br>


    <input type="submit" value="Register" href="index.jsp">
</form>
</body>
</html>
