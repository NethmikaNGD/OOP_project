import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        //save the userdata local variables:
        String firstname=request.getParameter("firstName");
        String lastname=request.getParameter("lastName");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String birthdate=request.getParameter("birthDate");
        String gender=request.getParameter("gender");
        String role=request.getParameter("role");
        String password=request.getParameter("password");
        String ConPassword=request.getParameter("ConPassword");

        //Handling multiple selection interests:
        String[] interests=request.getParameterValues("interests");
        String interestsList = (interests != null) ? String.join(",", interests) : null;

        //Write the txt file (save the database)
        String filePath;
        String userPass;

        if (Objects.equals(role, "Student")){
            filePath = "D:\\OOP_project\\src\\main\\DataSaveFile\\regStudent.txt";
            userPass = "D:\\OOP_project\\src\\main\\DataSaveFile\\password\\stdPass.txt";
        }else {
            filePath = "D:\\OOP_project\\src\\main\\DataSaveFile\\regInstructor.txt";
            userPass = "D:\\OOP_project\\src\\main\\DataSaveFile\\password\\insPass.txt";
        }

        try(FileWriter FileWrite = new FileWriter(filePath , true)) {
            FileWrite.write(firstname + "\t" + lastname + "\t" + email + "\t" + birthdate + "\t" + gender + "\n");
            try(FileWriter passWrite = new FileWriter(userPass , true)) {
                passWrite.write(username + "\t" + email + "\t" + password + "\t" + ConPassword + "\n");
            }
            System.out.println("Success .. update...");
        }catch(IOException e){
            System.out.println("could not write file");
        }


    }
}
