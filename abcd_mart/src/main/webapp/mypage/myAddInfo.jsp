<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부가 정보 수정</title>
<link rel="shortcut icon" type="image⁄x-icon" href="../image/mainLogo/ABCD.png">
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mypage/myPage.css"/>
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
<li class="on"><a href="../mypage/myAddInfo">부가정보수정</a></li>
<li class=""><a href="../mypage/myRePwd">비밀번호 변경</a></li>
<li class=""><a href="../mypage/myDeleteInfo">회원탈퇴</a></li>
                </ul>
            </li>
        
    </ul>
</section>

                            <section class="my_cont order_basketCont">
                                
<section class="my_cont">
    <header class="positR">
        <h3 class="tit_type1 fs16 ml10">부가정보수정</h3>
    </header>

    <div class="mt30">
        <header class="board_head_txt pb0">
            <h3 class="fl-l fc_type6 fs12 bold">부가정보</h3>
            <p class="fl-l tit_type3 fs11">부가정보를 입력하여 주시면, 보다 많은 혜택을 받으실 수 있습니다.</p>
        </header>

        <div class="table_basic bgfa mt10">
            <form action="/abc/mypage/updateUserEtcInfo" method="post" name="updateForm" id="form-update-user-etc">
                <input type="hidden" name="userId" value="">
                <input type="hidden" name="userName" value="">
                <input type="hidden" name="userMailAddress" value="gentle1412@naver.com">
                <input type="hidden" name="bookMarkStoreId" value="">
                <input type="hidden" name="birthDay" value="">
                <input type="hidden" name="marryDate" value="">
                <input type="hidden" name="celebrateDate" value="">
                <input type="hidden" name="mailsReceiveCode" value="">
                <input type="hidden" name="workCode" value="">
                <input type="hidden" name="divisionName" value="">
                <input type="hidden" name="joinReason" value="">
                <input type="hidden" name="stampStartDate" value="">
                <input type="hidden" name="joinPathCode" value="04060301">
                <input type="hidden" name="officeName" value="">
                <input type="hidden" name="mode" value="save">
                <input type="hidden" name="telNumber1" value="">
                <input type="hidden" name="telNumber2" value="">
                <input type="hidden" name="telNumber3" value="">
                <input type="hidden" name="handphoneNumber1" value="010">
                <input type="hidden" name="handphoneNumber2" value="8993">
                <input type="hidden" name="handphoneNumber3" value="1413">
                <input type="hidden" name="officeTelNumber1" value="">
                <input type="hidden" name="officeTelNumber2" value="">
                <input type="hidden" name="officeTelNumber3" value="">
                <input type="hidden" name="mailReceiveYn" value="false">
                <input type="hidden" name="smsReceiveYn" value="false">
                <input type="hidden" name="dmReceiveYn" value="false">
                <input type="hidden" name="lunarCode" value="0406161">
                <input type="hidden" name="childCount" value="0">

                <table>
                    <colgroup>
                        <col width="160px"><col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>성별</th>
                            <td>
                                <input type="radio" id="agree_c1" name="sexCode" value="0400271">&nbsp;&nbsp;<label for="agree_c1">남</label>&nbsp;&nbsp;<input type="radio" id="agree_c2" name="sexCode" value="0400272">&nbsp;&nbsp;<label for="agree_c2">여</label>
                            </td>
                        </tr>
                        <tr>
                            <th>생년월일</th>
                            <td>
                                <select id="birthYear" style="width:86px;">
                                    
                                        
                                            <option>2019</option>
                                        
                                            <option>2018</option>
                                        
                                            <option>2017</option>
                                        
                                            <option>2016</option>
                                        
                                            <option>2015</option>
                                        
                                            <option>2014</option>
                                        
                                            <option>2013</option>
                                        
                                            <option>2012</option>
                                        
                                            <option>2011</option>
                                        
                                            <option>2010</option>
                                        
                                            <option>2009</option>
                                        
                                            <option>2008</option>
                                        
                                            <option>2007</option>
                                        
                                            <option>2006</option>
                                        
                                            <option>2005</option>
                                        
                                            <option>2004</option>
                                        
                                            <option>2003</option>
                                        
                                            <option>2002</option>
                                        
                                            <option>2001</option>
                                        
                                            <option>2000</option>
                                        
                                            <option>1999</option>
                                        
                                            <option>1998</option>
                                        
                                            <option>1997</option>
                                        
                                            <option>1996</option>
                                        
                                            <option>1995</option>
                                        
                                            <option>1994</option>
                                        
                                            <option>1993</option>
                                        
                                            <option>1992</option>
                                        
                                            <option>1991</option>
                                        
                                            <option>1990</option>
                                        
                                            <option>1989</option>
                                        
                                            <option>1988</option>
                                        
                                            <option>1987</option>
                                        
                                            <option>1986</option>
                                        
                                            <option>1985</option>
                                        
                                            <option>1984</option>
                                        
                                            <option>1983</option>
                                        
                                            <option>1982</option>
                                        
                                            <option>1981</option>
                                        
                                            <option>1980</option>
                                        
                                            <option>1979</option>
                                        
                                            <option>1978</option>
                                        
                                            <option>1977</option>
                                        
                                            <option>1976</option>
                                        
                                            <option>1975</option>
                                        
                                            <option>1974</option>
                                        
                                            <option>1973</option>
                                        
                                            <option>1972</option>
                                        
                                            <option>1971</option>
                                        
                                            <option>1970</option>
                                        
                                            <option>1969</option>
                                        
                                            <option>1968</option>
                                        
                                            <option>1967</option>
                                        
                                            <option>1966</option>
                                        
                                            <option>1965</option>
                                        
                                            <option>1964</option>
                                        
                                            <option>1963</option>
                                        
                                            <option>1962</option>
                                        
                                            <option>1961</option>
                                        
                                            <option>1960</option>
                                        
                                            <option>1959</option>
                                        
                                            <option>1958</option>
                                        
                                            <option>1957</option>
                                        
                                            <option>1956</option>
                                        
                                            <option>1955</option>
                                        
                                            <option>1954</option>
                                        
                                            <option>1953</option>
                                        
                                            <option>1952</option>
                                        
                                            <option>1951</option>
                                        
                                            <option>1950</option>
                                        
                                            <option>1949</option>
                                        
                                            <option>1948</option>
                                        
                                            <option>1947</option>
                                        
                                            <option>1946</option>
                                        
                                            <option>1945</option>
                                        
                                            <option>1944</option>
                                        
                                            <option>1943</option>
                                        
                                            <option>1942</option>
                                        
                                            <option>1941</option>
                                        
                                            <option>1940</option>
                                        
                                            <option>1939</option>
                                        
                                            <option>1938</option>
                                        
                                            <option>1937</option>
                                        
                                            <option>1936</option>
                                        
                                            <option>1935</option>
                                        
                                            <option>1934</option>
                                        
                                            <option>1933</option>
                                        
                                            <option>1932</option>
                                        
                                            <option>1931</option>
                                        
                                            <option>1930</option>
                                        
                                            <option>1929</option>
                                        
                                            <option>1928</option>
                                        
                                            <option>1927</option>
                                        
                                            <option>1926</option>
                                        
                                            <option>1925</option>
                                        
                                            <option>1924</option>
                                        
                                            <option>1923</option>
                                        
                                            <option>1922</option>
                                        
                                            <option>1921</option>
                                        
                                            <option>1920</option>
                                        
                                            <option>1919</option>
                                        
                                    
                                    
                                </select>&nbsp;&nbsp;년&nbsp;
                                <input type="text" class="text inputNumberText" id="birthMonth" value="" maxlength="2" style="width:93px">&nbsp;&nbsp;월&nbsp;
                                <input type="text" class="text inputNumberText" id="birthDate" value="" maxlength="2" style="width:93px">&nbsp;&nbsp;일
                            </td>
                        </tr>
                        <tr>
                            <th>신발사이즈</th>
                            <td>
                                
                                    <select name="shoesSize" id="woman-shoes-size" style="width: 86px;">
    <option value="">선택</option>
    <option value="220">220mm</option>
    <option value="225">225mm</option>
    <option value="230">230mm</option>
    <option value="235">235mm</option>
    <option value="240">240mm</option>
    <option value="245">245mm</option>
    <option value="250">250mm</option>
    <option value="255">255mm</option>
    <option value="260">260mm</option>
