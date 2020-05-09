package busbooking;

import java.sql.Connection;
import java.sql.DriverManager;

public final class ConnectionProvider {
	static Connection connection=null;
	private ConnectionProvider() {
		
	}
	public static Connection getconn() {
		try {
			if(connection==null) {
				Class.forName("con.mysql.jdbc.Driver");
				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root",""); 
				                                                        
				return connection;	
			}
			else {
				return connection;
			}}
			catch(Exception e) {
				e.printStackTrace();
			}
		return connection;
		
	}
	

}
