<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>회원정보</h1>
	</div>
	<div>
		id : ${userDTO.id }
	</div>
	<div>
		성명 : ${userDTO.name }
	</div>
	<div>
		비밀번호 : ${userDTO.psw }
	</div>
	<div>
		닉네임 : ${userDTO.nickName }
	</div>
	<div>
		연락처 : ${userDTO.phoneNum }
	</div>
	<div>
		생년월일 : ${userDTO.birth_date }
	</div>
	<div>
		이메일 : ${userDTO.mail }
	</div>
</body>
</html>