package Admin;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDao {
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/offices", "root", "system");
		return con;
		
	}
	public int Adminsignup(AdminDto a) throws ClassNotFoundException, SQLException {
	Connection con=getConnection();
	PreparedStatement ps=con.prepareStatement("insert into Admin values(?,?,?,?,?)" );
	ps.setInt(1, a.getId());
	ps.setString(2, a.getName());
	ps.setLong(3, a.getContact());
	ps.setString(4, a.getEmail());
	ps.setString(5, a.getPass());
	int row =ps.executeUpdate();
		return row;
		
	}
	
	public static boolean login(String email,String pass) throws ClassNotFoundException, SQLException {
		Connection con=AdminDao.getConnection();
		Statement st=con.createStatement();
		PreparedStatement ps=con.prepareStatement("select email,pass from admin where email=? and pass=?");
		ps.setString(1,email);
		ps.setString(2, pass);
		ResultSet rs=ps.executeQuery();
		boolean b=rs.next();
		return b;
		
	}
	
}
