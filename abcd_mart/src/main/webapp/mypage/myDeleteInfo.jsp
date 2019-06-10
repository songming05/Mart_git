<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원 탈퇴</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<link rel="stylesheet" href="../css/quickBar.css"/>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>
<link rel="stylesheet" href="../css/mypage/myPage.css"/>
<link rel="shortcut icon" type="image⁄x-icon" href="../image/mainLogo/ABCD.png">
</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>

</header>

<jsp:include page="../template/quickBarOther.jsp"/>



<div class="container_wrap" style="margin-bottom: 200px;">
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
                
                        
                    
                <a href="">
                    주문접수
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list2">
                
                        
                    
                <a href="">
                    결제완료
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list3">
                
                        
                    
                <a href="">
                    상품준비중
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list4">
                
                        
                    
                <a href="">
                    상품출고
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list5">
                
                        
                    
                <a href="">
                    배송중
                    <em class="num">0</em>
                </a>
                
                    <span class="next">next</span>
                
            </li>
        
            <li class="list6">
                
                        
                    
                <a href="">
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
                
                
                ${sessionScope.memName}님은 <span class="fc_type8 ">온라인 회원</span> 입니다.
            </p>

            <ul class="list_type3 mt10">
                
                    <li>아이디 : <strong>${sessionScope.memId}</strong></li>
                
                <li>이메일 주소 :  <strong class="fc_type8">${sessionScope.memEmail}</strong></li>
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
                <p>나의 쿠폰</p> <em class="fc_type1" onclick="location.href='../mypage/myCouponList'" style="cursor: pointer;">0</em>장
            </li>
            <li class="point">
                <p>나의 포인트</p>
                    
                    <p class="fs12">멤버십 회원의<br>혜택입니다.</p>
            </li>
        </ul>

        <ul class="line_do clearfix">
			<li>나의상담 <a href="../mypage/myConsulting"><em class="fc_type1">0</em></a></li>
            <li>반품 <a href="../mypage/myAsPage3"><em class="fc_type1">0</em></a></li>
            <li>교환 <a href="../mypage/myAsPage4"><em class="fc_type1">0</em></a></li>
            <li>AS <a href="../mypage/myAsPage5"><em class="fc_type1">0</em></a></li>
        </ul>
        
        
            
            
                <div class="online_box align-center">
                    <a href="" class="btn_mlType1 mb10" style="width:160px;">멤버십 회원 가입</a>
                    <a href="" class="btn_mlType5" style="width:160px;">등급별 혜택 확인</a>
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
<li class=""><a href="../mypage/myStore">단골매장/관심브랜드</a></li>
                </ul>
            </li>
        
        
            <li class="tit">개인정보
                <ul>
                    
<li class=""><a href="../mypage/myAddress">배송주소록관리</a></li>
<li class=""><a href="../mypage/myPrivate">개인정보수정</a></li>
<li class=""><a href="../mypage/myAddInfo">부가정보수정</a></li>
<li class=""><a href="../mypage/myRePwd">비밀번호 변경</a></li>
<li class="on"><a href="../mypage/myDeleteInfo">회원탈퇴</a></li>
                </ul>
            </li>
        
    </ul>
</section>

                            <section class="my_cont order_basketCont">
                                
<section class="my_cont">
    <header class="positR">
        <h3 class="tit_type1 fs16 ml10">회원탈퇴</h3>
    </header>
    <section class="password_box mt10 out_member">
        <div class="inBox">
            <ul class="list_type1">
                <li>서비스 이용에 불편을 끼쳐드려 죄송합니다</li>
                <li>항상 고객만족을 위해 최선을 다하는 ABC-MART가 되겠습니다.</li>
            </ul>
            <ul class="mt15 ml10 fc_type3">
                <li>- 진행 중인(구매확정 되지 않은) 주문 건이 있는 경우 탈퇴가 불가능합니다.</li>
                <li>- 탈퇴 시 보유중인 <span class="fc_type1">포인트와 쿠폰, 거래정보 등이 모두 삭제</span>됩니다.</li>
                <li>- 회원 탈퇴 후 철회가 불가능합니다.</li>
                <li>- 탈퇴 시 동일아이디로 가입이 불가능합니다.</li>
                <li>- 탈퇴 후 <span class="fc_type1">재가입시 회원가입쿠폰은 재발급</span>되지 않습니다.</li>
            </ul>
        </div>
    </section>

    <div class="align-center tit_type1 fs16 fc_type6 pt35 pb35 normal">정말 탈퇴 하시겠습니까?</div>

    <div class="table_basic no_point">
        <table id="tableCss">
            <colgroup>
                <col width="290"><col width="*">
            </colgroup>
            <tbody>
                <tr>
                    <td class="fc_type4">ABC-MART 이용 중 불편사항을 선택해 주세요.</td>
                    <td>
                        <input type="hidden" name="userLveRsnCode" class="userLveRsnCode">
                        <section class="relation_product">
                            <a style="cursor: pointer;">옵션선택<span class="ico_arrow1"></span></a>
                            <ul class="relation_list">
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="01">상품(사이즈, 종류)이 다양하지 않아서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="02">방문 빈도가 낮아서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="03">상품가격이 비싸서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="04">개인 정보유출 우려 되어서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="05">쇼핑몰의 신뢰도 부족</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="06">사이트 쇼핑기능이 불편해서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="07">고객서비스가 만족스럽지 않아서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="08">배송서비스가 만족스럽지 않아서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="09">교환/환불/반품이 불편해서</a></li>
                                    
                                
                                    
                                        <li><a style="cursor: pointer;" data-code-name="10">기타</a></li>
                                    
                                
                                    
                                
<!--                                 <li><a style="cursor: pointer;">옵션1</a></li> -->
<!--                                 <li><a style="cursor: pointer;">옵션2</a></li> -->
                            </ul>
                        </section>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="align-center mt30">
        <a href="/abc/mypage/listOnlineOrder" class="btn_mType1 ml5" style="width:60px;">취소</a>
        <a class="btn_mType3 ml5" id="btnLeaveSite" style="width:90px; cursor: pointer;">회원탈퇴</a>
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
        
        
        

<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>
</body> 
<script type="text/javascript" src="../js/quickBar.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>
</html>
        