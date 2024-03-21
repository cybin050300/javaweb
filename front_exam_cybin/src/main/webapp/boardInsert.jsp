<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
    function goList(){
        document.location="boardList.jsp";
    }
    function goUpdate(){
        document.location="boardInsert.jsp";
    }
</script>
<title>boardUpdate.jsp</title>
</head>
<body>
<form action="guest">
<table border="1" bgcolor="pinkblue"> <!-- 전체 테이블에 배경색 추가 -->
    <tr>
        <td>
            <label>작성자</label>
            <input type="text" name="name"><br>
        </td>
    </tr>
    <tr>
        <td>
            <label>제목</label>
            <input type="text" name="title"><br>
        </td>
    </tr>
    <tr>
        <td>
            <label>내용</label>
            <textarea rows="10" cols="50" name="content"></textarea><br>
        </td>
    </tr>
    <tr>
        <td>
            <input type="hidden" name="command" value="W">
        </td>
    </tr>
</table>

<table>
    <tr bgcolor="skyblue">
        <td>
            <input type="button" value="목록" onclick="goList()">
        </td>
        <td>
            <input type="submit" value="등록하기">
        </td>
    </tr>
</table>
</form>
</body>
</html>
