package Student;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/findstudent")
public class FindStudent extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		try {
			StudentDTO student=StudentDAO.editStudent(id);
			if(student!=null) {
				 req.setAttribute("student", student);
//				 System.out.println(student.getName());
			}
	         req.getRequestDispatcher("displayFinddata.jsp").include(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
