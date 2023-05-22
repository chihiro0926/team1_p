<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/css/myPage.css">
<link rel="stylesheet" href="/css/footer_style.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
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
        <section class="order-list-block">
            <header class="order-list-title">
                <h2 class="title">주문내역 조회</h2>
                <ul class="state">
                    <li>입금/결제 0</li>
                    <li>배송 중 0</li>
                    <li>배송완료 0</li>
                    <li>교환/환불 0</li>
                    <li>구매확정 0</li>
                </ul>
            </header>
            <table class="order-table">
                <colgroup>
                    <col style="width:*">
                    <col style="width:19.2%">
                    <col style="width:14.2%">
                    <col style="width:15.2%">
                    <col style="width:9.2%">
                    <col style="width:14%">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">상품정보</th>
                        <th scope="col">주문일자</th>
                        <th scope="col">주문번호</th>
                        <th scope="col">주문금액(수량)</th>
                        <th scope="col" colspan="2">주문 상태</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="top">
                            <div class="top-row">
                                <img src="/image/cart-image.png" alt="상품이미지">
                                <ul class="info">
                                    <li class="shop_brand">편집샵 명 --</li>
                                    <li class="brand">[브랜드 명]</li>
                                    <li class="name">상품명 --</li>
                                    <li class="option">옵션 --</li>
                                </ul>
                            </div>
                        </td>
                        <td>2023.00.00</td>
                        <td>2023200000000</td>
                        <td>
                            <ul>
                                <li>
                                    <span>00,000</span>
                                    원
                                </li>
                                <li class="count">
                                    <span>0</span>
                                    개
                                </li>
                            </ul>
                        </td>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span>???</span>
                                    중
                                </li>
                                <li>
                                    <a href="" class="btn_cancle">취소/교환/환불</a>
                                    <a href="" class="dilivery_info">배송정보</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="top">
                            <div class="top-row">
                                <img src="/image/cart-image.png" alt="상품이미지">
                                <ul class="info">
                                    <li class="shop_brand">편집샵 명 --</li>
                                    <li class="brand">[브랜드 명]</li>
                                    <li class="name">상품명 --</li>
                                    <li class="option">옵션 --</li>
                                </ul>
                            </div>
                        </td>
                        <td>2023.00.00</td>
                        <td>2023200000000</td>
                        <td>
                            <ul>
                                <li>
                                    <span>00,000</span>
                                    원
                                </li>
                                <li class="count">
                                    <span>0</span>
                                    개
                                </li>
                            </ul>
                        </td>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span>???</span>
                                    중
                                </li>
                                <li>
                                    <a href="" class="btn_cancle">취소/교환/환불</a>
                                    <a href="" class="dilivery_info">배송정보</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="top">
                            <div class="top-row">
                                <img src="/image/cart-image.png" alt="상품이미지">
                                <ul class="info">
                                    <li class="shop_brand">편집샵 명 --</li>
                                    <li class="brand">[브랜드 명]</li>
                                    <li class="name">상품명 --</li>
                                    <li class="option">옵션 --</li>
                                </ul>
                            </div>
                        </td>
                        <td>2023.00.00</td>
                        <td>2023200000000</td>
                        <td>
                            <ul>
                                <li>
                                    <span>00,000</span>
                                    원
                                </li>
                                <li class="count">
                                    <span>0</span>
                                    개
                                </li>
                            </ul>
                        </td>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span>???</span>
                                    중
                                </li>
                                <li>
                                    <a href="" class="btn_cancle">취소/교환/환불</a>
                                    <a href="" class="dilivery_info">배송정보</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="top">
                            <div class="top-row">
                                <img src="/image/cart-image.png" alt="상품이미지">
                                <ul class="info">
                                    <li class="shop_brand">편집샵 명 --</li>
                                    <li class="brand">[브랜드 명]</li>
                                    <li class="name">상품명 --</li>
                                    <li class="option">옵션 --</li>
                                </ul>
                            </div>
                        </td>
                        <td>2023.00.00</td>
                        <td>2023200000000</td>
                        <td>
                            <ul>
                                <li>
                                    <span>00,000</span>
                                    원
                                </li>
                                <li class="count">
                                    <span>0</span>
                                    개
                                </li>
                            </ul>
                        </td>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <span>???</span>
                                    중
                                </li>
                                <li>
                                    <a href="" class="btn_cancle">취소/교환/환불</a>
                                    <a href="" class="dilivery_info">배송정보</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p class="order-table-none">
                <span>최근 구매내역이 없습니다.</span>
            </p>
            <div class="page_number">
                <span class="page active">1</span>
                <span class="page">2</span>
                <span class="page">3</span>
            </div>
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