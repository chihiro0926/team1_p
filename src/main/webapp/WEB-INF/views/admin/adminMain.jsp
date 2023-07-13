<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/footer_style.css">
<link rel="stylesheet" href="/css/adminMain.css">

</head>
<body>
	<header style="border:1px solid red;">
		<div class="header_logo_area">
			<a href=""><img class="logo" alt="logo" src="/image/logo2.png"></a>
		</div>
	</header>
	<div class="top_list">
		<ul>
			<li><a href="">회원목록 조회</a></li>
			<li><a href="">상품 등록</a></li>
			<li><a href="">상품목록 조회</a></li>
			<li><a href="">홈으로</a></li>
		</ul>
	</div>
	
	<section id=content>
		<div id="title">
			<h2> 회원목록 조회 / 수정 </h2>
		</div>
		<div>
			<table id="table">
				<thead>
					<tr>
						<th>회원 번호</th>
						<th>회원 id</th>
						<th>이름</th>
						<th>생일</th>
						<th>닉네임</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>가입날짜</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>45</td>
						<td>qqqq1</td>
						<td>남태현</td>
						<td>1999-01-05</td>
						<td>김휴먼</td>
						<td>경기도 수원시 권선구 금호로 45 102동 801호</td>
						<td>010-5568-4504</td>
						<td>nth4504@naver.com</td>
						<td>2023-07-12</td>
						<td><a href=""><input type="button" value="수정"></a></td>
						<td><a href=""><input type="button" value="삭제"></a></td>
					</tr>
				</tbody>
				
			</table>
		</div>
	</section>

</body>
</html>