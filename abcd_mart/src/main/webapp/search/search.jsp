<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>검색결과</title>

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

<div class="container_wrap">            
    <div class="container_area" id="container_area">
        <div class="container_layout">
            <header class="add_header">
                <h2 class="sub_tit"><strong class="fc_type1">"${param.searchText }"</strong> <span class="normal">검색결과</span></h2>
                <p class="add_tit"><span class="fc_type8 fs16">
                    <strong class="fc_type2 tit_type2 totalPrdtCnt">???</strong>개 상품</span>
                </p>
            </header>
            <hr style="border-top: 1px solid #000; border-bottom: 1px solid #000; margin-top: 30px;">
            
            
            
            
            <!-- 검색결과  -->
            
           	<!-- 리스트로 받아와서 뿌려줘야 할듯 -->
            
            
            
            <div id="searchProductList">
                <header class="list_header_area">
	                <div class="list_condition_box">
	                    <ul class="range_box"> 
	                        <li class="sort on" onclick="setSort('ENTRY_DT');"><a href="javascript://">신상품순</a></li>
	                        <li class="sort " onclick="setSort('SELL_COUNT');"><a href="javascript://">베스트상품순</a></li>
	                        <li class="sort " onclick="setSort('RVW_COUNT');"><a href="javascript://">상품평순</a></li>
	                        <li class="sort " onclick="setSort('LOW_PRDT_DC_PRICE');"><a href="javascript://">낮은가격순</a></li>
	                        <li class="sort " onclick="setSort('HIGHT_PRDT_DC_PRICE');"><a href="javascript://">높은가격순</a></li>
	                    </ul>
	                    <div class="check_type_gallery">
	                        <ul class="view_type tabs-nav">
	                            <li class="current"><a href="#gallery_tabs_01" class="ico_view_box">이미지보기</a></li>
	                            <li><a href="#gallery_tabs_02" class="ico_view_list">리스트보기</a></li>
	                        </ul>
	                        <div class="wrap_drop_down">
	                            <a href="javascript://">40개씩 보기<i class="ico_arrow1"></i></a>
	                            <div class="list_drop_down mt20">
	                                <ul>                     
	                                    <li class="listSize" onclick="setListSize('40')"><a href="javascript://">40개씩 보기</a></li>
	                                    <li class="listSize" onclick="setListSize('60')"><a href="javascript://">60개씩 보기</a></li>
	                                    <li class="listSize" onclick="setListSize('80')"><a href="javascript://">80개씩 보기</a></li>
	                                    <li class="listSize" onclick="setListSize('100')"><a href="javascript://">100개씩 보기</a></li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </header>
                
                
            <div id="gallery_tabs_01" class="tabs-cont">
            
            
			<ul class="gallery_basic gallery_box_type1 w150">
			<div class="model_img_box" mode="1"> 
			    <img src="http://image.abcmart.co.kr/nexti/images/list/1577/0070376_list.jpg" alt="WMNS NIKE TODOS" onerror="imageError(this)">
			        <a href="/abc/product/detail?prdtCode=0070376&amp;ctgrId=000100" class="over_link" style="display: none;"></a>
			        <div class="over_view" style="display: none;">
			            <ul>
			                <li class="view"><a onclick="openLayerProductDetail('0070376','000100')">view</a></li>
			                <li class="cart"><a onclick="openLayerProductOption('0070376')">cart</a></li>	
			                <li class="newpage"><a href="javascript://" onclick="viewProductDetail('0070376', '000100');">newpage</a></li>
			                <li class="favorit"><a href="javascript://" onclick="saveWishProduct('0070376');">favorit</a></li>
			            </ul>
			        </div>    
			</div>
			
			<a href="/abc/product/detail?prdtCode=0070376&amp;ctgrId=000100" class="model_box ">
			    <span class="brand">나이키</span>
			    <span class="name">WMNS NIKE TODOS</span>
			    <span class="price">69,000</span>
			</a>
			
			<div class="size_view_box">
			    <a href="javascript://" class="btn_size"><img src="http://image.abcmart.co.kr/nexti/images/abcmart_new/btn_size.gif"></a>
			    <ul class="size_list" prdtcode="0070376"></ul>
			</div>  
			                                    <li>  
			
			<div class="model_img_box" mode="1">
			    <img src="http://image.abcmart.co.kr/nexti/images/list/1082/0070377_list.jpg" alt="WMNS NIKE TODOS" onerror="imageError(this)">
			        <a href="/abc/product/detail?prdtCode=0070377&amp;ctgrId=000100" class="over_link" style="display: none;"></a>
			        <div class="over_view" style="display: none;">
			            <ul>
			              <li class="view"><a onclick="openLayerProductDetail('0070377','000100')">view</a></li>
			              <li class="cart"><a onclick="openLayerProductOption('0070377')">cart</a></li>		
			              <li class="newpage"><a href="javascript://" onclick="viewProductDetail('0070377', '000100');">newpage</a></li>
			              <li class="favorit"><a href="javascript://" onclick="saveWishProduct('0070377');">favorit</a></li>
			            </ul>
			        </div>
			</div>
			
			
			<a href="/abc/product/detail?prdtCode=0070377&amp;ctgrId=000100" class="model_box ">
			    <span class="brand">나이키</span>
			    <span class="name">WMNS NIKE TODOS</span>
			    <span class="price">69,000</span>
			</a>
			    
			    
			<div class="size_view_box">
			    <a href="javascript://" class="btn_size"><img src="http://image.abcmart.co.kr/nexti/images/abcmart_new/btn_size.gif"></a>
			    <ul class="size_list" prdtcode="0070377"></ul>
			</div>
			</li>
			</ul>
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