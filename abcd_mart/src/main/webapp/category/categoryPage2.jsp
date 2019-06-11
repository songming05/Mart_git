<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>

<link rel="stylesheet" href="../css/category/category2.css"/>
</head>
<body>

<header>
<jsp:include page="../template/header.jsp"/>
</header>

<div class="categoryPage2_div">
	<input type="hidden" class="hidden_category1" value="${category1 }"/>
	<input type="hidden" class="hidden_category2" value="${category2 }"/>
	<section class="top" style="padding: 10px 0px;">
		<a href="#" class="top_a" style="font-size: 15px; font-weight: bold; padding: 10px 0px 10px 10px;">홈</a>
		<span class="top_span">➡</span>
		<select class="top_select" style="position: relative; top: -2px;">
			<c:if test="${category1 eq 'sportsShoes' }">
				<option value="sportsShoes">운동화
				<option value="shoes">구두
				<option value="sandal">샌들
				<option value="boots">부츠
			</c:if>
			<c:if test="${category1 eq 'shoes' }">
				<option value="shoes">구두
				<option value="sportsShoes">운동화	
				<option value="sandal">샌들
				<option value="boots">부츠
			</c:if>
			<c:if test="${category1 eq 'sandal' }">
				<option value="sandal">샌들
				<option value="sportsShoes">운동화
				<option value="shoes">구두
				<option value="boots">부츠
			</c:if>
			<c:if test="${category1 eq 'boots' }">
				<option value="boots">부츠
				<option value="sportsShoes">운동화
				<option value="shoes">구두
				<option value="sandal">샌들	
			</c:if>
		</select>
		<span class="top_span">➡</span>
		<select class="top_select2" style="position: relative; top: -2px;">
			<c:if test="${category2 eq 'converse' }">
				<option value="converse">컨버스화
				<option value="slipon">슬립온
				<option value="sneakers">스니커즈
			</c:if>
			<c:if test="${category2 eq 'slipon' }">
				<option value="slipon">슬립온
				<option value="converse">컨버스화	
				<option value="sneakers">스니커즈
			</c:if>
			<c:if test="${category2 eq 'sneakers' }">
				<option value="sneakers">스니커즈
				<option value="converse">컨버스화
				<option value="slipon">슬립온
			</c:if>
			<c:if test="${category2 eq 'oxford' }">
				<option value="oxford">옥스포드
				<option value="loafers">로퍼	
				<option value="deckshoes">데크슈즈
				<option value="flat">플랫
				<option value="heel">힐
			</c:if>
			<c:if test="${category2 eq 'loafers' }">
				<option value="loafers">로퍼	
				<option value="oxford">옥스포드
				<option value="deckshoes">데크슈즈
				<option value="flat">플랫
				<option value="heel">힐
			</c:if>
			<c:if test="${category2 eq 'deckshoes' }">
				<option value="deckshoes">데크슈즈
				<option value="oxford">옥스포드
				<option value="loafers">로퍼	
				<option value="flat">플랫
				<option value="heel">힐
			</c:if>
			<c:if test="${category2 eq 'flat' }">
				<option value="flat">플랫
				<option value="oxford">옥스포드
				<option value="loafers">로퍼	
				<option value="deckshoes">데크슈즈
				<option value="heel">힐
			</c:if>
			<c:if test="${category2 eq 'heel' }">
				<option value="heel">힐
				<option value="oxford">옥스포드
				<option value="loafers">로퍼	
				<option value="deckshoes">데크슈즈
				<option value="flat">플랫
			</c:if>
			<c:if test="${category2 eq 'flipflop' }">
				<option value="flipflop">플립플랍
				<option value="slide">슬라이드
				<option value="strapsandal">스트랩샌들
			</c:if>
			<c:if test="${category2 eq 'slide' }">
				<option value="slide">슬라이드
				<option value="flipflop">플립플랍
				<option value="strapsandal">스트랩샌들
			</c:if>
			<c:if test="${category2 eq 'strapsandal' }">
				<option value="strapsandal">스트랩샌들
				<option value="flipflop">플립플랍
				<option value="slide">슬라이드
			</c:if>
			<c:if test="${category2 eq 'workboots' }">
				<option value="workboots">워크부츠
				<option value="anchorbooty">앵클.부티
				<option value="rainboots">레인부츠
				<option value="boots">털부츠
				<option value="paddingboots">패딩부츠
			</c:if>
			<c:if test="${category2 eq 'anchorbooty' }">
				<option value="anchorbooty">앵클.부티
				<option value="workboots">워크부츠
				<option value="rainboots">레인부츠
				<option value="boots">털부츠
				<option value="paddingboots">패딩부츠
			</c:if>
			<c:if test="${category2 eq 'rainboots' }">
				<option value="rainboots">레인부츠
				<option value="workboots">워크부츠
				<option value="anchorbooty">앵클.부티
				<option value="boots">털부츠
				<option value="paddingboots">패딩부츠
			</c:if>
			<c:if test="${category2 eq 'boots' }">
				<option value="boots">털부츠
				<option value="workboots">워크부츠
				<option value="anchorbooty">앵클.부티
				<option value="rainboots">레인부츠
				<option value="paddingboots">패딩부츠
			</c:if>
			<c:if test="${category2 eq 'paddingboots' }">
				<option value="paddingboots">패딩부츠
				<option value="workboots">워크부츠
				<option value="anchorbooty">앵클.부티
				<option value="rainboots">레인부츠
				<option value="boots">털부츠
			</c:if>
		</select>
	</section>
	
	<section>
	<c:choose>
		<c:when test="${category2 eq 'converse' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">컨버스화</h1>
		</c:when>
		<c:when test="${category2 eq 'slipon' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">슬립온</h1>
		</c:when>
		<c:when test="${category2 eq 'sneakers' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">스니커즈</h1>
		</c:when>
		<c:when test="${category2 eq 'oxford' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">옥스포드</h1>
		</c:when>
		<c:when test="${category2 eq 'loafers' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">로퍼</h1>
		</c:when>
		<c:when test="${category2 eq 'deckshoes' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">데크슈즈</h1>
		</c:when>
		<c:when test="${category2 eq 'flat' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">플랫</h1>
		</c:when>
		<c:when test="${category2 eq 'heel' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">힐</h1>
		</c:when>
		<c:when test="${category2 eq 'flipflop' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">플립플랍</h1>
		</c:when>
		<c:when test="${category2 eq 'slide' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">슬라이드</h1>
		</c:when>
		<c:when test="${category2 eq 'strapsandal' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">스트랩샌들</h1>
		</c:when>
		<c:when test="${category2 eq 'workboots' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">워크부츠</h1>
		</c:when>
		<c:when test="${category2 eq 'anchorbooty' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">앵클.부티</h1>
		</c:when>
		<c:when test="${category2 eq 'rainboots' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">레인부츠</h1>
		</c:when>
		<c:when test="${category2 eq 'boots' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">털부츠</h1>
		</c:when>
		<c:when test="${category2 eq 'paddingboots' }">
			<h1 style="color: black; font-size: 54px; text-align: center; margin-top: 50px;">패딩부츠</h1>
		</c:when>
	</c:choose>
	</section>
	
	<section style="margin-top: 50px;">
		<div style="color: #a4a4a4; font-size: 11px; font-weight:normal; padding-bottom: 10px; border-bottom: 1px solid black;">*총 <span class="" style="color: red; font-weight: bold;">${listCount }</span> 개의 상품이 있습니다</div>
	</section>
	
	<div class="list">
		<c:set var="i" value="0" />
		<c:set var="j" value="5" />
		<table class="best_table">
			<c:forEach items="${shoesList }" var="shoeslist">
				<c:if test="${i%j == 0 }">	
					<tr>
				</c:if>
				<td class="best_table_td" style="width: 250px; padding: 10px 0px;">
					<img src="../image/page/product/${shoeslist.prdtCode }/${shoeslist.prdtCode }_title.jpg" class="best_image01" style="display: block; margin: 0px auto; cursor: pointer;"/>
					<p class="best_table_brand_01" style="font-size: 10px; font-weight: bold; color: black;">${shoeslist.prdtBrand }</p>
					<p class="best_table_name_01" style="font-size: 10px; font-weight: normal;">${shoeslist.prdtMiniName }</p>
					<p class="best_table_price_01" style="font-size: 10px; font-weight: bold; color: black;">
						<fmt:formatNumber value="${shoeslist.prdtPrice }" type="number"/>
					</p>
					<img src="../image/category/category_image01.png" class="sizelist" style="width: 77px; height: 16px; display: block; margin: 0px auto;"/>
					<input type="hidden" class="hidden_prdtcode" value="${shoeslist.prdtCode }"/>
				</td>
				<c:if test="${i%j == j-1 }">
					</tr>
				</c:if>
				<c:set var="i" value="${i+1 }" />
			</c:forEach>
		</table>
	</div>
</div>

<div class="sizelist_div">
	<table class="table_qty" style="font-size:12px; font-weight:bold;">
		<tbody class="sizelist_tbody">
		</tbody>
	</table>
</div>

<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>

</body>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>

<script type="text/javascript" src="../js/category/category2.js"></script>


</html>