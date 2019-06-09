<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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

<div class="container_wrap" id="myPage">
            <div class="container_area">
                <div class="container_layout">
                    <!-- page_location -->
                    <section class="page_location">
                        <ul>
                            <li><a href="../main/index">홈</a></li>
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
                
                
            ${myPageName}님은  <span  class="fc_type8 "> 온라인 회원</span> 입니다.
            </p>

            <ul class="list_type3 mt10">
                
                    <li>아이디 : ${myPageId} <strong></strong></li>
                
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
                <li class="on"><a href="../mypage/myPage">주문배송 현황 조회</a></li>
                
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
                                
<section id="scrollPosition" class="my_cont order_basketCont">
    <header class="positR">
        <h3 class="tit_type1 fs16 ml10">주문 배송 현황 조회</h3>
        <p class="positA">
            <a href="http://www.abcmart.co.kr/abc/mypage/listOfflineOrder" class="btn_sType2">오프라인 매장 구매내역 보기</a>
        </p>
    </header>
    <form action="?" id="myOrderListForm" name="myOrderListForm">
        <input type="hidden" name="orderStatCode" class="orderStatCode" value=""> 
        <input type="hidden" name="dlvyStatCode" class="dlvyStatCode" value=""> 
        <input type="hidden" name="calendarRange" class="calendarRange" value="btnFifteen"> 
        <input type="hidden" name="snsOrderYn" class="snsOrderYn" value="false"> 
        <input type="hidden" name="topAccessYn" class="topAccessYn" value="false"> 
        <div class="cal_box mt10">
            <table class="mssz">
                <colgroup><col width="194"><col width="*"></colgroup>
                <tbody>
                    <tr>
                        <th>온라인 쇼핑몰 구매내역</th>
                        <td>
                            <span class="day_ch mr10">
                                <a href="javascript://" class="btnToday" onclick="datePicker(this, 1);">오늘</a>
                                <a href="javascript://" class="btnFifteen on" onclick="datePicker(this, 2);"><em class="tit_type3">15</em>일</a>
                                <a href="javascript://" class="btnMonth" onclick="datePicker(this, 3);"><em class="tit_type3">1</em>개월</a>
                                <a href="javascript://" class="btnThreeMonth" onclick="datePicker(this, 4);"><em class="tit_type3">3</em>개월</a>
                            </span>
                            <input type="text" class="day_select mr5 hasDatepicker" id="selectStartDt" name="startDt" value="20190522" maxlength="8" onkeydown="onlyNum();" style="width:138px;height:26px;" readonly="readonly"><img class="ui-datepicker-trigger" src="//image.abcmart.co.kr/nexti/images/abcmart_new/ico_calander.gif" alt="..." title="...">
                            ~
                            <input type="text" class="day_select mr5 hasDatepicker" id="selectEndDt" name="endDt" value="20190606" maxlength="8" onkeydown="onlyNum();" style="width:138px;height:26px;" readonly="readonly"><img class="ui-datepicker-trigger" src="//image.abcmart.co.kr/nexti/images/abcmart_new/ico_calander.gif" alt="..." title="...">
                            <a href="javascript:formSubmit('dateSearch');" id="cml10" class="btn_mlType1 ml10" style="width:63px; height:30px;">조회</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
    <div class="mt40">
        
        
        
        <!-- 테이블 -->
        <div class="tabs-content mt30">
            <div id="cm_tabs_01" class="tabs-cont basket_box">
                <div class="table_basic gallery_line_type1">
                    <table id="tra">
                        <colgroup>
                            <col width="125">
                            <col width="90">
                            <col width="120">
                            <col width="*">
                            <col width="230">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="normal">주문번호</th>
                                <th class="normal">배송방법</th>
                                <th class="normal">총결제금액</th>
                                <th class="normal">상품정보</th>
                                <th class="normal table_select">
                                    <p class="fl-l">주문/배송현황</p>
                                    <div class="relation_product fl-l ml10">
                                        <a id="selectedStatCode" href="javascript://" style="width: 110px;">전체
                                        <span class="ico_arrow1"></span></a>
                                        <ul class="relation_list" style="width: 110px;">
                                            <li><a href="javascript:formSubmitBefore('', '');">전체</a></li>
                                            
                                                
                                                
                                                    
                                                            <li id="statCode01" value="주문접수"><a href="javascript:formSubmitBefore('01', '');">주문접수</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode02" value="결제완료"><a href="javascript:formSubmitBefore('02', '');">결제완료</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode03" value="상품준비중"><a href="javascript:formSubmitBefore('', '03');">상품준비중</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode04" value="상품출고"><a href="javascript:formSubmitBefore('', '04');">상품출고</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode05" value="배송중"><a href="javascript:formSubmitBefore('', '05');">배송중</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode06" value="배송완료"><a href="javascript:formSubmitBefore('', '06');">배송완료</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode07" value="구매확정"><a href="javascript:formSubmitBefore('', '07');">구매확정</a></li>
                                                        
                                                
                                            
                                                
                                                
                                            
                                                
                                                
                                            
                                                
                                                
                                            
                                        </ul>
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            
                                <tr>
                                    <td colspan="4"><p class="non_data">온라인 쇼핑몰 구매내역이 없습니다.</p></td>
                                </tr>
                            
                            
                        </tbody>
                    </table>
                </div>
                <p class="paginate mt20">
                    





                </p>
            </div>
        </div>
        
        
        <div class="p_re" style="margin-bottom:30px;">
            <p>꼭 읽어 주세요!</p>
            <ul>
                <li>- 평일 4시 이전 주문은 당일 출고됩니다.(온라인 발송에 한함)</li>
                <li>- 배송은 결제 완료 후 평균 2일 정도 소요됩니다.(주말 및 공휴일 제외)</li>
                <li>- 오프라인 매장 발송은 2~3일 더 소요될 수 있습니다.</li>
                <li>- 주문 취소 및 배송지 변경은 [상품준비중] 단계까지만 가능합니다.</li>
                <li>- 상품출고 단계는 상품이 택배사로 전달된 상태입니다. 취소를 원하실 경우에는 상품을 받으신 후 반품접수 해주시기 바랍니다.</li>
                <li>- 구매포인트는 구매확정 후에 적립됩니다.</li>
            </ul>
        </div>
        
        
	        <div class="p_re">
	            <p style="color:#e50015;">※ 매장 픽업 주문 안내</p>
	            <ul>
	                <li>- 매장 재고에 따라 상품 준비 기간이 소요될 수 있습니다.</li>
	                <li>- 여러 개의 상품을 주문하실 경우 상품별로 준비기간이 다를 수 있습니다.</li>
	                <li>- 상품이 준비되면 각 상품별로 알림톡 또는 SMS로 안내드립니다.</li>
	            </ul>
	        </div>
        
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
        