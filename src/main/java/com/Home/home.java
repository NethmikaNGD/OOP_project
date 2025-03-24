package com.Home;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//@WebServlet("/home")
public class home extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public home() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filePath = "D:\\OOP_project\\src\\main\\DataSaveFile\\CourseData.txt";

        // Check if file exists before reading
        File file = new File(filePath);

        if (!file.exists()) {
            System.out.println("ERROR: File not found - " + filePath);
            request.setAttribute("courses", new ArrayList<>()); // Pass empty list
            request.getRequestDispatcher("home.jsp").forward(request, response);
            return;
        }

        List<String[]> courses = new ArrayList<>();

        // Read file and store course details
        try (BufferedReader bufferedReader = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                System.out.println("Reading line: " + line);

                String[] courseDetails = line.split("\\|");
                if (courseDetails.length == 3) {
                    courses.add(courseDetails);
                } else {
                    System.out.println("Skipping invalid line: " + line);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Store data in request attribute and forward to JSP
        request.setAttribute("courses", courses);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
