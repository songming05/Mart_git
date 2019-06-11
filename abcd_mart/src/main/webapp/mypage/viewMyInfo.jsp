<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>


<link rel="stylesheet" href="../css/quickBar.css"/>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>
<link rel="stylesheet" href="../css/mypage/myPage.css"/>
<link rel="stylesheet" href="../css/user/updateUser.css"/>

<title>개인정보수정</title>
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
                
                
               ${myPageName}님은   <span class="fc_type8 ">온라인 회원</span> 입니다.
            </p>

            <ul class="list_type3 mt10">
                
                    <li>아이디 : <strong>${myPageId}</strong></li>
                
                <li>이메일 주소 :  <strong class="fc_type8">${myPageEmail}</strong></li>
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
                <p>나의 쿠폰</p> <em class="fc_type1" onclick="" style="cursor: pointer;">0</em>장
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
<li class="on"><a href="../mypage/myPrivate">개인정보수정</a></li>
<li class=""><a href="../mypage/myAddInfo">부가정보수정</a></li>
<li class=""><a href="../mypage/myRePwd">비밀번호 변경</a></li>
<li class=""><a href="../mypage/myDeleteInfo">회원탈퇴</a></li>
                </ul>
            </li>
        
    </ul>
</section>


<h3 class="tit1">개인정보수정</h3>
<br><br>
<h3 class="titBasic">기본정보</h3>

		<form name="viewMyInfoForm" id="viewMyInfoForm" method="post" action="/abcd_mart/user/userInfoUpdate">
		<input type="hidden" name="currentUserId" value="${memId }"/>
            <div class="table_basic bgfa mt10">
                <table>
                    <colgroup>
                        <col width="160px"><col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th><label for="u_name">&nbsp;&nbsp;이름</label></th>
                            <td>${memName }</td>
                        </tr>
                        <tr>
                            <th><label for="u_id">&nbsp;&nbsp;아이디</label></th>
                            <td>${memId }</td>
                        </tr>
                        <tr>
                            <th><label for="u_email"><em class="fc_type1">＊</em> 이메일</label></th>
                            <td>
                                <div>
                                    <input type="text" class="text" value="${firstEmail}" name="userMailAddress1" id="userMailAddress1" style="width:140px">
                                    @
                                    <input type="text" class="text" value="${secondEmail}" id="userMailAddress2" style="width:140px" readonly>&nbsp;
                                    <select name="mailDomain" style="width: 140px;">
									    <option value="">---- 선택 ----</option>
									    <option value="dreamwiz.com">dreamwiz.com</option>
									    <option value="empas.com">empas.com</option>
									    <option value="freechal.com">freechal.com</option>
									    <option value="gmail.com">gmail.com</option>
									    <option value="hanmail.net">hanmail.net</option>
									    <option value="hanmir.com">hanmir.com</option>
									    <option value="hotmail.com">hotmail.com</option>
									    <option value="korea.com">korea.com</option>
									    <option value="lycos.co.kr">lycos.co.kr</option>
									    <option value="nate.com">nate.com</option>
									    <option value="naver.com" selected>naver.com</option>
									    <option value="paran.com">paran.com</option>
									    <option value="yahoo.co.kr">yahoo.co.kr</option>
									    <option value="insert">직접입력</option>
									</select>
									&nbsp;
                                    <a class="btn_sType1" id="btnCheckMail" style="cursor: pointer;">중복확인</a>&nbsp;&nbsp;
                                    <span class="fc_type2 user_mail_addr_noti ok" style="display: none;">사용 가능한 이메일주소 입니다.</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="u_phone"><em class="fc_type1">＊</em> 휴대전화</label></th>
                            <td>
                                <div>
                                    <select name="handphoneNumber1" style="width: 86px;">
									    <option value="${headPhone }" selected>010</option>
									    <option value="011">011</option>
									    <option value="016">016</option>
									    <option value="017">017</option>
									    <option value="018">018</option>
									    <option value="019">019</option>
									</select>
 -
                                    <input type="text" class="text inputNumberText" name="handphoneNumber2" value="${middlePhone }" maxlength="4" pattern="\d{3,4}" style="width:93px"> -
                                    <input type="text" class="text inputNumberText" name="handphoneNumber3" value="${endPhone }" maxlength="4" pattern="\d{4}" style="width:93px">&nbsp;
                                </div>
                            </td>
                        </tr>
                        
                        <tr>
                            <th><label for="u_address">&nbsp;&nbsp;배송지 주소</label></th>
                            <td>
                                <div>
                                    
                                    <input type="hidden" name="userAddrSeq" value="3664889">
                                    <p>
                                        <input type="text" class="text" name="mainAddrPostNum" value="" style="width:150px" id="u_address">
                                    &nbsp;<a href="javascript:return false;" class="btn_sType1" id="btnSearchPostNum" onclick="popupSearchPostCode()">우편번호찾기</a>
                                    </p><br>
                                    <p class="mt5">
                                        <input type="text" class="text" name="mainAddr" value="" onclick="$('#btnSearchPostNum').click();" style="width:300px" readonly>&nbsp;
                                        <input type="text" class="text" name="mainAddrDetail" value="" maxlength="30" style="width:300px" placeholder="나머지 주소를 입력하세요">
                                    </p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            </form>
            <br><br>
            
            <div class="mt40">
            <header class="board_head_txt pb0">
                <h3 class="recieveText">고객서비스 수신동의</h3>
                <p class="infoText">ABC-MART에서 제공하는 상품과 쇼핑관련 정보(특가상품, 이벤트, 할인쿠폰, 기념일 알림)의 안내를 받으시겠습니까?</p>
            </header>
            <div class="table_basic bgfa mt10">
                <table>
                    <colgroup>
                        <col width="160px"><col width="145px"><col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th rowspan="2">정보 수신 여부</th>
                            <td>이메일</td>
                            <td>
                                <input type="radio" name="mailReceiveYn" value="true" id="c1_1" >&nbsp;&nbsp;<label for="c1_1">예</label>
                                <input type="radio" name="mailReceiveYn" value="false" id="c1_2" checked>&nbsp;&nbsp;<label for="c1_2">아니오</label>
                            </td>
                        </tr>
                        <tr>
                            <td>SMS(문자메시지)</td>
                            <td>
                                <input type="radio" name="smsReceiveYn" value="true" id="c2_1" >&nbsp;&nbsp;<label for="c2_1">예</label>
                                <input type="radio" name="smsReceiveYn" value="false" id="c2_2" checked>&nbsp;&nbsp;<label for="c2_2">아니오</label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <ul class="mt10 fc_type5 pl10">
                <li class="notice">* 수신거부와 상관없이 주문현황, 결제내역, 무통장 입금내역, 회사의 주요정책 관련 공지와 SMS, 메일 등은 발송됩니다.</li>
            </ul>
        </div>
        <br>   
        <div class="updateBtnDiv">
        	<input type="button" name="updateBtn" id="updateBtn" value="변경"/>
		</div>
		
		
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
<script type="text/javascript" src="../js/user/userInfoUpdate.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</html>