</select>

                                    <select name="" id="man-shoes-size" style="width: 86px; display: none;">
    <option value="">선택</option>
    <option value="240">240mm</option>
    <option value="245">245mm</option>
    <option value="250">250mm</option>
    <option value="255">255mm</option>
    <option value="260">260mm</option>
    <option value="265">265mm</option>
    <option value="270">270mm</option>
    <option value="275">275mm</option>
    <option value="280">280mm</option>
    <option value="285">285mm</option>
    <option value="290">290mm</option>
    <option value="295">295mm</option>
    <option value="300">300mm</option>
    <option value="305">305mm</option>
    <option value="310">310mm</option>
    <option value="315">315mm</option>
    <option value="320">320mm</option>
</select>

                                
                                
                                
                            </td>
                        </tr>
                        <tr>
                            <th>기념일</th>
                            <td>
                                <div class="fc_type4">
                                    <p>* 기념일을 설정하시면 해당월 첫 구매 시 <span class="fc_type2">더블포인트</span> 적립의 혜택이 제공됩니다.</p>
                                    <p class="mt3">* 기념일 설정변경은 연 1회로 제한됩니다.</p>
                                </div>
                                <div class="mt10">
                                    <input type="radio" id="rdoBirthdayName" name="celebrateSelect" value="B" checked="">&nbsp;&nbsp;<label for="agree_d1">생일</label>&nbsp;&nbsp;
                                    <input type="radio" id="rdoCelebrateDateName" name="celebrateSelect" value="C">&nbsp;&nbsp;<label for="agree_d2">직접입력</label>
                                    <input type="text" class="text" name="celebrateDateName" value="생일" maxlength="10" style="width:150px">
                                </div>
                                <p class="mt15">
                                    <select id="celebrateYear" style="width:86px;">
                                        
                                            <option>2019</option>
                                        
                                            <option>2018</option>
                                        
                                            <option>2017</option>
                                        
                                            <option>2016</option>
                                        
                                            <option>2015</option>
                                        
                                            <option>2014</option>
                                        
                                            <option>2013</option>
                                        
                                            <option>2012</option>
                                        
                                            <option>2011</option>
                                        
                                            <option>2010</option>
                                        
                                            <option>2009</option>
                                        
                                            <option>2008</option>
                                        
                                            <option>2007</option>
                                        
                                            <option>2006</option>
                                        
                                            <option>2005</option>
                                        
                                            <option>2004</option>
                                        
                                            <option>2003</option>
                                        
                                            <option>2002</option>
                                        
                                            <option>2001</option>
                                        
                                            <option>2000</option>
                                        
                                            <option>1999</option>
                                        
                                            <option>1998</option>
                                        
                                            <option>1997</option>
                                        
                                            <option>1996</option>
                                        
                                            <option>1995</option>
                                        
                                            <option>1994</option>
                                        
                                            <option>1993</option>
                                        
                                            <option>1992</option>
                                        
                                            <option>1991</option>
                                        
                                            <option>1990</option>
                                        
                                            <option>1989</option>
                                        
                                            <option>1988</option>
                                        
                                            <option>1987</option>
                                        
                                            <option>1986</option>
                                        
                                            <option>1985</option>
                                        
                                            <option>1984</option>
                                        
                                            <option>1983</option>
                                        
                                            <option>1982</option>
                                        
                                            <option>1981</option>
                                        
                                            <option>1980</option>
                                        
                                            <option>1979</option>
                                        
                                            <option>1978</option>
                                        
                                            <option>1977</option>
                                        
                                            <option>1976</option>
                                        
                                            <option>1975</option>
                                        
                                            <option>1974</option>
                                        
                                            <option>1973</option>
                                        
                                            <option>1972</option>
                                        
                                            <option>1971</option>
                                        
                                            <option>1970</option>
                                        
                                            <option>1969</option>
                                        
                                            <option>1968</option>
                                        
                                            <option>1967</option>
                                        
                                            <option>1966</option>
                                        
                                            <option>1965</option>
                                        
                                            <option>1964</option>
                                        
                                            <option>1963</option>
                                        
                                            <option>1962</option>
                                        
                                            <option>1961</option>
                                        
                                            <option>1960</option>
                                        
                                            <option>1959</option>
                                        
                                            <option>1958</option>
                                        
                                            <option>1957</option>
                                        
                                            <option>1956</option>
                                        
                                            <option>1955</option>
                                        
                                            <option>1954</option>
                                        
                                            <option>1953</option>
                                        
                                            <option>1952</option>
                                        
                                            <option>1951</option>
                                        
                                            <option>1950</option>
                                        
                                            <option>1949</option>
                                        
                                            <option>1948</option>
                                        
                                            <option>1947</option>
                                        
                                            <option>1946</option>
                                        
                                            <option>1945</option>
                                        
                                            <option>1944</option>
                                        
                                            <option>1943</option>
                                        
                                            <option>1942</option>
                                        
                                            <option>1941</option>
                                        
                                            <option>1940</option>
                                        
                                            <option>1939</option>
                                        
                                            <option>1938</option>
                                        
                                            <option>1937</option>
                                        
                                            <option>1936</option>
                                        
                                            <option>1935</option>
                                        
                                            <option>1934</option>
                                        
                                            <option>1933</option>
                                        
                                            <option>1932</option>
                                        
                                            <option>1931</option>
                                        
                                            <option>1930</option>
                                        
                                            <option>1929</option>
                                        
                                            <option>1928</option>
                                        
                                            <option>1927</option>
                                        
                                            <option>1926</option>
                                        
                                            <option>1925</option>
                                        
                                            <option>1924</option>
                                        
                                            <option>1923</option>
                                        
                                            <option>1922</option>
                                        
                                            <option>1921</option>
                                        
                                            <option>1920</option>
                                        
                                            <option>1919</option>
                                        
                                    </select>&nbsp;&nbsp;년&nbsp;
                                    <input type="text" class="text inputNumberText" id="celebrateMonth" value="" maxlength="2" style="width:93px">&nbsp;&nbsp;월&nbsp;
                                    <input type="text" class="text inputNumberText" id="celebrateDay" value="" maxlength="2" style="width:93px">&nbsp;&nbsp;일
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>관심브랜드</th>
                            <td>
                                <ul class="check_list">
                                    
                                        
                                        <li class="mt0">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId0" value="000018">&nbsp;&nbsp;
                                            <label for="wishBrandId0">닥터마틴</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="mt0">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId1" value="000216">&nbsp;&nbsp;
                                            <label for="wishBrandId1">대너</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="mt0">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId2" value="000083">&nbsp;&nbsp;
                                            <label for="wishBrandId2">레드윙</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="mt0">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId3" value="000047">&nbsp;&nbsp;
                                            <label for="wishBrandId3">머렐</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId4" value="000189">&nbsp;&nbsp;
                                            <label for="wishBrandId4">베어파우</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId5" value="000172">&nbsp;&nbsp;
                                            <label for="wishBrandId5">베어파우</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId6" value="000224">&nbsp;&nbsp;
                                            <label for="wishBrandId6">세바고</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId7" value="000144">&nbsp;&nbsp;
                                            <label for="wishBrandId7">스페리</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId8" value="000062">&nbsp;&nbsp;
                                            <label for="wishBrandId8">써코니</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId9" value="000241">&nbsp;&nbsp;
                                            <label for="wishBrandId9">쏘렐</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId10" value="000071">&nbsp;&nbsp;
                                            <label for="wishBrandId10">어그</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId11" value="000027">&nbsp;&nbsp;
                                            <label for="wishBrandId11">장까를로 모렐리</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId12" value="000214">&nbsp;&nbsp;
                                            <label for="wishBrandId12">제이앤더블유 도슨</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId13" value="000215">&nbsp;&nbsp;
                                            <label for="wishBrandId13">치페와</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId14" value="000205">&nbsp;&nbsp;
                                            <label for="wishBrandId14">트레통</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId15" value="000207">&nbsp;&nbsp;
                                            <label for="wishBrandId15">프로스팩스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId16" value="000030">&nbsp;&nbsp;
                                            <label for="wishBrandId16">허쉬퍼피</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId17" value="000184">&nbsp;&nbsp;
                                            <label for="wishBrandId17">헌터</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId18" value="000072">&nbsp;&nbsp;
                                            <label for="wishBrandId18">반스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId19" value="000050">&nbsp;&nbsp;
                                            <label for="wishBrandId19">나이키</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId20" value="000003">&nbsp;&nbsp;
                                            <label for="wishBrandId20">아디다스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId21" value="000074">&nbsp;&nbsp;
                                            <label for="wishBrandId21">컨버스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId22" value="000125">&nbsp;&nbsp;
                                            <label for="wishBrandId22">휠라</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId23" value="000058">&nbsp;&nbsp;
                                            <label for="wishBrandId23">리복</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId24" value="000048">&nbsp;&nbsp;
                                            <label for="wishBrandId24">뉴발란스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId25" value="000032">&nbsp;&nbsp;
                                            <label for="wishBrandId25">호킨스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId26" value="000054">&nbsp;&nbsp;
                                            <label for="wishBrandId26">푸마</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId27" value="000014">&nbsp;&nbsp;
                                            <label for="wishBrandId27">클락스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId28" value="000081">&nbsp;&nbsp;
                                            <label for="wishBrandId28">누오보</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId29" value="000093">&nbsp;&nbsp;
                                            <label for="wishBrandId29">크록스</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishBrandId" id="wishBrandId30" value="000066">&nbsp;&nbsp;
                                            <label for="wishBrandId30">스테파노로시</label>
                                        </li>
                                        
                                    
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>관심카테고리</th>
                            <td>
                                <ul class="check_list">
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishCategoryId" id="wishCategoryId0" value="0000">&nbsp;&nbsp;
                                            <label for="wishCategoryId0">운동화</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishCategoryId" id="wishCategoryId1" value="0001">&nbsp;&nbsp;
                                            <label for="wishCategoryId1">스포츠.레저</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishCategoryId" id="wishCategoryId2" value="0002">&nbsp;&nbsp;
                                            <label for="wishCategoryId2">구두</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishCategoryId" id="wishCategoryId3" value="0003">&nbsp;&nbsp;
                                            <label for="wishCategoryId3">샌들</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishCategoryId" id="wishCategoryId4" value="0004">&nbsp;&nbsp;
                                            <label for="wishCategoryId4">부츠</label>
                                        </li>
                                        
                                    
                                        
                                        <li class="">
                                            <input type="checkbox" name="wishCategoryId" id="wishCategoryId5" value="0005">&nbsp;&nbsp;
                                            <label for="wishCategoryId5">의류 및 용품</label>
                                        </li>
                                        
                                    
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>

        <p class="align-center mt30">
            <a class="btn_mType1" onclick="submit();" style="width:65px; cursor: pointer;">변경</a>
        </p>
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
        