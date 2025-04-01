package Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDetails.StudentDao;
import StudentDetails.StudentDto;

@WebServlet("/addstudent")
public class AddStudent extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int physics=Integer.parseInt(req.getParameter("physics"));
		int chemistry=Integer.parseInt(req.getParameter("chemistry"));
		int maths=Integer.parseInt(req.getParameter("maths"));
		StudentDTO sdt=new StudentDTO(id, name, physics, chemistry, maths);
		StudentDAO sda=new StudentDAO();
		try {
			sda.saveStudent(sdt);
			List<StudentDTO> students = sda.getAllStudents();
//			for(StudentDTO st : students) {
//				System.out.println("********************************"+st.getId());
//			}
			req.setAttribute("students", students);
			req.getRequestDispatcher("AdminHome.jsp").include(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	}

	


