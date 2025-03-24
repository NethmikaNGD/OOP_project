package com.Register;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

//@WebServlet("/RegisterServlet")
public class RegisterSer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Save the user data from the form:
        String firstname = request.getParameter("firstName");
        String lastname = request.getParameter("lastName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String birthdate = request.getParameter("birthDate");
        String gender = request.getParameter("gender");
        String role = request.getParameter("role");
        String password = request.getParameter("password");
        String conPassword = request.getParameter("ConPassword");

        // Handling multiple selection interests
        String[] interests = request.getParameterValues("interests");
        String interestsList = (interests != null) ? String.join(", ", interests) : "No interests selected";

        // File paths
        String filePath;
        String userPass;
        String allUserPass = "D:\\OOP_project\\src\\main\\DataSaveFile\\password\\allPass.txt";
        String userLike = "D:\\OOP_project\\src\\main\\DataSaveFile\\userInstrest.txt";

        if ("Student".equals(role)) {
            filePath = "D:\\OOP_project\\src\\main\\DataSaveFile\\regStudent.txt";
            userPass = "D:\\OOP_project\\src\\main\\DataSaveFile\\password\\stdPass.txt";
        } else {
            filePath = "D:\\OOP_project\\src\\main\\DataSaveFile\\regInstructor.txt";
            userPass = "D:\\OOP_project\\src\\main\\DataSaveFile\\password\\insPass.txt";
        }

        // Writing to files with proper try-with-resources
        try (
                FileWriter fileWriter = new FileWriter(filePath, true);
                FileWriter passwordWriter1 = new FileWriter(userPass, true);
                FileWriter userLike1 = new FileWriter(userLike, true);
                FileWriter passwordWriter2 = new FileWriter(allUserPass, true)
        ) {
            fileWriter.write(firstname + "\t" + lastname + "\t" + email + "\t" + birthdate + "\t" + gender + "\t" + "\n");
            passwordWriter1.write(username + "\t" + email + "\t" + password + "\t" + conPassword + "\n");
            passwordWriter2.write(username + "\t" + email + "\t" + password + "\n");
            userLike1.write(username + "\t" + interestsList + "\n");

            System.out.println("Success .. update...");

//            // Send confirmation response to the user
//            out.println("<h2>Registration Successful</h2>");
//            out.println("<a href='index.jsp'>Go Back</a>");

        } catch (IOException e) {
            System.out.println("Could not write file: " + e.getMessage());
            out.println("<h2>Registration Failed</h2>");
            out.println("<p>An error occurred while saving your data.</p>");
            out.println("<a href='register.jsp'>Try Again</a>");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);



    }
}
