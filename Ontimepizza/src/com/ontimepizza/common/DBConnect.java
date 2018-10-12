package com.ontimepizza.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.ontimepizza.common.dto.ErrorDto;

public class DBConnect {
	static Connection con = null;
	private String driver;
	private String connectionString;
	private String username;
	private String password;
	private ErrorDto errorDto;

	public DBConnect(String driver, String connectionString, String username, String password, ErrorDto errorDto) {
		this.driver = driver;
		this.connectionString = connectionString;
		this.username = username;
		this.password = password;
		this.errorDto = errorDto;
	}

	public Connection getDbConnection() {
		if (con == null) {
			try {
				Class.forName(driver);
				System.out.println("Driver Loaded Successfully");
			} catch (ClassNotFoundException e) {
				System.out.println("Driver could not be loaded");
				System.out.println(e);
				errorDto.setHasError(true);
				errorDto.setFileName("ConnectDB.java");
				errorDto.setErrorDesc("getdbConnection();Driver Could not be loaded <br>" + e.toString());
				e.printStackTrace();
			}

			try {
				con = DriverManager.getConnection(connectionString, username, password);
				System.out.println("Connected to Database");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Connection to database failed");
				System.out.println(e);
				errorDto.setHasError(true);
				errorDto.setFileName("DBConnect.java");
				errorDto.setErrorDesc("getdbConnection();Connection to Database Failed.<br>" + e.toString());
				e.printStackTrace();
			}

		}
		return con;

	}
}
