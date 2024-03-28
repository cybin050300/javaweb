package com.cyb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MySQLConnector {

	private Connection connector = null;

	public MySQLConnector() {

	}

	public Connection getConnection() {
		if (connector == null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/";
				connector = DriverManager.getConnection(url + "test", "root", "1234");

			} catch (Exception e) {
				System.out.println("CONNECTION ERROR : " + e.getMessage());
			}

		}
		return connector;
	}

	public void close(Connection connector, PreparedStatement pstmt) {
		if (connector != null) {
			try {
				connector.close();
			} catch (Exception e) {
				System.err.println("pstmt.close()=>" + e.getMessage());
			}
		}
	}
}
