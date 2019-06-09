<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰리스트</title>
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
                
                
                ${myPageName}님은<span class="fc_type8 ">온라인 회원</span> 입니다.
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
                    
                    
                    
                    
<li class="on"><a href="../mypage/myCouponList">쿠폰리스트</a></li>
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
                                
<section class="my_cont">
    <header class="positR">
        <h3 class="tit_type1 fs16 ml10">쿠폰리스트</h3>
    </header>

    <section class="password_box couponList mt10">
        <div class="inBox">
            <ul class="list_type1">
                <li>주문1건, 상품 1개에 쿠폰을 사용하실 수 있습니다.</li>
                <li>결제 시 쿠폰을 적용하지 않으면 할인이 적용되지 않습니다.</li>
                <li>유효기간이 경과된 쿠폰은 내역에서 자동 삭제됩니다.</li>
                <li>반품시 할인쿠폰이 적용된 상품의 경우 할인된 금액은 환불되지 않습니다.</li>
            </ul>
        </div>
    </section>

    <section class="clearfix mt40">
        <p class="fl-r">발급받으신 쿠폰이 있으신가요? 쿠폰등록 후 사용하세요.
            <a href="#target1" data-rel="layer" class="btn_sType3 pd4 ml10 couponRegistLayerPopupButton">쿠폰등록</a>
            <a href="https://www.abcmart.co.kr/abc/event/main" class="btn_sType1 pd4">쿠폰더보기</a>
        </p>
    </section>

    <section class="mt10">
        <ul class="column_tab tabs-nav column2 mt10">
            
                <li class="current"><a href="#">사용가능한 쿠폰</a></li>
                <li class="positR"><a href="https://www.abcmart.co.kr/abc/mypage/listCoupon?passed=true">지난 쿠폰</a></li>
            
            
        </ul>
    </section>

    <div class="tabs-content mt30">
        <div id="cm_tabs_01" class="tabs-cont" style="display: block;">
            <div class="table_basic">
                <table>
                    <colgroup>
                        <col width="110"><col width="110"><col width="*"><col width="120"><col width="80"><col width="130"><col width="100">
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="normal">쿠폰번호</th>
                            <th colspan="2" class="normal">쿠폰명</th>
                            <th class="normal">할인액(율)</th>
                            <th class="normal">상태</th>
                            <th class="normal">유효기간</th>
                            <th class="normal">쿠폰구분</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        
                            
                                <tr class="group-center">
                                    <td class="tit_type3">AC50MVQBOB</td>
                                    <td>
                                                                <div class="cp_type1_2">플러스쿠폰<br><strong>5,000원</strong></div>
            
                                    </td>
                                    <td class="align-left pl0">
                                        <div class="fl-l ml20">
                                            할인쿠폰<br>
                                            우븐슈즈 5천원 플러스쿠폰<br>
                                            
                                            
                                                
                                                
                                                    <span class="fc_type2">상품 : 30,000원 이상 사용가능</span>
                                                
                                                
                                            
                                            
	                                            <p class="fc_type5">(일부 브랜드 및 일부 상품에 적용 불가)</p>
                                            
                                            
                                            
                                            
                                                <p class="mt5 list_type3 viewApplicable" data-cpn-id="1000002043" style="cursor: pointer;">적용대상보기 :
                                                    
                                                        69개
                                                    
                                                    
                                                    
                                                    상품
                                                </p>
                                             
                                                                                   
                                        </div>
                                    </td>
                                    <td>
                                        <span class="bold tit_type3 fs12 fc_type8">
                                            5,000
                                        </span><span class="bold">원</span>
                                        
                                                <span class="fc_type5"><br>최대 35%이내<br>적용가능</span>
                                        
                                    </td>
                                    <td>사용가능</td>
                                    <td class="tit_type3">
                                        
	                                            2019.05.24 00:00
	                                            
                                            
                                        ~
                                        2019.06.13 23:59
                                        <br>
                                        
                                        
                                                 (21일)
                                            
                                    </td>
                                    <td>
                                        온라인/<br>모바일
                                        
                                    </td>
                                </tr>
                            
                                <tr class="group-center">
                                    <td class="tit_type3">AC50MVQBRE</td>
                                    <td>
                                                                <div class="cp_type1_2">플러스쿠폰<br><strong>5,000원</strong></div>
            
                                    </td>
                                    <td class="align-left pl0">
                                        <div class="fl-l ml20">
                                            할인쿠폰<br>
                                            샌들 5천원 플러스쿠폰<br>
                                            
                                            
                                                
                                                
                                                    <span class="fc_type2">상품 : 30,000원 이상 사용가능</span>
                                                
                                                
                                            
                                            
	                                            <p class="fc_type5">(일부 브랜드 및 일부 상품에 적용 불가)</p>
                                            
                                            
                                            
                                            
                                                <p class="mt5 list_type3 viewApplicable" data-cpn-id="1000002042" style="cursor: pointer;">적용대상보기 :
                                                    
                                                        476개
                                                    
                                                    
                                                    
                                                    상품
                                                </p>
                                             
                                                                                   
                                        </div>
                                    </td>
                                    <td>
                                        <span class="bold tit_type3 fs12 fc_type8">
                                            5,000
                                        </span><span class="bold">원</span>
                                        
                                                <span class="fc_type5"><br>최대 35%이내<br>적용가능</span>
                                        
                                    </td>
                                    <td>사용가능</td>
                                    <td class="tit_type3">
                                        
	                                            2019.05.24 00:00
	                                            
                                            
                                        ~
                                        2019.06.13 23:59
                                        <br>
                                        
                                        
                                                 (21일)
                                            
                                    </td>
                                    <td>
                                        온라인/<br>모바일
                                        
                                    </td>
                                </tr>
                            
                                <tr class="group-center">
                                    <td class="tit_type3">AC50MVRQQH</td>
                                    <td>
                                                                <div class="cp_type1_2">플러스쿠폰<br><strong>10,000원</strong></div>
            
                                    </td>
                                    <td class="align-left pl0">
                                        <div class="fl-l ml20">
                                            할인쿠폰<br>
                                            상반기 베스트, 1만원 플러스<br>
                                            
                                            
                                                
                                                
                                                
                                                    <span class="fc_type2">신발구매시 사용가능</span>
                                                
                                            
                                            
	                                            <p class="fc_type5">(일부 브랜드 및 일부 상품에 적용 불가)</p>
                                            
                                            
                                            
                                            
                                                <p class="mt5 list_type3 viewApplicable" data-cpn-id="1000002067" style="cursor: pointer;">적용대상보기 :
                                                    
                                                        144개
                                                    
                                                    
                                                    
                                                    상품
                                                </p>
                                             
                                                                                   
                                        </div>
                                    </td>
                                    <td>
                                        <span class="bold tit_type3 fs12 fc_type8">
                                            10,000
                                        </span><span class="bold">원</span>
                                        
                                                <span class="fc_type5"><br>최대 35%이내<br>적용가능</span>
                                        
                                    </td>
                                    <td>사용가능</td>
                                    <td class="tit_type3">
                                        
	                                            2019.06.04 00:00
	                                            
                                            
                                        ~
                                        2019.06.16 23:59
                                        <br>
                                        
                                        
                                                 (13일)
                                            
                                    </td>
                                    <td>
                                        온라인/<br>모바일
                                        
                                    </td>
                                </tr>
                            
                                <tr class="group-center">
                                    <td class="tit_type3">AC50MVQAV0</td>
                                    <td>
                                                                <div class="cp_type1_2">플러스쿠폰<br><strong>10%</strong></div>
            
                                    </td>
                                    <td class="align-left pl0">
                                        <div class="fl-l ml20">
                                            할인쿠폰<br>
                                            상반기 베스트,10% 플러스<br>
                                            
                                            
                                                
                                                
                                                
                                                    <span class="fc_type2">신발구매시 사용가능</span>
                                                
                                            
                                            
	                                            <p class="fc_type5">(일부 브랜드 및 일부 상품에 적용 불가)</p>
                                            
                                            
                                            
                                            
                                                <p class="mt5 list_type3 viewApplicable" data-cpn-id="1000002066" style="cursor: pointer;">적용대상보기 :
                                                    
                                                        167개
                                                    
                                                    
                                                    
                                                    상품
                                                </p>
                                             
                                                                                   
                                        </div>
                                    </td>
                                    <td>
                                        <span class="bold tit_type3 fs12 fc_type8">
                                            10
                                        </span><span class="bold">%</span>
                                        
                                                <span class="fc_type5"><br>최대 35%이내<br>적용가능</span>
                                        
                                    </td>
                                    <td>사용가능</td>
                                    <td class="tit_type3">
                                        
	                                            2019.06.04 00:00
	                                            
                                            
                                        ~
                                        2019.06.16 23:59
                                        <br>
                                        
                                        
                                                 (13일)
                                            
                                    </td>
                                    <td>
                                        온라인/<br>모바일
                                        
                                    </td>
                                </tr>
                            
                                <tr class="group-center">
                                    <td class="tit_type3">AC50MDCQ5F</td>
                                    <td>
                                                                <div class="cp_type1_2">플러스쿠폰<br><strong>5,000원</strong></div>
            
                                    </td>
                                    <td class="align-left pl0">
                                        <div class="fl-l ml20">
                                            할인쿠폰<br>
                                            App 가입축하 5,000원 플러스<br>
                                            
                                                
                                                
                                                    <span class="fc_type2">(상품 : 30,000원 이상 사용가능)</span>
                                                
                                                
                                            
                                            
                                            
	                                            <p class="fc_type5">(일부 브랜드 및 일부 상품에 적용 불가)</p>
                                            
                                            
                                            
                                                <p class="mt5 list_type3">적용대상보기 : 전체상품
                                                </p>
                                            
                                             
                                                                                   
                                        </div>
                                    </td>
                                    <td>
                                        <span class="bold tit_type3 fs12 fc_type8">
                                            5,000
                                        </span><span class="bold">원</span>
                                        
                                    </td>
                                    <td>사용가능</td>
                                    <td class="tit_type3">
                                        
	                                            2019.06.01 00:00
	                                            
	                                        
                                        ~
                                        2019.08.29 23:59
                                        <br>
                                        
                                        
                                                (90일)
                                            
                                    </td>
                                    <td>
                                        온라인/<br>모바일
                                        
                                    </td>
                                </tr>
                            
                        
                    </tbody>
                </table>
            </div>
            <p class="paginate mt20">
                




    
    
        
        
            <a href="javascript://" class="selected on">1</a>
        
    
    

            </p>
        </div>
        <!-- //테이블 -->

        <!-- 테이블 -->
        <div id="cm_tabs_02" class="tabs-cont" style="display: none;">
            <p class="fc_type5">* 최근 1년간 고객님이 사용하셨거나 쿠폰 사용 기간이 종료되어 더 이상 사용할 수 없는 쿠폰 내역입니다</p>
            <div class="table_basic mt5">
                <table>
                    <colgroup>
                        <col width="100"><col width="115"><col width="*"><col width="100"><col width="130"><col width="130"><col width="100">
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="normal">쿠폰번호</th>
                            <th colspan="2" class="normal">쿠폰명</th>
                            <th class="normal">할인액(율)</th>
                            <th class="normal">상태</th>
                            <th class="normal">유효기간</th>
                            <th class="normal">쿠폰구분</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                            <tr>
                                <td colspan="7"><p class="non_data">지난 쿠폰이 없습니다.</p></td>
                            </tr>
                        
                        
                    </tbody>
                </table>
            </div>
            <p class="paginate mt20">
                
            </p>
        </div>
        <!-- //테이블 -->
    </div>

    
        
        
    




