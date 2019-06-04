<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />

<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>




<title>ABCD 전국 매장 찾기</title>

<link rel="stylesheet" href="../css/sotreList/sub22.css">

<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.0.min.js"></script>




<body>


<header>

<jsp:include page="../template/header.jsp"/>


</header>
 <section class="cutomer_cont store_mapCont">
        <section class="store_mapbox mt30 clearfix">
            
            <div class="store_map">
                <ul>
                     <li class="map01">
                    	<div class="positR">
	                    	<a href="javascript://" targetId="areaCode" idValue="01">
	                    	<img src='../image/abcd_mart_map/map_01.png' alt="서울">
	                    	</a>
	                    	<span>서울 <em>1개</em></span>
                    	</div>
                    </li>
                    <li class="map02"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="06"><img src='../image/abcd_mart_map/map_02.png' alt="경기도"></a><span>경기도 <em>0개</em></span></div></li>
                    <li class="map03"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="07"><img src='../image/abcd_mart_map/map_03.png' alt="인천광역시"></a><span>인천광역시 <em>0개</em></span></div></li>
                    <li class="map04"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="02"><img src='../image/abcd_mart_map/map_04.png' alt="강원도"></a><span>강원도 <em>0개</em></span></div></li>
                    <li class="map05"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="03"><img src='../image/abcd_mart_map/map_05.png' alt="대전광역시"></a><span>대전광역시 <em>0개</em></span></div></li>
                    <li class="map06"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="04"><img src='../image/abcd_mart_map/map_06.png' alt="충청남도"></a><span>충청남도 <em>0개</em></span></div></li>
                    <li class="map07"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="05"><img src='../image/abcd_mart_map/map_07.png' alt="충청북도"></a><span>충청북도 <em>0개</em></span></div></li>
                    <li class="map08"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="08"><img src='../image/abcd_mart_map/map_08.png' alt="광주광역시"></a><span>광주광역시 <em>0개</em></span></div></li>
                    <li class="map09"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="10"><img src='../image/abcd_mart_map/map_09.png' alt="전라북도"></a><span>전라북도 <em>0개</em></span></div></li>
                    <li class="map10"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="09"><img src='../image/abcd_mart_map/map_10.png' alt="전라남도"></a><span>전라남도 <em>0개</em></span></div></li>
                    <li class="map11"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="14"><img src='../image/abcd_mart_map/map_11.png' alt="대구광역시"></a><span>대구광역시 <em>0개</em></span></div></li>
                    <li class="map12"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="13"><img src='../image/abcd_mart_map/map_12.png' alt="경상북도"></a><span>경상북도 <em>0개</em></span></div></li>
                    <li class="map13"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="12"><img src='../image/abcd_mart_map/map_13.png' alt="경상남도"></a><span>경상남도 <em>0개</em></span></div></li>
                    <li class="map14"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="15"><img src='../image/abcd_mart_map/map_14.png' alt="울산광역시"></a><span>울산광역시 <em>0개</em></span></div></li>
                    <li class="map15"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="11"><img src='../image/abcd_mart_map/map_15.png' alt="부산광역시"></a><span>부산광역시 <em>0개</em></span></div></li>
                    <li class="map16"><div class="positR"><a href="javascript://" targetId="areaCode" idValue="16"><img src='../image/abcd_mart_map/map_16.png' alt="제주도"></a><span>제주도 <em>0개</em></span></div></li>
                </ul>
            </div>
            
            <div class="search_ri">
                <h3 class="tit_type1 fs22 ml10">전국매장검색</h3>
                <p class="mt5 ml10">지역이나 매장명 검색으로 가까운 매장정보를 찾으실 수 있습니다.</p>
                <section class="ml10" style="padding-bottom: 0px;margin-bottom: -20;margin-bottom: 20px;border-bottom-width: 1px;">
                    <form name="areaSearchForm" action='#' method="post" onsubmit="return searchValueCheck()">
                        <input type="hidden" id="areaCode" name="sort">
                        <input type="hidden" id="gu" name="gu">
                        <input type="hidden" id="gbnSort" name="gbnSort" value=''>
                        <input type="hidden" id="gbnSort1" name="gbnSort1" value=''>
                        <input type="hidden" id="gbnSort2" name="gbnSort2" value=''>
                        <input type="hidden" id="gbnSort3" name="gbnSort3" value=''>
                        <input type="hidden" id="gbnSort6" name="gbnSort6" value=''>
                        <input type="hidden" id="gbnSort7" name="gbnSort7" value=''>
                        <input type="hidden" id="wearSellYn" name="wearSellYn">
                        <input type="hidden" id="chngRfndYn" name="chngRfndYn">
                        <input type="hidden" id="giftCardUseYn" name="giftCardUseYn">
                        <input type="hidden" id="pointUseYn" name="pointUseYn">
                        
                        <input type="hidden" name="page">
                        <div class="line_up clearfix ">
                            <div class="relation_product fl-l areaCodeList">
                                <a href="#" class="bigArea" style="width:199px;">광역시/도<span class="ico_arrow1"></span></a>
                                <ul class="relation_list siDoList" style="width:199px;top:20px;">
                                    <li><a href="javascript://" targetId="areaCode" idValue="">광역시/도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='01'>서울특별시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='02'>강원도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='03'>대전광역시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='04'>충청남도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='05'>충청북도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='06'>경기도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='07'>인천광역시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='08'>광주광역시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='09'>전라남도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='10'>전라북도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='11'>부산광역시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='12'>경상남도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='13'>경상북도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='14'>대구광역시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='15'>울산광역시</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='16'>제주특별자치도</a></li>
                                    
                                        <li><a href="javascript://" targetId="areaCode" idValue='17'>세종특별자치시</a></li>
                                    
                                </ul>
                            </div>
                            <div class="relation_product fl-l areaCodeList ml10">
                                <a href="#" class="smallArea" style="width:199px;">전체<span class="ico_arrow1"></span></a>
                                <ul class="relation_list guGunList" style="width:199px;top:20px;"></ul>
                            </div>
                        </div>
                        <div class="mt10">
                            <span class="search_input">
                                <input type="text" style="width:335px;" name="searchValue" value='' /><button type="button" class="btn_sType4 ml10" style="width:63px; height:30px;">검색</button>
                            </span>
                        </div>
                        <div><hr class="line"></div>
                        <div class="mt10">
                            <span class="search_input">
                                <div align="center" style="font-weight: bold; color:red;">신발은 언제나~ ABCD 마트 !!!</div>
                            </span>
                        </div>
                    </form>
                </section>
            </div>
        </section>
        
            <h3 class="fs16 tit_type1 ml10 mt55">신규 매장정보</h3>
            <div class="new_storebox mt10">
                <ul class="clearfix">
                    
                        <li>
                            <p class="newTit"><span>NEW</span>STORE</p>
                            <div class="conbox">
                                <p class="s_name">ABCD 성서홈플러스점</p>
                                <p class="s_add">대구 달서구 달구벌대로 1467 (용산동) 홈플러스 성서점 B2층</p>
                                <p class="s_tel">053-721-ABCD</p>
                                <p class="s_openday">오픈일 : 
                                    <strong>
                                        2019.99.99
                                    </strong>
                                </p>
                                <p class="s_btnbox">
                                <!--  onclick='popupStoreMap("0539")' --> 
                                    <a href='javascript://' class="btn_sType5">매장정보</a>
                                </p>
                            </div>
                        </li>
                    
                        <li>
                            <p class="newTit"><span>NEW</span>STORE</p>
                            <div class="conbox">
                                <p class="s_name">ABCD 안산중앙역점</p>
                                <p class="s_add">경기 안산시 단원구 고잔동 539-18 GM 프라자 101,102,112호</p>
                                <p class="s_tel">031-365-ABCD</p>
                                <p class="s_openday">오픈일 : 
                                    <strong>
                                        2019.99.99
                                    </strong>
                                </p>
                                <p class="s_btnbox">
                                    <a href='javascript://' class="btn_sType5">매장정보</a>
                                </p>
                            </div>
                        </li>
                    
                    
                </ul>
            </div>
        
        <h3 class="fs16 tit_type1 ml10 mt60">매장 서비스 안내</h3>
        <div class="clearfix">
            <ul class="store_service clearfix">
                <li>
                    <p class="tt"><span class="shok2">교환/환불/AS</span> : 교환/환불/AS</p>
                    <p class="list_type1_3">
                        온라인/오프라인 매장에서 구매하신 상품을 오프라인 매장에서 교환/반품/AS 접수 할 수 있습니다. (일부 매장 제외)
                    </p>
                </li>
                <li>
                    <p class="tt"><span class="shok3">상품권사용</span> : 상품권 사용</p>
                    <p class="list_type1_3">
                        오프라인 매장에서 ABC-MART의 상품권을 사용할 수 있습니다. (일부 매장 제외)
                    </p>
                </li>
                <li>
                    <p class="tt"><span class="shok4">포인트사용</span> : 포인트 사용</p>
                    <p class="list_type1_3">
                        온라인/오프라인 매장에서 ABC-MART의 포인트를 사용할 수 있습니다. (일부 매장 제외)
                    </p>
                </li>
            </ul>
        </div>
        
        <div class="clearfix shopbox mt60" id="listLocation">
            <p class="fl-l le_line store_gbn">
                <a href="javascript://" targetId="gbnSort" idValue="" class="btn_sType1">전체</a>
            </p>
            <p class="fl-r ri_line store_serv">
                <a href="javascript://" targetId="chngRfndYn"><span class="shok2">교환/환불/AS</span>교환/환불/AS</a>
                <a href="javascript://" targetId="giftCardUseYn"><span class="shok3">상품권사용</span>상품권사용</a>
                <a href="javascript://" targetId="pointUseYn"><span class="shok4">포인트사용</span>포인트사용</a>
            </p>
        </div>
        <section class="table_basic no_point mt10 clearbox" style="margin-bottom: 100px">
            <table class="storeService">
                <colgroup>
                    <col width="100px"><col width="*"><col width="175"><col width="100">
                </colgroup>
                <thead>
                    <tr>
                        <th class="bold">매장형태</th>
                        <th class="bold">매장정보</th>
                        <th class="bold">매장서비스</th>
                        <th class="bold">상세정보</th>
                    </tr>
                </thead>
                <tbody id="findAbcd_Tbody">
                        
  
                </tbody>
            </table>
        </section>
    </section>

<footer>

<jsp:include page="../template/mainFooter.jsp"/>

</footer>


</body>
<script type="text/javascript" src="../js/storeList/storeList.js"></script>

<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>
</head>
