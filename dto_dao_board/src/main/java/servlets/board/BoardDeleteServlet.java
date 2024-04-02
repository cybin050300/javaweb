package servlets.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.board.BoardDAO;


@WebServlet("/board/boardDeleteServlet")
public class BoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/** BoardDAO **/
	private BoardDAO boardDAO = null;

    public BoardDeleteServlet() {
        super();
       
    }

    /**
     * GET 접근 시 (상세 조희 접근 시)
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터
		int n=Integer.parseInt(request.getParameter("num"));
		
		// 모델
		// 게시물 삭제
		// 페이지 이동
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
