<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단골매장/관심브랜드</title>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mypage/myPage.css"/>
<!-- footer-->
<link rel="stylesheet" href="../css/mainFooter.css"/>
</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>

</header>



<div class="container_wrap">
            <div class="container_area">
                <div class="container_layout">
                    <!-- page_location -->
                    <section class="page_location">
                        <ul>
                            <li><a href="/abc/main">홈</a></li>
                            <li class="location_box"><span>마이페이지</span></li>
                        </ul>
                    </section>
                    <!-- // page_location -->

                    <header class="add_header">
                        <h2 class="sub_tit">마이페이지</h2>
                    </header>
                    <section class="mypage_cont">
                        




<!-- 배송 step -->
<section class="sevice_go clearfix">
    <p class="tit_type1 fs16">주문배송조회<span>바로가기</span></p>
    <ul class="sevice_list clearfix">
        
            <li class="list1">
                
                        
                    
                <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder?orderStatCode=01&amp;topAccessYn=true">
                    주문접수
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list2">
                
                        
                    
                <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder?orderStatCode=02&amp;topAccessYn=true">
                    결제완료
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list3">
                
                        
                    
                <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder?dlvyStatCode=03&amp;topAccessYn=true">
                    상품준비중
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list4">
                
                        
                    
                <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder?dlvyStatCode=04&amp;topAccessYn=true">
                    상품출고
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list5">
                
                        
                    
                <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder?dlvyStatCode=05&amp;topAccessYn=true">
                    배송중
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list6">
                
                        
                    
                <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder?dlvyStatCode=06&amp;topAccessYn=true">
                    배송완료
                    <em class="num">0</em>
                </a>
                
            </li>
        
    </ul>
</section>
<!-- //배송 step -->

<!-- 고객 정보 -->
<section class="mt30 clearfix">
    
    
    <div class="membox online fl-l">
        
            <p class="tit_type1 fs16">
                
                
                님은 <span class="fc_type8 ">온라인 회원</span> 입니다.
            </p>

            <ul class="list_type3 mt10">
                
                    <li>아이디 : <strong></strong></li>
                
                <li>이메일 주소 : <strong class="fc_type8"></strong></li>
            </ul>

            <p class="bot_line">
                
                
                    <span class="bg_fa">수신동의 최종수정일 : 2019-06-01</span>
                
                
                    <a href="http://www.abcmart.co.kr/abc/mypage/checkForUpdateUser" class="btn_sType3 bold pd2">내 정보 확인 <i class="ico_arrow"></i></a>
                
<!--                 <span class="bg_fa">수신동의 최종수정일 : 2016-07-01 </span> -->
<!--                 <a href="#" class="btn_sType3 bold pd2">내 정보 확인 <i class="ico_arrow"></i></a> -->
            </p>
        
        
    </div>

    <div class="ml30 membox2 fl-l">
        <ul class="line_up">
            <li class="coupon">
                <p>나의 쿠폰</p> <em class="fc_type1" onclick="location.href='https://www.abcmart.co.kr/abc/mypage/listCoupon';" style="cursor: pointer;">5</em>장
            </li>
            <li class="point">
                <p>나의 포인트</p>
                    
                    <p class="fs12">멤버십 회원의<br>혜택입니다.</p>
            </li>
        </ul>

        <ul class="line_do clearfix">
            <li>나의상담 <a href="http://www.abcmart.co.kr/abc/mypage/counselingHistory"><em class="fc_type1">0</em></a></li>
            <li>반품 <a href="http://www.abcmart.co.kr/abc/mypage/listRequestReturn"><em class="fc_type1">0</em></a></li>
            <li>교환 <a href="http://www.abcmart.co.kr/abc/mypage/listRequestExchange"><em class="fc_type1">0</em></a></li>
            <li>AS <a href="http://www.abcmart.co.kr/abc/mypage/reqOnlnAsList"><em class="fc_type1">0</em></a></li>
        </ul>
        
        
            
            
                <div class="online_box align-center">
                    <a href="http://www.abcmart.co.kr/abc/user/memberShipAgreement?mode=change" class="btn_mlType1 mb10" style="width:160px;">멤버십 회원 가입</a>
                    <a href="https://www.abcmart.co.kr/abc/mypage/memberGrade" class="btn_mlType5" style="width:160px;">등급별 혜택 확인</a>
                </div>
            
        
    </div>
</section>
<!-- //고객 정보 -->

                        <article class="mt25">

                            
                                
                            





    


<section class="my_lnb">
    <ul>
        <li class="tit">쇼핑내역
            <ul>
               <li class=""><a href="../mypage/myPage">주문배송 현황 조회</a></li>
<li class=""><a href="../mypage/myAsPage">반품/교환/AS</a></li>
                    
                
            </ul>
        </li>
        
            <li class="tit">쇼핑혜택
                <ul>
                    
                    
                    
                    
<li class=""><a href="../mypage/myCouponList">쿠폰리스트</a></li>
<li class=""><a href="../mypage/myRating">회원등급</a></li>
                    
                </ul>
            </li>
        
        
            <li class="tit">쇼핑수첩
                <ul>
