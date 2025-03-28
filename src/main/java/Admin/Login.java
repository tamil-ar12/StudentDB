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
@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Connection con=AdminDao.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select email,pass from admin");
			PrintWriter pw =resp.getWriter();
			String email=req.getParameter("email");
			String pass=req.getParameter("pass");
			while(rs.next()) {
				if(email.equals(rs.getString(1)) && pass.equals(rs.getString(2))) {
					req.getRequestDispatcher("AdminHome.jsp").include(req, resp);
				}
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
