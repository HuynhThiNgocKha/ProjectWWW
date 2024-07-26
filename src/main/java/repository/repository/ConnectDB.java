package repository.repository;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private Connection connection;
	
	public ConnectDB() throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		connection = DriverManager.getConnection(
				"jdbc:sqlserver://localhost:1433;databaseName=QUANLYSANPHAM;encrypt=false;trustServerCertificate=true",
				"sa",
				"1234");
		
	}
	
	
	public Connection getConnection() {
		return this.connection;
	}

}
