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
		 System.out.println("update student..");
		 String id = req.getParameter("id");
		 String name=req.getParameter("name");
		 String physics = req.getParameter("physics");
	   	String chemistry = req.getParameter("chemistry");
		String maths = req.getParameter("maths");
		
		int id1=Integer.parseInt(id);
		int physics1=Integer.parseInt(physics);
		int chemistry1=Integer.parseInt(chemistry);
		int maths1=Integer.parseInt(maths);
		    
		
		StudentDTO sdt=new StudentDTO(id1,name, physics1, chemistry1, maths1);
		StudentDAO sda=new StudentDAO();
//		System.out.println(sda);
		  System.out.println(name);
		  System.out.println(physics1);
         try {        	 
          sda.updateStudent(sdt);
           req.getRequestDispatcher("AdminHome.jsp").include(req, resp);
          
         } catch (Exception e) {
             e.printStackTrace();
         }
	}
}
