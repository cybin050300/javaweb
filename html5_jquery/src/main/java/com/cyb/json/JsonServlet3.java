package com.cyb.json;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/json3")
public class JsonServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JsonServlet3() {
		super();
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		PrintWriter outPrintWriter = response.getWriter();

		JSONObject total = new JSONObject();

		// 회원정보
		JSONArray membersArray = new JSONArray();
		JSONObject member = new JSONObject();
		
		member.put("name","홍길동");
		member.put("age","58");
		member.put("gender","남자");
		member.put("nickname","대도");
		
		// 한 사람의 정보를 배열에 추가
		membersArray.add(member);
		
		member = new JSONObject();
		
		member.put("name","홍길순");
		member.put("age","13");
		member.put("gender","여자");
		member.put("nickname","순이");
		
		membersArray.add(member);
		total.put("members", membersArray);

		// 도서정보
		JSONArray booksArray = new JSONArray();
		JSONObject book = new JSONObject();
		
		book.put("title","자바 프로그래밍");
		book.put("author","이병승");
		book.put("price",20000);
		book.put("image","http://localhost:9000/html5_jquery/image/image1.jpg");
		booksArray.add(book);
		
		book = new JSONObject();
		book.put("title","파이썬 프로그래밍");
		book.put("author","이병승");
		book.put("price",46000);
		book.put("image","http://localhost:9000/html5_jquery/image/image2.jpg");
		
		booksArray.add(book);
		total.put("books",booksArray);
		
		String info = total.toJSONString();
		outPrintWriter.print(info);
	}

}
