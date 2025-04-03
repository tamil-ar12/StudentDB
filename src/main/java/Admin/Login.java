package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Student.StudentDAO;
@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
			StudentDAO dao = new StudentDAO();
			boolean bool=AdminDao.login(email,pass);
				if(bool) {
					req.setAttribute("students", dao.getAllStudents() );
					req.getRequestDispatcher("AdminHome.jsp").include(req, resp);
				}
				else {
					req.setAttribute("message", "Incorrect Password");
					req.getRequestDispatcher("AdminLogin.jsp").forward(req, resp);
				}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
