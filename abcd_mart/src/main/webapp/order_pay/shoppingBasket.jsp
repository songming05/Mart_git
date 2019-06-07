<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>


<link rel="stylesheet" href="../css/order_pay/shoppingBasket.css">


</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>
</header>



<div class="shoppingBasket_div" style="width: 1100px; margin: 0 auto;">
	<h2 class="shoppingBasket_title" style="text-align: center; font-size: 36px; color: black; margin-bottom: 50px;">장바구니</h2>
	<form class="shoppingBasket_form" method="post" id="shoppingForm" action="/abcd_mart/order_pay/orderList.do">
		<section class="shoppingBasket_section">
			<ul class="shoppingBasket_ul" style="height: 65px; width: 900px; margin: 0 auto;">
				<li class="shoppingBasket_li_level01" style="width: 258.8px; padding-left: 10px; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level01_image" src="../image/cart/shoppingBasket_image01.png">
							</td>
							<td class="shoppingBasket_li_level01_td" style="font-size: 18px; color: black; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;"><em>01</em></td>
						</tr>
						<tr>
							<td><hr style="border: 0.5px solid lightgray; padding: 0; margin: 0;"></td>
						</tr>
						<tr>
							<td class="shoppingBasket_li_level01_td" style="font-size: 14px; color: black; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;">장바구니</td>
						</tr>
					</table>
				</li>
				<li class="shoppingBasket_li_level02">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level02_image" src="../image/cart/shoppingBasket_image02.png">
							</td>
							<td class="shoppingBasket_li_level02_td" style="font-size: 18px; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;"><em>02</em></td>
						</tr>
						<tr>
							<td><hr style="border: 0.5px solid lightgray; padding: 0; margin: 0;"></td>
						</tr>
						<tr>
							<td class="shoppingBasket_li_level02_td" style="font-size: 14px; black; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;">주문서작성/결제</td>
						</tr>
					</table>
				</li>
				<li class="shoppingBasket_li_level03">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level03_image" src="../image/cart/shoppingBasket_image03.png">
							</td>
							<td class="shoppingBasket_li_level03_td" style="font-size: 18px; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;"><em>03</em></td>
						</tr>
						<tr>
							<td><hr style="border: 0.5px solid lightgray; padding: 0; margin: 0;"></td>
						</tr>
						<tr>
							<td class="shoppingBasket_li_level03_td" style="font-size: 14px; font-weight: bold; font-family: Verdana, sans-serif, Helvetica, sans-serif;">결제완료</td>
						</tr>
					</table>
				</li>
				<li class="shoppingBasket_li_level04">
					<table>
						<tr>
							<td rowspan="3">
								<img class="shoppingBasket_li_level04_image" src="../image/cart/shoppingBasket_image04.png" alt="이미지">
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
					<img class="shoppingBasket_box_login_image" src="../image/cart/shoppingBasket_image05.png"/>
					<div class="shoppingBasket_box_login_div">
						<p class="shoppingBasket_box_login_p1" style="font-size: 12px; padding: 0px; margin: 0px 0px 5px 0px;">${memName }님은 온라인 회원입니다.</p>
						<p class="shoppingBasket_box_login_p2" style="font-size: 12px; padding: 5px 450px 0px 0px; margin: 5px 0px 0px 0px; border-top: 1px dashed #dbdbdb; float: left;">${memName } 회원님의 쇼핑 알리미</p>
						<ul class="shoppingBasket_box_login_ul">
							<li class="shoppingBasket_box_login_li1" style="font-size: 12px;"><img src="../image/cart/shoppingBasket_image06.png"/>사용 가능 쿠폰 : <font>${coupon }</font>장</li>
							<li class="shoppingBasket_box_login_li2" style="font-size: 12px;"><img src="../image/cart/shoppingBasket_image06.png"/>보유 포인트 : <font>${point }</font>P</li>
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
									<a href="#"><img class="shoes_image" src="../image/page/product/${list.prdtcode }/${list.shoesimage }" width="80" height="80"/></a>
									<input type="hidden" class="hidden_shoes_image" name="shoesimage" value="${list.shoesimage }"/>
									<input type="hidden" class="hidden_id" name="id" value="${list.id }"/>
									<input type="hidden" class="hidden_prdtcode" name="prdtcode" value="${list.prdtcode }"/>
								</div>
								<div class="shoesInfo_div">
									<span class="shoes_brand">${list.shoesbrand }</span>
									<input type="hidden" name="shoesbrand" value="${list.shoesbrand }"/>
									<span class="shoes_name">${list.shoesname }</span>
									<input type="hidden" name="shoesname" value="${list.shoesname }"/>
									<span class="shoes_color">${list.shoescolor }</span>
									<input type="hidden" name="shoescolor" value="${list.shoescolor }"/>
									<span class="shoes_option" style="font-size: 7pt; font-weight: normal; font-style: normal;">옵션 : <em class="shoes_size" style="font-size: 7pt; font-weight: bold; font-style: normal;">${list.shoessize }</em></span>
									<input type="hidden" name="shoessize" value="${list.shoessize }"/>
									<button type="button" class="shoes_optionBtn" style="height: 18px; width: 58px;">옵션변경</button>
								</div>
							</td>
							<td>
								<div class="shoesPrice_div">
									<span class="shoes_price" style="font-weight: bold; color: black;"><fmt:formatNumber value="${list.shoesprice }" type="number"/></span>원
									<input type="hidden" class="hidden_shoesprice" name="shoesprice" value="${list.shoesprice }"/>
								</div>
							</td>
							<td>
								<div class="shoesQty_div">
									<input class="qtyText" type="text" name="shoesqty" value="${list.shoesqty }" style="width: 30px; height: 26px; font-weight: bold; font-size: 10px;" readonly/>
									<button type="button" class="qtyUp" style="width: 19px; height: 13px;"><img src="../image/cart/shoppingBasket_image08.png" style="position: relative; top: -3px;"></button>
									<button type="button" class="qtyDown" style="width: 19px; height: 13px;"><img src="../image/cart/shoppingBasket_image09.png" style="position: relative; top: -3px;"></button>
									<button type="button" class="qtyButton" style="width: 32px; height: 25px; margin-left: 25px;">변경</button>
								</div>
							</td>
							<td>
								<div class="discount_div">
									<span class="discount_price" style="color: black;"><fmt:formatNumber value="${list.shoesdiscount }" type="number"/><img src="../image/cart/shoppingBasket_image09.png"></span>원
									<input type="hidden" class="hidden_shoesdiscount" name="shoesdiscount" value="${list.shoesdiscount }"/>
								</div>
							</td>
							<td>
								<div class="saving_div">
									<span class="saving_div_price" style="font-size: 9pt; color: black;"><fmt:formatNumber value="${list.shoesprice*list.shoesqty }" type="number"/></span>원
									<input type="hidden" class="hidden_shoestotalprice" name="shoestotalprice" value="${list.shoesprice*list.shoesqty }"/>
									<br>
									<span class="saving_div_point" style="font-size: 9pt; color: black;"><fmt:formatNumber value="${list.shoespoint }" type="number"/></span>P
									<input type="hidden" class="hidden_shoespoint" name="shoespoint" value="${list.shoespoint }"/>
								</div>
							</td>
							<td>
								<div class="choice_div">
									<button type="button" class="choice_div_buynow" >바로구매</button>
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
							<dd><span class="total_price_div_price" style="color: black; font-size: 21px;"></span>원
						</dl>
						<img src="../image/cart/minus.png"/>
					</div>
					<div class="total_price_box2">
						<dl>
							<dt>할인금액</dt>
							<dd><span class="total_price_div_sale" style="color: black; font-size: 21px;"></span>원
						</dl>
						<img src="../image/cart/plus.png"/>
					</div>
					<div class="total_price_box3">
						<dl>
							<dt>배송비</dt>
							<dd><span class="total_price_div_shippingFee" style="color: black; font-size: 21px;"></span>원
						</dl>
						<img src="../image/cart/equal.png"/>
					</div>
					<div class="total_price_box1">
						<dl>
							<dt>결제예정금액</dt>
							<dd><span class="total_price_div_total" style="color: black; font-size: 21px;"></span>원
						</dl>
					</div>
				</div>
				
				<div class="warning_image_div">
					<img src="../image/cart/shoppingBasket_image07.png"/>
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