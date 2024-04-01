package com.cyb.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MemberDAO memberDAO = null;

	public MemberController() {
		super();

	}

	public void init() throws ServletException {
		memberDAO = new MemberDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = null; // 다른 화면으로 이동, 다른 화면 요청..

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String action = request.getPathInfo(); // 요청 주소 추출
		System.out.println("action : " + action); // 요청 주소 확인코드

		if (action == null | action.equals("/listMembers.do")) { // 회원 목록 처리
			List<MemberVO> membersList = memberDAO.listMembers();
			request.setAttribute("membersList", membersList);
			nextPage = "/members/listMembers.jsp";

		} else if (action.equals("/addMember.do")) { // 회원가입 처리
			MemberVO member = new MemberVO();
			member.setId((String)request.getParameter("id"));
			member.setPwd((String)request.getParameter("pwd"));
			member.setName((String)request.getParameter("name"));
			member.setEmail((String)request.getParameter("email"));
			memberDAO.addMember(member);

			nextPage = "/member/listMembers.do";

		} else if (action.equals("/memberMember.do")) { // 회원가입 화면 처리

			nextPage = "/members/memberMember.jsp";
			
		}else if (action.equals("/modMemberForm.do")) {
			String id = (String)request.getParameter("id");
			
			request.setAttribute("member", memberDAO.findMember(id) );
			nextPage = "/members/modMemberForm.jsp";

		} else if (action.equals("/modMember.do")) { // 회원수정 처리
			MemberVO member = new MemberVO();
			member.setId((String)request.getParameter("id"));
			member.setPwd((String)request.getParameter("pwd"));
			member.setName((String)request.getParameter("name"));
			member.setEmail((String)request.getParameter("email"));
			memberDAO.modMember(member);

			nextPage = "/member/listMembers.do";

		} else if (action.equals("/delMember.do")) { // 회원삭제 처리
		
			String id = (String)request.getParameter("id");
			memberDAO.delMember(id);

			nextPage = "/member/listMembers.do";

		} else if (action.equals("/idcheck.do")) { // ID 중복
			PrintWriter out = response.getWriter();

			String id = (String) request.getParameter("id");
			System.out.println("id : " + id);
			
			MemberDAO memberDao = new MemberDAO();
			boolean overlappedID = memberDao.overlappingID(id);
			System.out.println("overlappedID : "+overlappedID);
			
			if(overlappedID == true) {
				out.print("not_usabled");
			}else {
				out.print("usable");
			}return;
			

		} else {
			nextPage = "/member/listMembers.do";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}

}
