<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등급</title>
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
<li class="on"><a href="../mypage/myRating">회원등급</a></li>
                    
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
                                
<section class="my_cont mypage_mem">
    <header class="positR">
        <h3 class="tit_type1 fs16 ml10">회원등급</h3>
    </header>
    <div class="career_list_box">
        <section class="career_type2">
            <div class="in">
                <p>
                    <strong></strong>님은
                    
                    온라인 회원입니다.
                </p>
                <ul class="list_type3 mt5 tit_type1 fs14 clearfix">
                    <li>구매건수 <span class="fs18 fc_type2">0</span>건</li>
                    <li class="ml60">구매금액 <span class="fs18 fc_type2">0</span>원</li>
                </ul>
                
                    <div class="bt_txt mt30">
                        <p>지금 멤버십 회원으로 가입 하시면 ABC-MART의 다양한 혜택을 받으실 수 있습니다.</p>
                        <a href="https://www.abcmart.co.kr/abc/user/memberShipAgreement" class="btn_lType1" style="width:210px">멤버십 회원 가입</a>
                    </div>
                
            </div>
        </section>
    </div>

    <section class="mt40">
        <h3 class="bold fc_type6 fs12 pl10">회원등급별 제공 혜택</h3>
        
            
        





<table class="member_table line_table">
    <colgroup>
        
        
            <col width="140px"><col width="375px"><col width="*">
        
    </colgroup>
    <tbody>
        <tr>
            <th></th>
            <th><p class="ico_member1">온라인 회원</p></th>
            <th><p class="ico_member2">멤버십 회원</p></th>
        </tr>
        
            <tr>
                <td><p class="pl20 tit_type1 fc_type6 fs14 bold">회원안내</p></td>
                <td class="align-center">
                    <strong class="fs12 fc_type6">ABC-MART 온라인 쇼핑몰 전용 회원</strong>
                </td>
                <td class="align-center">
                    <strong class="fs12 fc_type6">ABC-MART 온라인 쇼핑몰</strong> <strong class="fs12 fc_type1">+</strong> <strong class="fs12 fc_type6">오프라인 전 매장 통합회원</strong>
                </td>
            </tr>
            <tr>
                <td><p class="pl20 tit_type1 fc_type6 fs14 bold">혜택</p></td>
                <td class="align-center bg_img1">
                    <p class="fs12 fc_type6"><strong><span class="fc_type1"><em class="tit_type3">5,000</em>원 할인쿠폰</span> 지급</strong></p>
    
                    <p class="mt30 fc_type6">
                        <strong class="fs12">회원가입 후 멤버십 회원으로 <br>전환가입 하실 때 혜택이 제공됩니다</strong>
                    </p>
    
                    <p class="mt30 fc_type3">
                        <strong class="fs12">회원혜택은 ABC-MART <br>온라인 쇼핑몰에서만 사용가능</strong>
                    </p>
                </td>
                <td class="align-center bg_img2">
                    <p class="fs12 fc_type6">
                        <strong><span class="fc_type1"><em class="tit_type3">5,000</em>원 할인쿠폰 </span>지급<br>현금처럼 사용 가능한 <span class="fc_type1"><em class="tit_type3">5,000</em>포인트</span> 즉시 적립</strong>
                    </p>
                    <p class="mt30">
                        <strong class="fs12"><em class="fc_type6">첫 구매 시</em> <span class="fc_type1"><em class="tit_type3">5,000</em>포인트 추가 적립</span></strong><br>
                        <strong class="fs12"><em class="fc_type6">구매금액의</em> <span class="tit_type3 fc_type1">3% 포인트 적립</span></strong>
                    </p>
                    <p class="mt30">
                        <strong class="fs12"><span class="fc_type1">기념일</span> <em class="fc_type6">해당월에 첫 구매 시</em> <span class="fc_type1">더블포인트 <em class="tit_type3">6</em>% 적립</span></strong>
                    </p>
                    <p class="mt30">
                        <strong class="fs12"><span class="fc_type1">생일 해당월</span>에 <span class="fc_type1">1만원 할인쿠폰</span> 지급</strong>
                    </p>
                    <p class="mt30 fc_type3">
                        <strong class="fs12">ABC-MART 온라인 쇼핑몰 + 오프라인 전 매장에서 <br>회원 혜택 통합 적립/사용가능</strong>
                    </p>
                </td>
            </tr>
        
        
    </tbody>
</table>
    </section>
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
        