package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}
