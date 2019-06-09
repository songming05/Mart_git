<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반품 교환 AS</title>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mypage/myPage.css"/>
<!-- footer-->
<link rel="stylesheet" href="../css/mainFooter.css"/>
<!-- quickBar -->
<link rel="stylesheet" href="../css/quickBar.css"/>	
</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>

</header>
<jsp:include page="../template/quickBarOther.jsp"/>


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
                
                
                 ${myPageName}님은 <span class="fc_type8 ">온라인 회원</span> 입니다.
            </p>

            <ul class="list_type3 mt10">
                
                    <li>아이디 : ${myPageId}<strong></strong></li>
                
                <li>이메일 주소 : ${myPageEmail} <strong class="fc_type8"></strong></li>
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
                <p>나의 쿠폰</p> <em class="fc_type1" onclick="location.href='https://www.abcmart.co.kr/abc/mypage/listCoupon';" style="cursor: pointer;">0</em>장
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
<li class="on"><a href="../mypage/myAsPage">반품/교환/AS</a></li>
                    
                
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
<li class=""><a href="../mypage/myStore">단골매장/관심브랜드</a></li>
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
                                
    <h3 class="tit_type1 fs16 ml10">반품 / 교환 / AS</h3>
    <ul class="column_tab column5 mt10">
        <li class="current"><a href="/abc/mypage/returnServiceRequest">반품/교환신청</a></li>
        <li><a href="/abc/mypage/reqOnlnAsPossibleOrderList">AS신청</a></li>
        <li><a href="/abc/mypage/listRequestReturn">반품현황</a></li>
        <li><a href="/abc/mypage/listRequestExchange">교환현황</a></li>
        <li><a href="/abc/mypage/reqOnlnAsList">AS현황</a></li>
    </ul>
    <!-- 반품/교환신청 -->
    <header class="positR pt30 ml10">
        <p class="fs12 fc_type6 bold">반품/교환 주의사항</p>
        <a href="/abc/customer/faqList?parentDepth=0001" class="btn_sType1 positA r10 b0">반품/교환 안내</a>
    </header>
    <ul class="list_type1 mt10">
        <li>제품을 받으신 날부터 7일 이내(상품불량인 경우 30일)에 접수해주시기 바랍니다.</li>
        <li>접수 시 왕복 택배비가 부과됩니다. <br>(단, 상품 불량, 오배송의 경우 택배비를 환불해드립니다.)</li>
        <li>접수 후 14일 이내에 상품이 반품지로 도착하지 않을 경우 접수가 취소됩니다.<br>(배송 지연 제외)</li>
        <li>매장에 방문하여 반품/교환 접수 시 최대 10개 미만 상품만 접수 가능합니다. (대량 반품/교환은 온라인 접수만 가능, 단순 변심의 경우 택배비 고객부담)</li>
    </ul>
    <header class="positR mt20 ml10">
        <p class="fs12 fc_type6 bold">반품/교환 택배비 안내</p>
        <a href="#target1" data-rel="layer" class="btn_sType2 positA r10 b0">박스 포장 안내</a>
    </header>
    <ul class="list_type1 mt10">
        <li>왕복 택배비 : 최초 배송비(2,500원) + 반품배송비(2,500원) = 총 5,000원이 부과됩니다.(선결제 또는 환불금액에서 차감 선택)</li>
        <li>단, 보내주신 상품이 불량 또는 오배송으로 확인 될 경우 택배비를 환불해드립니다.(선택하신 결제수단으로 택배비 환불)</li>
        <li>지정택배(대한통운) 외 타택배 이용 시 추가로 발생되는 금액은 고객님께서 부담해주셔야 합니다.</li>
    </ul>
    <section class="mt40">
        
        <div class="tabs-content mt30">
            <!-- 테이블 -->
            <div id="cm_tabs_01" class="tabs-cont basket_box">
                <div class="table_basic gallery_line_type1">
                    <table>
                        <colgroup>
                            <col width="200"><col width="*"><col width="200">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="normal">주문번호</th>
                                <th class="normal">상품정보</th>
                                <th class="normal">반품/교환신청</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            
                                <tr>
                                    <td colspan="3"><p class="non_data">반품/교환 신청이 가능한 구매내역이 없습니다.</p></td>
                                </tr>
                            
                        </tbody>
                    </table>
                </div>
                <p class="paginate mt20">
                    





                </p>
            </div>
            <!-- //테이블 -->
        </div>
    </section>
    <!-- //반품/교환신청 -->
    <!-- 상품포장안내 -->
    <div id="target1" class="pop_wrap" style="width: 670px; margin-left: -335px; margin-top: -168px;">
        <header class="pop_header">
            <h2>반품/교환 박스 포장 안내</h2>
            <button type="button" class="pop_x ico_close2">Close</button>
        </header>

        <div class="pop_container qnaBox">
            <div class="pop_content">
                <ul class="list_type1">
                    <li>브랜드 박스의 훼손이 없도록 택배 박스 및 타 박스로 포장하여 발송해주시기 바랍니다.</li>
                </ul>
                <p class="mt20 align-center ">
                    <img src="https://image.abcmart.co.kr/nexti/images/abcmart_new/img_box01.jpg">
                    <span class="ml10"><img src="https://image.abcmart.co.kr/nexti/images/abcmart_new/img_box02.jpg"></span>
                </p>
            </div>
        </div>
    </div>
    <!-- //상품포장안내 -->

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
<script type="text/javascript" src="../js/quickBar.js"></script>
<!-- footer -->
<script type="text/javascript" src="../js/mainFooter.js"></script> 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
</html>
        