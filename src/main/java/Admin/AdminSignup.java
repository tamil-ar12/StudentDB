package Admin;

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
import StudentDetails.StudentDto;
@WebServlet("/adminsignup")
public class AdminSignup extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		long contact=Long.parseLong(req.getParameter("contact"));
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String repass=req.getParameter("repass");
		
		AdminDto adt=new AdminDto(id, name, contact, email, pass);
		AdminDao ada=new AdminDao();
		try {
			ada.Adminsignup(adt);
//			PrintWriter pw=resp.getWriter();
			req.getRequestDispatcher("AdminLogin.jsp").include(req, resp);;
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}
}
