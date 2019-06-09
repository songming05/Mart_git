<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>검색결과</title>
<link rel="shortcut icon" type="image⁄x-icon" href="../image/mainLogo/ABCD.png">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

<link rel="stylesheet" href="../css/quickBar.css"/>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>

<link rel="stylesheet" href="../css/search/search.css">
</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>
</header>
<jsp:include page="../template/quickBarOther.jsp"/>

<div style="margin-bottom:300px;">
<div class="container_wrap">            
    <div class="container_area" id="container_area">
        <div class="container_layout">
        <div id="searchProductList">
        <div class="product_list_section mt80">
            <header class="add_header">
                <h2 class="sub_tit"><strong class="fc_type1">"${param.searchText }"</strong> <span class="normal">검색결과</span></h2>
                <p class="add_tit"><span class="fc_type8 fs16">
                    <strong class="fc_type2 tit_type2 totalPrdtCnt">${totalProduct }</strong>개 상품</span>
                </p>
            </header>
            <hr style="border-top: 1px solid #000; border-bottom: 1px solid #000; margin-top: 30px;">
            
            
            
            
            <!-- 검색결과  -->
            
           	<!-- 리스트로 받아와서 뿌려줘야 할듯 -->
            
            
                
                
            <div id="gallery_tabs_01" class="tabs-cont">
            
			
			<c:forEach var="data" items="${searchList }">
			<ul class="gallery_basic gallery_box_type1 w150">
				<li style="margin-left:50px;">							
				<div class="model_img_box" mode="1"> 
			    	<img src="../image/page/product/${data.prdtCode }/${data.prdtImage1 }" alt="${data.prdtMiniName }" onerror="imageError(this)">
			        <a href="../product/detail?prdtCode=${data.prdtCode }" class="over_link" style="display: block;"></a>
			        <div class="over_view" style="display: none;">
			            <ul>
			                <li class="view"><a onclick="openLayerProductDetail('0070376','000100')">view</a></li>
			                <li class="cart"><a onclick="openLayerProductOption('0070376')">cart</a></li>	
			                <li class="newpage"><a href="javascript://" onclick="viewProductDetail('0070376', '000100');">newpage</a></li>
			                <li class="favorit"><a href="javascript://" onclick="saveWishProduct('0070376');">favorit</a></li>
			            </ul>
			        </div>    
				</div>
				
				<a href="../product/detail?prdtCode=${data.prdtCode}" class="model_box ">
				    <span class="brand">${data.prdtBrand } </span>
				    <span class="name">${data.prdtMiniName }</span>
				    <span class="price">${data.prdtPrice }</span>
				</a>
				
				<div class="size_view_box">
				    <a href="javascript://" class="btn_size"><img src="http://image.abcmart.co.kr/nexti/images/abcmart_new/btn_size.gif"></a>
				    <ul class="size_list" prdtcode="${data.prdtCode }"></ul>
				</div>
				</li>
			</ul>
			</c:forEach>
			
			</div>
			
			
			
			
		</div>

			</div>
		</div>
	</div>
</div>
</div>            
            

<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>

</body>

<script type="text/javascript" src="../js/quickBar.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>

</html>