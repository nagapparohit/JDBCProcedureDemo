package com.ecommerce;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private Connection connection;
	
	public DBConnection(String dbURL,String user,String password,String classPath) throws ClassNotFoundException, SQLException {
		
		Class.forName(classPath);
		
		this.connection = DriverManager.getConnection(dbURL,user,password);
		
	}
	
	public Connection getConnection() {
		return connection;
	}
	
	public void closeConnection() throws SQLException {
		if(this.connection != null) {
			this.connection.close();
		}
	}
}