<script type="text/javascript">
jQuery(function($){
    
	//레이어 팝업 닫기 클릭시 쿠폰번호삭제
    $(".couponCancle").on("click", function(){
        $("#cpnUserNum").val("");
    });
    
    $('form#registerCouponForm').submit(function(){
        var cpnUserNum = $.trim($("input[name='cpnUserNum']").val());
        
        if(isEmpty(cpnUserNum)) {
            alert("쿠폰번호를 입력하셔야 합니다.");
            $("input[name='cpnUserNum']").focus();
            return false;
        }
        
        var pattern = /[\W]/g;
        
        if(pattern.test(cpnUserNum)){
            alert("특수문자는 입력할 수 없습니다.");
            $("input[name='cpnUserNum']").focus();
            return false;
        }
        
        $.ajax({
            type: "POST"
            ,url: "/abc/promotion/eventCouponSave"
            ,data: {cpnUserNum : cpnUserNum}
            ,dataType: "json"
            ,success : function(data) {
                if(data.success){ 
                      alert("쿠폰이 등록되었습니다.");
                
                      if("true"){
                          $(".pop_x").click();
                      }else{
                          window.close();
                          opener.location.reload();
                      }
                 }else{
                    alert(data.errorMessages[0]);
                    $("input[name='cpnUserNum']").focus();
                    return false;
                 }
            }
            ,error: function(data) {
                alert('시스템 오류가 발생 했습니다. 관리자에게 문의하세요.');
            }
        }); 
        return false;
    });
});

