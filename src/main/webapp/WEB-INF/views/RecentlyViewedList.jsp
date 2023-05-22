<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최근 본 상품 목록</title>
<link rel="stylesheet" href="/css/myPage.css">
<link rel="stylesheet" href="/css/RecentlyViewedList.css">
<link rel="stylesheet" href="/css/footer_style.css">
<link rel="stylesheet" href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<main id="content">
        <div id="commonMypage">
            <section class="user_info">
                <h1 class="h3">My page</h1>
                <div class="user_info_2">
                    <div class="imagebox">
                        <img src="/image/user.png" alt="userimage" class="userimage">
                    </div>
                    <div class="userinfo">
                        <div class="username">
                            <strong>${userDTO.nickName }</strong>
                            <a href="/userInfoEdit">회원정보 수정 ></a>
                        </div>
                    </div>
                    <div class="userpoint">
                        <div class="point">
                            <a href="https://www.naver.com">적립금 >
                                <p>1,700</p>
                            </a>
                            <a href="https://www.naver.com">쿠폰 >
                                <p>2</p>
                            </a>
                            <a href="https://www.naver.com">리뷰 >
                                <p>3</p>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <nav class="mypage_nav">
                <div class="mypage_nav_all">
                    <a href="/myPage" class="a1">주문 내역 조회 ></a>
                    <a href="/likeList" class="a2">찜 목록 ></a>
                    <a href="/RecentlyViewedList" class="a3">최근 본 상품 목록 ></a>
                </div>
            </nav> 
        </div>
        <section class="like-list-block">
            <header class="like-list-title">
                <h2 class="title">최근 본 상품 목록</h2>
                <span class="like_info">최근 본 상품 20개까지만 표시됩니다.</span>
            </header>
            <section class="img_block_section">
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <div class="img_block">
                    <a href="">
                        <img src="/image/111111.png" alt="상품이미지">
                    </a>
                </div>
                <p class="like_list_none">
                    <span>찜한 상품이 없습니다.</span>
                </p>

            </section>
        </section>
    </main>
    <footer>
        <div class="footer_top">
            <nav class="footer_nav">
                <a href="" target="_blank" class="right_line footer_a">회사소개</a>
                <a href="" target="_blank" class="right_line footer_a">서비스소개</a>
                <a href="" target="_blank" class="right_line footer_a">이용약관</a>
                <a href="" target="_blank" class="right_line footer_a">개인정보처리방침</a>
                <a href="" target="_blank" class="right_line footer_a">사이트맵</a>
                <a href="" target="_blank" class="right_line footer_a">입점문의</a>
                <a href="" target="_blank" class="right_line footer_a">제휴 프로그램</a>
                <a href="" target="_blank" class="right_line footer_a">위조품 처리정책</a>
                <a href="" target="_blank" class="footer_a">지식재산권센터</a>
            </nav>
        </div>
        <div class="footer_bottom">
            <div class="footer_logo"><a href=""><img src="/image/footerlogo.png" class="footer_logo_img"></a></div>
            <div><h4 class="footer_h4">(주) 팀지</h4></div>
            <div class="footer_in">
                <div class="footer_category_box"><p class="footer_category footer_p">대표 : </p><p class="footer_category_in footer_p">월화수목금쪽이</p></div>
                <div class="footer_category_box"><p class="footer_category footer_p">소재지 : </p><p class="footer_category_in footer_p">서울특별시 영등포구 영중로8길 6 401(영등포동3가) 휴먼교육센터</p></div>
                <div class="footer_category_box"><p class="footer_category footer_p">사업자 등록번호 : </p><p class="footer_category_in footer_p">123-팀지-45678</p></div>
                <div class="footer_category_box"><p class="footer_category footer_p">팩스 :</p> <p class="footer_category_in footer_p">070-있을리가-없지요</p></div>
            </div>
            <div class="footer_in">
                <div class="footer_category_box"><p class="footer_category footer_p">통신판매업신고 : </p><p class="footer_category_in footer_p">2023-안받았음-12345</p></div>
            </div>
            <div class="footer_in">
                <div class="footer_category_box"><p class="footer_category footer_p">전화번호 :</p><p class="footer_category_in footer_p">1234-1234</p></div>
                <div class="footer_category_box"><p class="footer_category footer_p">이메일 : </p><p class="footer_category_in footer_p">callteamg@teamg.com</p></div>
            </div>
            <div class="a_little_margin"><p class="footer_caption footer_p">일부 상품의 경우 TEAMG는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한 책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</p></div>
        </div>
    </footer>
</body>
</html>