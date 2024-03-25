package com.freeflux.guest.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.freeflux.guest.controller.DeleteController;
import com.freeflux.guest.controller.DetailController;
import com.freeflux.guest.controller.InsertController;
import com.freeflux.guest.controller.ListController;
import com.freeflux.guest.controller.UpdateController;

@WebServlet("/guest")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher rd = null;
		String cmd = null;
		if (request.getParameter("command") != null) {
			cmd = request.getParameter("command");
			switch (cmd) {
			case "L": // 글목록
				ListController list = new ListController();
				list.list();
				rd = request.getRequestDispatcher("main.jsp");

				rd.forward(request, response);
				
				break;

			case "W": // 글쓰기
				InsertController insert = new InsertController();
				insert.insert();
				
				rd = request.getRequestDispatcher("main.jsp");
				rd.forward(request, response);
				
				break;

			case "D": // 글상세
				DetailController detail = new DetailController();
				detail.detail();
				
				rd = request.getRequestDispatcher("detail.jsp");

				rd.forward(request, response);
				
				break;

			case "U": // 글수정
				UpdateController update = new UpdateController();
				update.update();
				
				rd = request.getRequestDispatcher("main.jsp");
				rd.forward(request, response);

				break;

			case "DEL": // 글삭제
				DeleteController delete = new DeleteController();
				delete.delete();
				
				rd = request.getRequestDispatcher("main.jsp");
				rd.forward(request, response);
				
				break;
			} // switch (cmd) END
		} // if () END
	} // doGet() END

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
