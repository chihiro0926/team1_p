<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<header>

        <div id="header">
            <div id="logo2">
                <div><a href="/mainPage"><img src="/image/mainPage/logo.png" alt=""></a></div>
            </div>
            <div id="search2">
                <input type="text" placeholder="여름 준비, 지금부터!">
                <!--
                    1. 여름 준비, 지금부터!
                    2. 올 여름, 나의 휴가패션은?
                    3. 우리 아이, 유치원 인싸템
                    4. 인싸들의 OOTD
                    5. 지름신 강림! flex템!
                -->
                
                <a href=""><img src="/image/mainPage/search.png" alt="" style="width: 2em;"></a>
            </div>
<!-- 	        <div id="logout"> -->
<!-- 	            <div><a href="">마이페이지</a></div> -->
<!-- 	            <div><a>ㅣ</a></div> -->
<!-- 	            <div><a href="">장바구니</a></div> -->
<!-- 	            <div><a>ㅣ</a></div> -->
<!-- 	            <div><a href="">로그아웃</a></div> -->
<!-- 	        </div> -->
<!-- 	        <div id="logout2"> -->
<!-- 	            <div><a href="">로그아웃</a></div> -->
<!-- 	        </div> -->
<!-- 	        <div id="login_conteiner"> -->
<!-- 	            <div id="login"> -->
<!-- 	                <div><a href="">로그인</a></div> -->
<!-- 	                <div><a>ㅣ</a></div> -->
<!-- 	                <div><a href="">회원가입</a></div> -->
<!-- 	                <div><a>ㅣ</a></div> -->
<!-- 	                <div><a href="">장바구니</a></div> -->
<!-- 	            </div> -->
<!-- 	        </div> -->
	        <div id="login2">
	        <c:choose>
	        	<c:when test="${login != 'ok' }">
		            <div><a href="/login">로그인</a></div>
		            <div><a>ㅣ</a></div>
		            <div><a href="/signin1">회원가입</a></div>
	        	</c:when>
	        	<c:when test="${login == 'ok' && user_grade == '1'}">
		            <div><a href="">관리자 페이지</a></div>
		            <div><a>ㅣ</a></div>
		            <div><a href="/userInfoEdit">마이페이지</a></div>
		            <div><a>ㅣ</a></div>
		            <div><a href="">장바구니</a></div>
		            <div><a>ㅣ</a></div>
		            <div><a href="/logOut">로그아웃</a></div>
	        	</c:when>
	        	<c:otherwise>
	        		<div><a href="/userInfoEdit">마이페이지</a></div>
		            <div><a>ㅣ</a></div>
		            <div><a href="">장바구니</a></div>
		            <div><a>ㅣ</a></div>
		            <div><a href="/logOut">로그아웃</a></div>
	        	</c:otherwise>
	        </c:choose>
	        </div>
	        <div id="icon_conteiner">
	            <div id="icon">
	                <a href=""><img src="/image/mainPage/person.png" alt="" title="로그인" class="person"></a>
	                <a href=""><img src="/image/mainPage/heart.png" alt="" title="찜목록" class="heart_icon"></a>
	                <a href=""><img src="/image/mainPage/cart.png" alt="" title="장바구니" class="cart"></a>
	            </div>
	        </div>
	        
	        <div id="menu2">
	            <div><a href="" class="best_menu2">BEST</a></div>
	            <div><a href="" class="women_menu2">WOMEN</a></div>
	            <div><a href="" class="men_menu2">MEN</a></div>
	            <div><a href="" class="kids_menu2">KIDS</a></div>
	            <div><a href="" class="beauty_menu2">BEAUTY</a></div>
	        </div>
	        
	        
	        <div id="all2">
	            <div id="mid2">
	                <div id="best2">
	                    <div><a href="">상의</a></div>
	                    <div><a href="">하의</a></div>
	                    <div><a href="">아우터</a></div>
	                    <div><a href="">니트웨어</a></div>
	                    <div><a href="">이너웨어</a></div>
	                </div>
	                <div id="women2">
	                    <div><a href="">상의</a></div>
	                    <div><a href="">원피스</a></div>
	                    <div><a href="">바지</a></div>
	                    <div><a href="">스커트</a></div>
	                    <div><a href="">아우터</a></div>
	                    <div><a href="">니트웨어</a></div>
	                    <div><a href="">이너웨어</a></div>
	                </div>
	                <div id="men2">
	                    <div><a href="">상의</a></div>
	                    <div><a href="">하의</a></div>
	                    <div><a href="">아우터</a></div>
	                    <div><a href="">니트웨어</a></div>
	                    <div><a href="">이너웨어</a></div>
	                </div>
	                <div id="kids2" style="left: 1em;">
	                    <div><a href="">의류</a></div>
	                    <div><a href="">신발</a></div>
	                    <div><a href="">가방</a></div>
	                </div>
	                <div id="beauty2" style="left: 2em;">
	                    <div><a href="">스킨케어</a></div>
	                    <div><a href="">메이크업</a></div>
	                    <div><a href="">향수</a></div>
	                    <div><a href="">바디케어</a></div>
	                    <div><a href="">헤어케어</a></div>
	                    <div><a href="">남성뷰티</a></div>
	                </div>
	            </div>
	        </div>
	    </div>
	</header>
