<%@ page language="java" contentType="text/html; charset= UTF-8"
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

<link rel="stylesheet" href="../css/category/category.css"/>
</head>
<body>

<header>
<jsp:include page="../template/header.jsp"/>
</header>

<form>
<div class="categoryPage_div">
	<section class="top" style="padding: 10px 0px;">
		<a href="#" class="top_a" style="font-size: 15px; font-weight: bold; padding: 10px 0px 10px 10px;">홈</a>
		<span class="top_span">➡</span>
		<select class="top_select" style="position: relative; top: -2px;">
			<c:if test="${category eq 'sportsShoes' }">
				<option value="sportsShoes">운동화
				<option value="shoes">구두
				<option value="sandal">샌들
				<option value="boots">부츠
			</c:if>
			<c:if test="${category eq 'shoes' }">
				<option value="shoes">구두
				<option value="sportsShoes">운동화	
				<option value="sandal">샌들
				<option value="boots">부츠
			</c:if>
			<c:if test="${category eq 'sandal' }">
				<option value="sandal">샌들
				<option value="sportsShoes">운동화
				<option value="shoes">구두
				<option value="boots">부츠
			</c:if>
			<c:if test="${category eq 'boots' }">
				<option value="boots">부츠
				<option value="sportsShoes">운동화
				<option value="shoes">구두
				<option value="sandal">샌들	
			</c:if>
		</select>
	</section>
	<section class="body">
		<div class="category">
			<table class="category_table" style="padding: 10px;">
				<c:if test="${category eq 'sportsShoes' }">
					<tr>
						<td style="width: 150px; height: 40px; border-bottom: 1px solid black; padding: 0px 10px; font-size: 15px; font-weight: bold; color: black;">운동화</td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 10px 10px 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=converse" class="converse">컨버스화<span class="category_table_span1" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=slipon" class="slipon">슬립온<span class="category_table_span2">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=sneakers" class="sneakers">스니커즈<span class="category_table_span3" style="margin-left: 95px;">></span></a></td>
					</tr>
				</c:if>
				<c:if test="${category eq 'shoes' }">
					<tr>
						<td style="width: 150px; height: 40px; border-bottom: 1px solid black; padding: 0px 10px; font-size: 15px; font-weight: bold; color: black;">구두</td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 10px 10px 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=oxford" class="oxford">옥스포드<span class="category_table_span1" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=loafers" class="loafers">로퍼<span class="category_table_span2" style="margin-left: 117px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=deckshoes" class="deckshoes">데크슈즈<span class="category_table_span3" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=flat" class="flat">플랫<span class="category_table_span4" style="margin-left: 117px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=heel" class="heel">힐<span class="category_table_span5" style="margin-left: 128px;">></span></a></td>
					</tr>
				</c:if>
				<c:if test="${category eq 'sandal' }">
					<tr>
						<td style="width: 150px; height: 40px; border-bottom: 1px solid black; padding: 0px 10px; font-size: 15px; font-weight: bold; color: black;">샌들</td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 10px 10px 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=flipflop" class="flipflop">플립플랍<span class="category_table_span1" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=slide" class="slide">슬라이드<span class="category_table_span2" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=strapsandal" class="strapsandal">스트랩샌들<span class="category_table_span3" style="margin-left: 84px;">></span></a></td>
					</tr>
				</c:if>
				<c:if test="${category eq 'boots' }">
					<tr>
						<td style="width: 150px; height: 40px; border-bottom: 1px solid black; padding: 0px 10px; font-size: 15px; font-weight: bold; color: black;">부츠</td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 10px 10px 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=workboots" class="workboots">워크부츠<span class="category_table_span1" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=anchorbooty" class="anchorbooty">앵클.부티<span class="category_table_span2" style="margin-left: 91px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=rainboots" class="rainboots">레인부츠<span class="category_table_span3" style="margin-left: 95px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=boots" class="boots">털부츠<span class="category_table_span4" style="margin-left: 106px;">></span></a></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 20px; padding: 5px 10px; font-size: 11px; font-weight: normal; color: #666666;"><a href="/abcd_mart/category/categoryPage2?category1=${category }&category2=paddingboots" class="paddingboots">패딩부츠<span class="category_table_span5" style="margin-left: 95px;">></span></a></td>
					</tr>
				</c:if>
			</table>
		</div>
		
		<div class="themeshop" style="margin-left: 35px; margin-bottom: 30px;">
			<table class="themeshop_table">
				<tr>
					<td colspan="4" style="padding: 10px 10px; font-size: 15px; font-weight: bold; color: black;">인기 추천 테마샵</td>
				</tr>
				<tr>
					<c:forEach var="hotlist" items="${hotList }" varStatus="status" begin="0" end="3">
						<td class="themeshop_table_td" style="background-color: #e4e4e4; width: 220px; padding: 10px 0px;">
							<a href="/abcd_mart/product/detail?prdtCode=${hotlist.prdtCode }"><img src="../image/page/product/${hotlist.prdtCode }/${hotlist.prdtCode }_title.jpg" class="themeshop_image01"/></a>
							<p class="category_table_brand_01" style="font-size: 10px; font-weight: bold; color: black;">${hotlist.prdtBrand }</p>
							<p class="category_table_name_01" style="font-size: 10px; font-weight: normal;">${hotlist.prdtMiniName }</p>
							<p class="category_table_price_01" style="font-size: 10px; font-weight: bold; color: black;">
								<fmt:formatNumber value="${hotlist.prdtPrice }" type="number"/>
							</p>
						</td>
					</c:forEach>
				</tr>
			</table>
		</div>
		
		<div class="best">
			<c:set var="i" value="0" />
			<c:set var="j" value="5" />
			<table class="best_table">
				<tr>
					<td colspan="5" style="height: 40px; padding: 0px 10px; font-size: 15px; font-weight: bold; border-bottom: 1px solid #c0c0c0; color: black;">카테고리 베스트 & 신상품</td>
				</tr>
				<c:forEach items="${shoesList }" var="shoeslist">
					<c:if test="${i%j == 0 }">	
						<tr>
					</c:if>
					<td class="best_table_td" style="width: 250px; padding: 10px 0px;">
						<a href="/abcd_mart/product/detail?prdtCode=${shoeslist.prdtCode }" style="text-align: center; width: 250px"><img src="../image/page/product/${shoeslist.prdtCode }/${shoeslist.prdtCode }_title.jpg" class="best_image01" style="display: block; margin: 0px auto; cursor: pointer;"/></a>
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
	</section>
</div>

<div class="sizelist_div">
	<table class="table_qty" style="font-size:12px; font-weight:bold;">
		<tbody class="sizelist_tbody">
		</tbody>
	</table>
</div>

</form>


<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>

</body>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>

<script type="text/javascript" src="../js/category/category.js"></script>

</html>