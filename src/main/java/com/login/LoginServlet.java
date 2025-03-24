package com.login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

//@WebServlet("/LoginServlet") // Uncomment this if you're using annotations for mapping
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get input values from login form
        String usernameOrEmail = request.getParameter("username");  // FIXED parameter name
        String password = request.getParameter("password");  // FIXED parameter name

        // Path to password storage file
        String userPassFile = "D:\\OOP_project\\src\\main\\DataSaveFile\\password\\allPass.txt";

        boolean isValidUser = false;
        String foundUsername = null;

        // Read the file and check credentials
        try (BufferedReader br = new BufferedReader(new FileReader(userPassFile))) {
            String line;
            while ((line = br.readLine()) != null) {
                // Skip empty lines
                if (line.trim().isEmpty()) continue;

                // Tokenize the line
                StringTokenizer st = new StringTokenizer(line, "\t");

                // Ensure there are enough tokens before accessing them
                if (st.countTokens() < 3) {
                    System.err.println("Invalid line format: " + line); // Log invalid lines for debugging
                    continue;
                }

                String storedUsername = st.nextToken();
                String storedEmail = st.nextToken();
                String storedPassword = st.nextToken();

                // Check if username/email matches and password is correct
                if ((storedUsername.equals(usernameOrEmail) || storedEmail.equals(usernameOrEmail)) && storedPassword.equals(password)) {
                    isValidUser = true;
                    foundUsername = storedUsername;
                    break;
                }
            }
        } catch (IOException e) {
            out.println("<h3>Error reading user data</h3>");
            return;
        }

        // If login successful, create a session
        if (isValidUser) {
            HttpSession session = request.getSession();
            session.setAttribute("username",foundUsername);  // FIXED session attribute
            response.sendRedirect("home.jsp");  // Redirect to home page
            //out.println("<h3>Successfully logged in</h3>");
        } else {
            out.println("<h3>Invalid username or password</h3>");
            out.println("<a href='index.jsp'>Try Again</a>");
        }
    }
}