<li class=""><a href="../mypage/myReview">나의 상품후기</a></li>
<li class=""><a href="../mypage/myConsulting">나의 상담</a></li>
<li class="on"><a href="../mypage/myStore">단골매장/관심브랜드</a></li>
                </ul>
            </li>
        
        
            <li class="tit">개인정보
                <ul>
                    
<li class=""><a href="../mypage/myAddress">배송주소록관리</a></li>
<li class=""><a href="../mypage/myPrivate">개인정보수정</a></li>
<li class=""><a href="../mypage/myAddInfo">부가정보수정</a></li>
<li class=""><a href="../mypage/myRePwd">비밀번호 변경</a></li>
<li class=""><a href="../mypage/myDeleteInfo">회원탈퇴</a></li>
                </ul>
            </li>
        
    </ul>
</section>

                            <section class="my_cont order_basketCont">
                                





<script type="text/javascript">
<!--
//-->
jQuery(function($){
    
    var favbrandSlider=$(".favbrand_slider").bxSlider({
        auto:true,
        pause: 3000,
        slideWidth: 150,
        minSlides: 5,
        maxSlides: 5,
        moveSlides: 5,
        slideMargin: 40,
        controls:false
    });
    
    
    $('.storeSearchBtn').on("click", function(){
        
        popupStoreSearchForm();
    });
    
    
    $(".popupStoreMap").on("click", function(){
        popupStoreMap($(this).find("input[name='storeId']").val());
    });
    
    
    $("a.checkHandler").click(function() {
        if($("input[name=brandIds]:checked").length != $("input[name=brandIds]").length){
            $("input[name=brandIds]").prop("checked", true);
        }else{
            $("input[name=brandIds]").prop("checked", false);
        }
    });
    
    
    $(".btnDelete").click(function() {
        if($("input[name=brandIds]:checked").length <= 0) {
            alert("상품을 하나이상 선택해 주세요.");
            return false;
        }
        
        if(!confirm("선택한 관심브랜드를 삭제하시겠습니까?")){
            return false;
        }
        
        var url = "/abc/mypage/deleteWishBrands";
        $("form#deleteBrandsForm").ajaxSubmit({
            type: "post"
            ,url: url
            ,dataType: "json"
            ,success: function(data) {
                alert("삭제되었습니다.");
                window.location.href= 'https://www.abcmart.co.kr' + '/abc/mypage/listMyBrand';
            }
            ,error: function(xhr, status, error) {
                alert("시스템 오류가 발생 했습니다. 관리자에게 문의하세요.");
            }
        });
    });
});


function getStoreInfo(storeInfo){
    addMyStore(storeInfo.storeId, storeInfo.storeName);
}


function addMyStore(bookMarkStoreId, storeName) {
    $.ajax({
        type: "post"
        ,url: "/abc/mypage/updateOfflineStore"
        ,data: {
            'bookMarkStoreId' : bookMarkStoreId
        }
        ,dataType: "json"
        ,success : function(data) {
            if(data.save) {
                alert("저장하였습니다.");
                window.location.reload();
            }
        }
    });
}
</script>
<section class="my_cont">
    <header class="">
        <h3 class="tit_type1 fs16 ml10">단골매장/관심브랜드</h3>
    </header>

    <div class="mt30">
        <header class="board_head_txt pb0 positR">
            <h3 class="fc_type6 fs12 bold">단골매장</h3>
            <p class="positA r10 b0">
                <a href="javascript://" class="btn_sType2 storeSearchBtn">단골매장설정</a>
            </p>
        </header>
    </div>

    <div class="tit_bg_group mt10">
        <div class="ml20 fc_type3">
            
            
                <div>등록하신 단골매장이 없습니다. 단골매장을 설정하세요.</div>
            
        </div>
    </div>

    <div class="mt30">
        <header class="board_head_txt pb0 positR">
            <h3 class="fc_type6 fs12 bold">관심브랜드</h3>
            <p class="positA r10 b0">
                
            </p>
        </header>
        <form action="/abc/mypage/deleteWishBrands" method="post" name="deleteBrandsForm" id="deleteBrandsForm">
            <div class="table_basic no_bb mt10">
                
                    <section class="fav_brand brand_section_top pb20">
                        <p class="fs12 align-center pt20 pb20">등록된 관심브랜드가 없습니다.</p>
                    </section>
                    <div class="align-center mt30 pb20">
                        <a href="https://www.abcmart.co.kr/abc/mypage/viewMyEtcInfo" class="btn_mType1" style="width:140px;">관심브랜드 추가</a>
                    </div>
                
                
                <div class="mt20">
                    <p class="paginate">
                        





                    </p>
                </div>
            </div>
        </form>
    </div>

</section>

                            </section>
                        </article>

                        
                        <div id="productPreviewArea" class="pop_wrap positR" style="width:1100px;"></div>
                        
                        <div id="productOptionArea" class="pop_wrap" style="width:370px;"></div>
                        
                        <div id="optionChangeArea" class="pop_wrap" style="width:330px;"></div>
                    </section>
                </div>
            </div>
        </div>



<jsp:include page="../template/mainFooter.jsp"/>
</body> 
<!-- footer -->
<script type="text/javascript" src="../js/mainFooter.js"></script> 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
</html>
        