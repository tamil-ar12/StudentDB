package Student;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/update")
public class UpdateStudent extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.getRequestDispatcher("UpdateStudent.jsp").include(req, resp);
		  String id = req.getParameter("id");
		  int id1=Integer.parseInt(id);
		String name=req.getParameter("name");
		String physics = req.getParameter("id");
		String chemistry = req.getParameter("id");
		String maths = req.getParameter("id");
		int physics1=Integer.parseInt(physics);
		int chemistry1=Integer.parseInt(chemistry);
		int maths1=Integer.parseInt(maths);
		StudentDTO sdt=new StudentDTO(id1,name, physics1, chemistry1, maths1);
		StudentDAO sda=new StudentDAO();
         try {        	 
           sda.updateStudent(sdt,id1);
          System.out.println(sdt.getId());
          System.out.println(sdt.getName());
           StudentDAO dao = new StudentDAO();	
           req.setAttribute("students", dao.getAllStudents() );
           req.getRequestDispatcher("AdminHome.jsp").include(req, resp);
             
         } catch (Exception e) {
             e.printStackTrace();
         }
     
	}
}