</script>



     <!-- 쿠폰등록 -->
    <section id="target1" class="pop_wrap" style="width: 370px; margin-left: -185px; overflow-y: scroll; height: 358px; margin-top: -179px;">
        <header class="pop_header">
            <h2>쿠폰등록</h2>
            <button type="button" class="pop_x ico_close2 couponCancle">Close</button>
        </header>

        
        
            
        
        <form name="registerCouponForm" id="registerCouponForm" method="post" action="/abc/mypage/userCouponSave">
            <div class="pop_container">
                    <div class="align-center">
                        <p class="bold fc_type6 fs12 mb10">ABC-MART 쿠폰번호를 입력하세요.</p>
                        <input type="text" id="cpnUserNum" name="cpnUserNum" value="" title="쿠폰번호를 입력하세요" onkeydown="javaScript:validateNonKr();" style="width:100%" maxlength="10">
                    </div>
    
                <section class="bg_box mt20">
                    <ul class="list_type1">
                        <li>등록 된 쿠폰은 마이페이지&gt;쿠폰리스트에서 <br> 확인 가능합니다.</li>
                        <li class="mt5">쿠폰 사용 조건(사용처, 유효기간)을 확인하신 후 사용 바랍니다.</li>
                    </ul>
                </section>
    
                <div class="btn_group">
                    <button type="submit" class="btn_mType1">쿠폰 등록</button>
                </div>
            </div>
        </form>
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
        