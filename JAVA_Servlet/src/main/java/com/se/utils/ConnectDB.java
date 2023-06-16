package com.se.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	private final String serverName = "localhost";
	private final String dbName = "INTPNC_SNJKIT";
	private final String portNumber = "1433";
	private final String instance = ""; // leave this one empty if your sql is a single instance;
	private final String userID = "sa";
	private final String password = "sapassword";
	
	/* Get connection to database*/
	public Connection getConnection() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
		if(instance == null || instance.trim().isEmpty()) {
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
		}
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url, userID, password);
	}
}