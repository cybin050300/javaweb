package com.cyb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormTestServlet
 */
@WebServlet("/formtest")
public class FormTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		외부로 전달되는 값은 request 안으로 전달됨
		// request 내부 ID=ddd&PW=1234
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		
		String[] chk = request.getParameterValues("chk");
		System.out.println(chk.length);
		
		RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
//		request.setAttribute("ID", id);
//		request.setAttribute("PW", pw);
		System.out.println(id + " : " + pw);
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
