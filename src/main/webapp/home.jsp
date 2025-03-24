<%--
  Created by IntelliJ IDEA.
  User: Dinet
  Date: 3/22/2025
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<html>
    <head>
        <title>Home</title>


    </head>
    <body>
    <%
        HttpSession session1 = request.getSession(false);
        String firstname = (session1 != null) ? (String) session1.getAttribute("username") : null;
        if (firstname == null) {
            response.sendRedirect("index.jsp");  // Redirect if not logged in
        }
    %>

    <h2>Welcome, <%= firstname %>!</h2>

    <div class="Course-continor">
        <div class="card-name">
            <h3>Courser Header</h3>
            <p>author name</p>
            <p>price</p>
        </div>
    </div>





    </body>
</html>
