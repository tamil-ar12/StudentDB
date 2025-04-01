package Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/offices", "root", "system");
		return con;

	}

	//Add Student data
	public int saveStudent(StudentDTO s) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("insert into students values(?,?,?,?,?)");
		ps.setInt(1, s.getId());
//		System.out.println(s.getId());
		ps.setString(2, s.getName());
		ps.setInt(3, s.getPhysics());
		ps.setInt(4, s.getChemistry());
		ps.setInt(5, s.getMaths());
		int res = ps.executeUpdate();
		return res;

	}

	//find Student
	public static ResultSet findStudent(int id) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("select * from students where Sid=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		return rs;

	}
	
// Update Student
	
	public int updateStudent(StudentDTO s,int id) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update students set name=? , chemistry=? , physics=?, maths=? where id=?");
		ps.setString(1, s.getName());
		ps.setInt(2, s. getChemistry());
		ps.setInt(3, s.getPhysics());
		ps.setInt(4, s.getMaths());
		ps.setInt(5, s.getId());
		int row=ps.executeUpdate();
		
		return row;
	}
	
	//Delete Student
	
	public static int deleteById(int id) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("delete from students where Sid=?");
		ps.setInt(1, id);
		int row = ps.executeUpdate();
		return row;

	}
	
	//FindAllStudents

	public List<StudentDTO> getAllStudents() throws SQLException, ClassCastException, ClassNotFoundException {

		Connection con = getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM students");
			List<StudentDTO> students = new ArrayList<>();
		while (rs.next()) {
			StudentDTO student = new StudentDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
					rs.getInt(5));
			students.add(student);
		}

		return students;
	}

}
