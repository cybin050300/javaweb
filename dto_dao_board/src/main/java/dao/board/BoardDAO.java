package dao.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.board.BoardModel;

/**
 * 게시판 DAO 클래스 (데이터 베이스 질의문 실행)
 * 
 * @author 2024.04.02
 */
public class BoardDAO {
	// 사용할 객체 초기화
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 데이터베이스 접속 설정 정보
	/** JDBC DRIBER 패키지 정보 */
	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://127.0.0.1:3306/test";
	private final String DB_ID = "root";
	private final String DB_PWD = "1234";

	/**
	 * 게시판 목록 조회
	 * 
	 * @param boardModel
	 * @return
	 **/
//	public List<BoardModel> selectList(BoardModel boardModel) {
//		List<BoardModel> boardList = new ArrayList<BoardModel>();
//		try {
//			String query = "select * from board_table";
//			
//			pstmt = conn.prepareStatement(query);
//			rs = pstmt.executeQuery();
//			
//			BoardModel board = null;
//			while(rs.next()) {
//				board.setNum(rs.getInt("num"));
//				board.setSubject(rs.getString("subject"));
//				board.setWriter(rs.getString("writer"));
//				board.setContents(rs.getString("contests"));
////				board.setIP(rs.getString("ip"));
//				
//				
//				board.setNum(rs.getInt("num"));
//				
//				
//			}

//		} catch (SQLException e) {
//			System.err.println("SELECTLIST() ERR : " + e.getMessage());
//		}
//
//	}

	/**
	 * 게시글 총 갯수 조회(완성)
	 * 
	 * @param boardModel
	 **/
	public void selectCount(BoardModel boardModel) {
		BoardModel boardmodel = null;
		try {
			String query = "select int from board_table";
			pstmt = conn.prepareStatement(query);
			
		} catch (SQLException e) {
			System.err.println("ERR : "+e.getMessage());
		}
	}

	/**
	 * 게시판 상세 조회
	 * 
	 * @param boardModel
	 **/
	public void selectOne(BoardModel boardModel) {
		try {
			String query = "select num from board_table where num=?";
			pstmt = conn.prepareStatement(query);
			
			
		} catch (SQLException e) {
			System.err.println("ERR : "+e.getMessage());
		}

	}

	/**
	 * 게시판 등록 처리
	 * 
	 * @param boardModel
	 * @return
	 **/
	public void insert(BoardModel boardModel) {
		try {
			String query = "insert into board_table values (?,?,?,?,now(),now(),?,0)";
			pstmt = conn.prepareStatement(query);
			
			
			
			
			
		} catch (SQLException e) {
			System.err.println("ERR : "+e.getMessage());
		}

	}

	/**
	 * 게시판 수정 처리
	 * 
	 * @param boardModel
	 * @return
	 **/

	public void update(BoardModel boardModel) {
		try {
			String query = "update board_table set subject=?, contents=?, mod_date=now(), hit=?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, boardModel.getNum());
			pstmt.setString(2, boardModel.getSubject());
			pstmt.setString(3, boardModel.getWriter());
			pstmt.setString(4, boardModel.getContents());
			pstmt.setString(5, boardModel.getRegDate());
			pstmt.setInt(6, boardModel.getHit());
			
		} catch (SQLException e) {
			System.err.println("ERR : "+e.getMessage());
		}

	}

	/**
	 * 게시판 조회수 증가 수정 처리
	 * 
	 * @param boardModel
	 * @return
	 **/
	public void updateHit(BoardModel boardModel) {
		try {
			String query = "update board_table set hit";
			pstmt = conn.prepareStatement(query);
			
		} catch (SQLException e) {
			System.err.println("ERR : "+e.getMessage());
		}

	}

	/**
	 * 게시판 삭제 처리
	 * 
	 * @param boardModel
	 **/
	public void delete(BoardModel boardModel) {
		try {
			String query = "delete from board_table where num=?";
			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, boardModel);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.err.println("ERR : "+e.getMessage());
		}

	}

	/**
	 * 사용한 객체를 닫음
	 * 
	 * @param rs
	 * @param pstmt
	 * @param conn
	 **/
	public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {

	}

}
