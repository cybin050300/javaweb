<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_fmt_date.jsp : core와 format 라이브러리 사용(날짜)</title>
</head>
<body>
	-->
	<!-- <pre>	pre 태그는 코딩된 상태를 그대로 출력  -->
	<!-- 	<table> -->
	<!-- 		<tr><td>pre 태그 테스트</td></tr> -->
	<!-- 	</table> -->
	<!-- </pre> -->

	<!-- 날짜, 시간 표현(formatDate) -->
	<c:set var="now" value="<%=new java.util.Date()%>"></c:set>
	날짜 :
	<fmt:formatDate value="${now }" type="date" />
	<br> 시간 :
	<fmt:formatDate value="${now }" type="time" />
	<br>
	<fmt:formatDate value="${now }" type="both" />
	<br>

	<hr>
	<fmt:formatDate value="${now }" type="both" dateStyle="default"
		timeStyle="default" />
	<br>
	<fmt:formatDate value="${now }" type="both" dateStyle="short"
		timeStyle="short" />
	<br>
	<fmt:formatDate value="${now }" type="both" dateStyle="long"
		timeStyle="long" />
	<br>
	<fmt:formatDate value="${now }" type="both" dateStyle="full"
		timeStyle="full" />
	<br>

	<hr>
	<h4>타임존 변경</h4>
	<fmt:formatDate value="${now }" type="both" dateStyle="full"
		timeStyle="full" />
	<br>


	<fmt:timeZone value="GMT">
		<fmt:formatDate value="${now }" type="both" dateStyle="full"
			timeStyle="full" />
		<br>
	</fmt:timeZone>

	<fmt:timeZone value="GMT-8">
		<fmt:formatDate value="${now }" type="both" dateStyle="full"
			timeStyle="full" />
		<br>
	</fmt:timeZone>

	<hr>
	<h4>지역변경 : 통화(화폐) / 날짜...</h4>
	<pre>
톱캣 서버의 기본 local : <%=request.getLocale()%>

<fmt:setLocale value="ko_kr" />
한국으로 locale 변경 :  <%=request.getLocale()%>
통화(화폐단위) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
날짜 : <fmt:formatDate value="${now}"/>

<fmt:setLocale value="ja_jp" />
일본으로 locale 변경 :  <%=request.getLocale()%>
통화(화폐단위) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
날짜 : <fmt:formatDate value="${now}"/>

<fmt:setLocale value="en_US" />
영어권으로 locale 변경 :  <%=request.getLocale()%>
통화(화폐단위) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
날짜 : <fmt:formatDate value="${now}"/>

</pre>
</body>
</html>