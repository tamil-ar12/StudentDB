package Student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/delete")
public class DeleteStudent extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String id = req.getParameter("id");  
            try {
              int row= StudentDAO.deleteById(Integer.parseInt(id));

                if (row > 0) {
                	StudentDAO dao = new StudentDAO();	
                	req.setAttribute("students", dao.getAllStudents() );
        			req.getRequestDispatcher("AdminHome.jsp").include(req, resp);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        
    }
}

