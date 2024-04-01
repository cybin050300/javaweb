<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 : modMemberForm.jsp</title>
<script>
	function gotoList() {
		document.loaction = "${contextPath}/member/ListMember.do"
	}
</script>
</head>
<body>
	<form action="${contextPath }/member/modMember.do" method="post">
		<p>회원수정 화면</p>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="${member.id }" readonly>
				</td>
			</tr>
			<tr>
				<td>비밀번호 변경</td>
				<td><input type="password" name="pwd" value="${member.pwd }">
				</td>

			</tr>

			<tr>
				<td>이름 변경</td>
				<td><input type="text" name="name" value="${member.name }">
				</td>
			</tr>
			<tr>
				<td>이메일 변경</td>
				<td><input type="text" name="email" value="${member.email }">
				</td>
			</tr>

			<tr>
				<td><input type="button" value="목록" onclick="gotoList()"></td>
				<td><input type="submit" value="수정"><input type="reset"
					value="취소"></td>
			</tr>
		</table>

	</form>
</body>
</html>