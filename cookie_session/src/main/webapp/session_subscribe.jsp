<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   // 1. 약관 동의 여부
   String agree = request.getParameter("agree");	//YES / NO
   // 2. 회원 가입 여부
   String result = null;	//SUCCESS, FAIL, DISAGREE
   
   if(agree.equals("YES")){
	   String id = (String)session.getAttribute("id"); //기본 타입이 object이기때문에 형변환 해줘야함
	   String pw = (String)session.getAttribute("pw"); 
	   String name = (String)session.getAttribute("name"); 
   
	   // 데이터를 아이디.txt 파일로 내보내기 (WEB-INF 위치로..)
	   PrintWriter writer = null;
	   String filePath = "/WEB-INF/" + id + ".txt";
	   String realPath = application.getRealPath(filePath);
	   try{
		  writer = new PrintWriter(realPath);
		  writer.println("아이디 : " + id);
		  writer.println("비밀번호 : " + pw);
		  writer.println("이름 : " + name);
		  
		  result = "SUCCESS";
	   }catch(IOException e ){
		   result = "FAIL";
	   }finally{
		   writer.close();
	   }
   }else{
	   result = "DISAGREE";
   }
   
   session.invalidate();	// 세션 종료! <= 이 때 데이터 상실~~
	response.sendRedirect("session_result.jsp?result="+result);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionsubscribe.jsp</title>
</head>
<body>
보이지 않는 화면이라 html있으나 마나인 페이지
</body>
</html>