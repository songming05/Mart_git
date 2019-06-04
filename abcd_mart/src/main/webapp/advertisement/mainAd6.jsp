<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>벌써 여름</title>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/adPage.css"/>
<!-- quickBar -->
<link rel="stylesheet" href="../css/quickBar.css"/>	
<!-- footer-->
<link rel="stylesheet" href="../css/mainFooter.css"/>
</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>

</header>
<jsp:include page="../template/quickBarOther.jsp"/>
<div class="container_wrap">
            
	<input type="hidden" name="eventId" id="eventId" value="004848">
    <div class="container_area">
        <div class="container_layout">
            <!-- page_location -->
            <section class="page_location">
                <ul>
                    <li class="removeArrow" ><a onclick="location.href='../main/index.jsp'">홈</a></li>
                    
                        <li ><span>기획전/이벤트</span></li>
                        <li ><span>기획전</span></li>
                    
                </ul>
            </section>
            
            
                <h2 class="sub_tit">기획전</h2>
            
                <div class="positR exhibit_tab">
                    <ul class="column_tab type2">
                        
                            <li ><a href="">여름나기 기획전!</a></li>
                            
                            
                            <li class="current"><a href="">썸머슈즈 이벤트</a></li>
                            
                            
                            <li><a href="">호킨스 쿨앤라이트 썸머샌들</a></li>
                            
                            
                            <li><a href="">그랜드스테이지 프리미엄 신발</a></li>
                            
                            
                            <li><a href="">그랜드스테이지 나이키 의류 판매</a></li>
                            
                            
                            <li><a href="">누오보 x 전소미 </a></li>
                            
                            
                            <li><a href="">해시태그로 보는 트렌드 슈즈!</a></li>
                            
                            
                            <li><a href="">ABC 아울렛! 19,000원↓</a></li>
                            
                            
                            <li><a href="">오! 당신이 찾는 빅 사이즈</a></li>
                            
                            
                            <li><a href="">라스트 원 사이즈 기획전</a></li>
                            
                            
                            <li><a href="">착한가격</a></li>
                            
                            
                                        <li></li>
                                    
                    </ul>
                    
                        <a href="javascript://" class="btn_view">더보기</a>
                    
                </div>
            
                <header class="board_head_txt positR mt35">
                    <h3 class="fl-l tit_type1 fs16">썸머슈즈 이벤트</h3>
                    
                        <p class="fl-l mt5 tit_type3 fs12">
                            2019.05.24 ~ 2019.06.13
                        </p>
                    
                    <ul class="sns_group pt0 mr10">
                        <li><a href="javascript://" onclick="shareKakaoStory(&quot;/abc/planDisp/detail?plndpId=004848&quot;, &quot;03&quot;, &quot;&quot;);" class="sns_01">카카오</a></li>
                        <li><a href="javascript://" onclick="shareFacebook(&quot;/abc/planDisp/detail?plndpId=004848&quot;, &quot;03&quot;, &quot;&quot;);" class="sns_02">페이스북</a></li>
                        <li><a href="javascript://" onclick="shareTwitter(&quot;/abc/planDisp/detail?plndpId=004848&quot;, &quot;썸머슈즈 이벤트&quot;, &quot;03&quot;, &quot;&quot;);" class="sns_03">트위터</a></li>
                        <li><a href="javascript://" onclick="sharePinterest(&quot;/abc/planDisp/detail?plndpId=004848&quot;, &quot;&quot;, &quot;썸머슈즈 이벤트&quot;, &quot;03&quot;, &quot;&quot;);" class="sns_04">핀터리스트</a></li>
                        <li><a href="javascript:copyUrl();" class="sns_05">URL</a></li>
                    </ul>
                </header>
            
            <div id="planDispDetailContent">
                <p></p><p><img alt="1100.jpg" src="http://image.abcmart.co.kr/nexti/images/abcmart/client/1451/20190523135902707.jpg" style="width:100%;" usemap="#1100.jpg"><map name="1100.jpg"><area alt="" coords="169,678,541,775" href="javascript://" onclick="productDetailCouponDownload('D011535022230A8E3416DDBC05CA9EAF');" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="564,678,942,778" href="javascript://" onclick="productDetailCouponDownload('32F5F9C846D51C926846D2F3EDA8A84F');" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="65,1052,369,1363" href="http://www.abcmart.co.kr/abc/planDisp/detail?plndpId=004839" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="401,1049,698,1361" href="http://www.abcmart.co.kr/abc/planDisp/detail?plndpId=004843" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="729,1052,1028,1360" href="http://www.abcmart.co.kr/abc/planDisp/detail?plndpId=004841" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="71,1394,368,1704" href="http://www.abcmart.co.kr/abc/planDisp/detail?plndpId=004842" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="403,1394,697,1698" href="http://www.abcmart.co.kr/abc/planDisp/detail?plndpId=004840" onfocus="this.blur()" shape="rect" target=""> <area alt="" coords="735,1393,1030,1700" href="http://www.abcmart.co.kr/abc/planDisp/detail?plndpId=004844" onfocus="this.blur()" shape="rect" target=""></map></p>
<p></p>
            </div>
            
        </div>
    </div>

            
            <div id="productPreviewArea" class="pop_wrap positR" style="width:1100px;"></div>
            
            <div id="productOptionArea" class="pop_wrap" style="width:370px;"></div>
        </div>
        
<jsp:include page="../template/mainFooter.jsp"/>
</body>
<!-- quickBar -->
<script type="text/javascript" src="../js/quickBar.js"></script>  
<!-- footer -->
<script type="text/javascript" src="../js/mainFooter.js"></script> 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
</html>
        