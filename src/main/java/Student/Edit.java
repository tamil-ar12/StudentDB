package Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDetails.StudentDao;

@WebServlet("/editstudent")
public class Edit extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		try {
			StudentDTO student=StudentDAO.editStudent(id);
			 req.setAttribute("student", student); 
			 StudentDAO dao = new StudentDAO();	
	         req.setAttribute("students", dao.getAllStudents() );
	         req.getRequestDispatcher("UpdateStudent.jsp").include(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
