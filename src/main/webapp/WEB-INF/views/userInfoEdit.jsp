<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보확인</title>
<style>
	h1 {
	text-align : center;
	}
</style>
</head>
<body>
	<div><h1>회원정보확인</h1></div>
	
<%
	String ID = "ID"; 
%>
	<div>${userDTO.id } 님의 정보를 보호하기 위해 비밀번호를 다시 한 번 확인합니다.</div>
	<form action="test">
		<input type="text" name="id">
		<input type="submit" value="전송">
	</form>
	
</body>
</html>