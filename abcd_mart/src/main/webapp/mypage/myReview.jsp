<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 상품후기</title>
<link rel="shortcut icon" type="image⁄x-icon" href="../image/mainLogo/ABCD.png">
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
<li class="on"><a href="../mypage/myReview">나의 상품후기</a></li>
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
                                
<section class="my_cont">
    <header class="">
        <h3 class="tit_type1 fs16 ml10">나의 상품후기</h3>
    </header>

    
        
        
    
    <div class="tit_bg_group mt10">
        <div class="my_shopping_tit1 clearfix">
            <div>
                <ul class="list_type1">
                    <li>상품 후기를 작성해주시면 <span class="fc_type2">발도장 10개</span>를 드립니다.</li>
                    <li>상품 후기를 작성해주시면 <span class="fc_type2">최대 2000포인트</span> (일반후기: 500~1,000P, 사진후기: 1,000~2,000P)를 적립해드립니다.</li>
                    <li>후기 포인트는 등록일 이후 최대 3일 이내에 적립해드립니다. (주말 및 공휴일 제외)</li>
                    <li>용품 및 액세서리에 대한 후기는 포인트 지급이 제외됩니다.</li>
                    <li>직접 촬영한 사진이 아닐 경우 포토 후기에 대한 포인트 지급이 제외됩니다.</li>
                    <li>허위, 과대광고, 문의 등 후기 내용과 관련 없는 글은 통보 없이 삭제될 수 있습니다.</li>
                    <li>구매일 또는 구매확정일로부터 30일이 지난 상품에 대한 후기는 포인트 지급이 되지 않습니다.</li>
                    <li>포인트는 멤버십회원에게만 지급됩니다.</li>
                </ul>

<!--                 <ul class="ml10 mt10"> -->
<!--                     <li>- 후기 포인트 지급은 등록일 이후 3일 이내에 지급됩니다.</li> -->
<!--                     <li class="mt5">- 한 상품당 하나의 후기만 포인트가 지급됩니다.(용품 및 액세서리 제외)</li> -->
<!--                     <li class="mt5">- 상품 주문일로부터 30일이 지난 상품 후기는 포인트 지급대상에서 제외됩니다.</li> -->
<!--                     <li class="mt5">- 직접 촬영한 사진(ABC-MART 홈페이지에서 구매한 제품이 아닌 경우 포함)이 아닐 경우 포인트 지급 대상에서 제외됩니다.</li> -->
<!--                     <li class="mt5">- 포인트 지급은 멤버십회원에게만 해당됩니다.</li> -->
<!--                 </ul> -->
            </div>
        </div>
    </div>

    <div class="mt40 my_shopping_review">
        

        <!-- 테이블 -->
        <div class="tabs-content mt30">
            <div id="cm_tabs_01" class="tabs-cont">
                <div class="table_basic">
                    <table class="tabl">
                        <colgroup>
                            <col width="570"><col width="170"><col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>제목</th>
                                <th>상품만족도</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                                <tr class="group-center">
                                    <td colspan="3"><p class="non_data">게시글이 없습니다.</p></td>
                                </tr>
                            
                            
                        </tbody>
                    </table>
                </div>
                <div class="positR" style="height: 44px;">
                    <p class="paginate">
                        




                    </p>

                    <a href="https://www.abcmart.co.kr/abc/mypage/listOnlineOrder" class="btn_mType1 fs12 positA r10 b9 goWriteReview">상품후기 작성</a>
                </div>
            </div>
            <!-- //테이블 -->
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
<script type="text/javascript" src="../js/quickBar.js"></script>
<!-- footer -->
<script type="text/javascript" src="../js/mainFooter.js"></script> 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
</html>
        