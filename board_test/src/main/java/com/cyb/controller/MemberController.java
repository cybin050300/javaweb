package com.cyb.controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cyb.db.MySQLConnector;

public class MemberController extends MySQLConnector {
	/** MySQLConnector로 부터 상속받은 변수 및 메서드 **/
	// public static Connection connector = null; 물려받음
	// public void connect() {}|
	// public void close() {}

	public MemberController() {
		connect(); // DB 접속 완료
	}

	/** id, pw를 비교한 결과 문자열을 DispatcherServlet에게 반환 **/
	// 로그인 성공 : SUCCESS / 실패 : FAIL


	public String join(String id, String pw) {
		String query = "Select * from member where id=’?’ and pw=’?’";

		// close() 해야할 객체 선언시, 기본값을 null로 설정!!
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String result = null; // String 변수 선언 시, 기본 값을 null로 설정하면 추후 비교가 편리
		// 숫자 관련 변수 선언 시, 기본값을 0으로 설정!!
		try {
			pstmt = connector.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			// 결과 : 1 record 또는 0 record <= rs.next() : true(1) / false(0)

//			String result = "";
			if (rs.next()) {
				result = "SUCCESS";
//				return "SUCCESS";
			} else {
				result = "FAIL";
			}

		} catch (SQLException e) {
			System.err.println("JOIN ERR : " + e.getMessage());
		} finally {
			close(pstmt, rs);
			}
		return result;
	}
}
