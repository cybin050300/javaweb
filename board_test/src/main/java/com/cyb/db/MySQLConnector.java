package com.cyb.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/** Connection 객체는 하나의 서블릿이 일을 마칠 때마다 바로 close() **/
public class MySQLConnector {

	public Connection connector = null;

	public MySQLConnector() { // 외부에서 객체 생성 방지
	}

	public void connect() {
		final String driver = "com.mysql.cj.jdbc.Driver";
		final String url = "jdbc:mysql://localhost:3306/";
		final String id_mysql = "root";
		final String pw_mysql = "1234";

		// 1. connector가 null인지 확인 후, null 일 경우에만 객체 생성
		if (connector == null) {
			// Driver로드
			try {
				Class.forName(driver);
				// connecion 객체 읽기
				connector = DriverManager.getConnection(url + "test", id_mysql, pw_mysql);
			} catch (ClassNotFoundException | SQLException e) {
				System.err.println("CLASS | CONNECTION ERR : " + e.getMessage());
			}
		} // if () END
	}// Connect()END
	
	public void close() {	//Connection CLOSE
		if (connector != null) {
			try {
				connector.close();

			} catch (SQLException e) {
				System.err.println("ResultSet ERR : " + e.getMessage());
			}
		}
	}

	public void close(PreparedStatement pstmt, ResultSet rs) {	//Connection CLOSE
		if (rs != null) {
			try {
				rs.close();

			} catch (SQLException e) {
				System.err.println("ResultSet ERR : " + e.getMessage());
			}
		}
		if(pstmt != null) {
			try {
			pstmt.close();

		} catch (SQLException e) {
			System.err.println("PreparedStatement ERR : " + e.getMessage());
		}
		} // close()END
	}
}
