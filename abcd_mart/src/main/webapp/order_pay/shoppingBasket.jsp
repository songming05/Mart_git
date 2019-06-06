<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>

<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>



<link rel="stylesheet" href="../css/order_pay/shoppingBasket.css" >
</head>
<body>
<div class="shoppingBasket_div">
	<header>
		<jsp:include page="../template/header.jsp"/>
	</header>
	<h2 class="shoppingBasket_title">장바구니</h2>
	<form>
		<section class="shoppingBasket_section">
			<ul class="shoppingBasket_ul">
				<li class="shoppingBasket_li_level01">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level01_image" src="../image/shoppingBasket_image01.png">
							</td>
							<td class="shoppingBasket_li_level01_td"><em>01</em></td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr>
							<td class="shoppingBasket_li_level01_td">장바구니</td>
						</tr>
					</table>
				</li>
				<li class="shoppingBasket_li_level02">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level02_image" src="../image/shoppingBasket_image05.png">
							</td>
							<td class="shoppingBasket_li_level02_td"><em>02</em></td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr>
							<td class="shoppingBasket_li_level02_td">주문서작성/결제</td>
						</tr>
					</table>
				</li>
				<li class="shoppingBasket_li_level03">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level03_image" src="../image/shoppingBasket_image06.png">
							</td>
							<td class="shoppingBasket_li_level03_td"><em>03</em></td>
						</tr>
						<tr>
							<td><hr></td>
						</tr>
						<tr>
							<td class="shoppingBasket_li_level03_td">결제완료</td>
						</tr>
					</table>
				</li>
				<li class="shoppingBasket_li_level04">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level04_image" src="../image/shoppingBasket_image07.png">
							</td>
						</tr>
					</table>
				</li>
			</ul>
			
			<div class="shoppingBasket_box">
				<!--
				<div class="shoppingBasket_box_Non-login">
					회원으로 <font>로그인</font>하시면 장바구니 품목이 저장됩니다! 회원이 아니라면 <font>회원가입</font>을 해주세요!
					<input type="button" class="shoppingBasket_box_Non-login_loginButton" value="로그인">
					<input type="button" class="shoppingBasket_box_Non-login_signupButton" value="회원가입">
				</div>
				-->
				
				<div class="shoppingBasket_box_login">
					<img class="shoppingBasket_box_login_image" src="../image/loginOk_image.png"/>
					<div class="shoppingBasket_box_login_div">
						<p class="shoppingBasket_box_login_p1">${memName }님은 온라인 회원입니다.</p>
						<p class="shoppingBasket_box_login_p2">${memName } 회원님의 쇼핑 알리미</p>
						<ul class="shoppingBasket_box_login_ul">
							<li class="shoppingBasket_box_login_li1"><img src="../image/arrow_image.png"/>사용 가능 쿠폰 : <font>${coupon }</font>장</li>
							<li class="shoppingBasket_box_login_li2"><img src="../image/arrow_image.png"/>보유 포인트 : <font>${point }</font>P</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="shoppingBasket_basketlist">
				<!--
				<img class="shoppingBasket_basketlist_image" src="../image/nobasket.png">
				<p>현재 장바구니에 담긴 상품이 없습니다.</p>
				-->
				
				<!-- 장바구니에 상품이 있을경우-->
				<p class="warning" style="text-align: right; padding-bottom: 5px; font-size: 9pt; color: #7b7b7b;">📢장바구니에 담긴 상품은 저장되지 않습니다.</p>
				<table class="shoppingBasket_basketlist_table">
					<thead>
					<tr height="53">
						<th width="50"><input type="checkbox" class="all_checkbox"/></th>
						<th width="280">상품명/옵션</th>
						<th width="70">판매가</th>
						<th width="110">수량</th>
						<th width="75">할인금액</th>
						<th width="90">주문금액/<br>적립예정 포인트</th>
						<th width="50">선택</th>
					</tr>
					</thead>
					<tbody class="table_tbody">
					<c:forEach var="list" items="${list }">
						<tr>
							<td><input type="checkbox" class="choice_checkbox"/></td>
							<td>
								<div class="shoesImage_div">
									<a href="#"><img class="shoesImage" src="../image/${list.shoesimage }.jpg" width="80" height="80"/></a>
								</div>
								<div class="shoesInfo_div">
									<span class="shoes_brand">${list.shoesbrand }</span>
									<span class="shoes_name">${list.shoesname }</span>
									<span class="shoes_color">${list.shoescolor }</span>
									<span class="shoes_option">옵션 : <em class="shoes_size">${list.shoessize }</em></span>
									<button type="button" class="shoes_optionBtn">옵션변경</button>
								</div>
							</td>
							<td>
								<div class="shoesPrice_div">
									<span class="shoes_price">${list.shoesprice }</span>원
								</div>
							</td>
							<td>
								<div class="shoesQty_div">
									<input class="qtyText" type="text" value="${list.shoesqty }" style="width: 30px; height: 22px;" readonly/>
									<button type="button" class="qtyUp" style="width: 17px; height: 11px;"><img src="../image/up_image.png"></button>
									<button type="button" class="qtyDown" style="width: 17px; height: 11px;"><img src="../image/down_image.png"></button>
									<button type="button" class="qtyButton" style="width: 32px; height: 25px; margin-left: 25px;">변경</button>
								</div>
							</td>
							<td>
								<div class="discount_div">
									<span class="discount_price">${list.shoesdiscount }<img src="../image/down_image.png"></span>원
								</div>
							</td>
							<td>
								<div class="saving_div">
									<%-- <p class="price" style="font-size: 9pt"><fmt:formatNumber pattern="#,###원" value="${?}" /> </p> --%>
									<p class="saving_div_price" style="font-size: 9pt">${list.shoesprice*list.shoesqty }원</p>
									<p class="saving_div_point" style="font-size: 9pt">${list.shoespoint }P</p>
								</div>
							</td>
							<td>
								<div class="choice_div">
									<button type="button" class="choice_div_buynow">바로구매</button>
									<button type="button" class="choice_div_wishlist">찜하기</button>
									<button type="button" class="choice_div_delete">삭제</button>
								</div>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<div class="delete_div">
					<input type="checkbox" class="delete_checkbox"/>
					<button type="button" class="delete_button">선택상품 삭제</button>
				</div>
				
				<div class="total_price_div">
					<div class="total_price_box1">
						<dl>
							<dt>주문금액</dt>
							<dd><span class="total_price_div_price"></span>원
							<img src="../image/minus_image.png"/>
						</dl>
					</div>
					<div class="total_price_box2">
						<dl>
							<dt>할인금액</dt>
							<dd><span class="total_price_div_sale">0</span>원
							<img src="../image/plus_image.png"/>
						</dl>
					</div>
					<div class="total_price_box3">
						<dl>
							<dt>배송비</dt>
							<dd><span class="total_price_div_shippingFee"></span>원
							<img src="../image/=.png"/>
						</dl>
					</div>
					<div class="total_price_box1">
						<dl>
							<dt>결제예정금액</dt>
							<dd><span class="total_price_div_total"></span>원
						</dl>
					</div>
				</div>
				
				<div class="warning_image_div">
					<img src="../image/shoppingBasket_warning_image.png"/>
				</div>
				
				<div class="bottom_menu">
					<button type="button" class="continue">계속 쇼핑하기</button>
					<button type="button" class="select_order">선택상품 주문하기</button>
					<button type="button" class="all_order">전체상품 주문하기</button>
				</div>
			</div>
			
			<div class="shoppingBasket_viewList">
				<ul class="shoppingBasket_viewList_ul">
					<li class="shoppingBasket_viewList_li">최근 본 상품</li>
				</ul>
				<p>최근 본 상품이 없습니다.</p>
			</div>
		</section>
	</form>
</div>
<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>
</body>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>



<script type="text/javascript" src="../js/order_pay/shoppingBasket.js"></script>

</html>