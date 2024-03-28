<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var='contextPath' value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트 객체 전송(회원,도서) : json7.jsp</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function() {
		$("#checkJson").click(function() {
			$.ajax({
				type : "post",
				async : false,
				url : "${contextPath}/json3",

				success : function(data, textstatus) { // data : 문자열 
					// 문자열 데이터를 Json 객체로..parsing.
					var jsonInfo = JSON.parse(data);

					var output = "회원들 정보 & 도서 정보<br>";
					output += "<hr>";
					 
					for ( var i in jsonInfo.members) {
						output += "이름 : "
								+ jsonInfo.members[i].name
								+ "<br>";
						output += "나이 : "
								+ jsonInfo.members[i].age
								+ "<br>";
						output += "성별 : "
								+ jsonInfo.members[i].gender
								+ "<br>";
						output += "별명 : "
								+ jsonInfo.members[i].nickname
								+ "<br><br>";
					}
					
					output += "<hr>";
					for ( var k in jsonInfo.books) {
						output += "제목 : "
								+ jsonInfo.books[k].title
								+ "<br>";
						output += "저자 : "
								+ jsonInfo.books[k].author
								+ "<br>";
						output += "가격 : "
								+ jsonInfo.books[k].price
								+ "<br>";
						output += "이미지 : <img src="
								+ jsonInfo.books[k].image
								+ " /><br><br>";
						
					}
					$("#output").html(output);
					
					
				},
				error : function(data, textstatus) {
					alert("error!!!");
				},
				complete : function(data, textstatus) {
					alert("작업 종료");
				}
			});
	});
});
</script>

</head>
<body>
	<a id="checkJson" style="cursor: pointer">출력</a>
	<div id="output"></div>

</body>
</html>