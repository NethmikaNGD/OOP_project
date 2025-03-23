import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileWriter;
import java.io.IOException;

@MultipartConfig
@WebServlet("/CreateCourse")
public class courseCreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public courseCreateServlet() {
        super();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

        //Retrieve form data from jsp
        String courseName = req.getParameter("courseName");
        String authorName = req.getParameter("authorName");
        String coursePrice = req.getParameter("price");
        String description = req.getParameter("courseDescription");

        //print
        System.out.println(courseName + "\n" + authorName + "\n" + coursePrice + "\n" + description);

        //write the file

        String FilePath= "D:\\OOP_project\\src\\main\\DataSaveFile\\CourseData.txt";

        try(FileWriter fileWriter = new FileWriter(FilePath , true)) {
            fileWriter.write(courseName + "\t" + authorName + "\t $" + coursePrice + "\t " + description + "\n");
            System.out.println("Course Data Saved");
        }catch(IOException e){
            System.out.println("could not write file");
        }


        // Store data in request attributes to display in JSP
        req.setAttribute("courseName", courseName);
        req.setAttribute("authorName", authorName);
        req.setAttribute("price", coursePrice);
        req.setAttribute("description", description);

        // Forward request to JSP page
        req.getRequestDispatcher("CreateCourse.jsp").forward(req, resp);
    }
}
