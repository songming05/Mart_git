<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Step01</title>


<link rel="stylesheet" href="../css/user/userLoginCss.css">
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

</head>

<body>

<header>
<jsp:include page="../template/header.jsp"/>

</header>

	<div class="signUpStep_01_layout" style="margin-left:114px; margin-right:114px;">
	<section class="sub_type1 page_location">
            <ul>
                <li><a href="https://www.abcmart.co.kr/abc/main">홈</a></li>
                <li class="location_box"><span>회원가입</span></li>
                <li class="location_box"><span>온라인 회원가입</span></li>
            </ul>
            <hr>
     </section>
	


	<header> 
		<h2 class="sub_tit">ABCD-MART 온라인 회원가입</h2>
	</header>
	
	
	
    <section class="agree_step_section">
        <ul class="order_step">
            <li class="step1 this"><em>01</em><p>약관동의</p></li>
            <li class="step2"><em>02</em><p>회원정보입력</p></li>
            <li class="step3"><em>03</em><p>가입완료</p></li>
            <li class="step4"></li>
        </ul>
    </section>
    
   <form action="/abcd_mart/user/signUpStep_02" method="post" id="form-agreement">
	
	    <section class="mt60">
	        <ul class="agree_terms mt10">
	            <li><input type="checkbox" id="cbPurchaseClause" value="true" class="required">&nbsp;&nbsp;<label for="cbPurchaseClause" class="fs11 fc_type_7b font_family">ABC-MART 구매이용약관 <em class="fc_type5 font_family">(필수)</em></label>
	            <a class="btn_sType1" id="btnPurchaseClause" style="cursor: pointer;">내용보기<i class="ico_arrow_left"></i></a></li>
	            <li><input type="checkbox" id="cbEbankClause" value="true" class="required">&nbsp;&nbsp;<label for="cbEbankClause" class="fs11 fc_type_7b font_family">ABC-MART 전자금융거래 이용약관 <em class="fc_type5 font_family">(필수)</em></label>
	            <a class="btn_sType1" id="btnEbankClause" style="cursor: pointer;">내용보기 <i class="ico_arrow_left"></i></a>
	            </li>	            
	        </ul>
	    </section>	    
		<!-- 진한글씨 ABC-MART 개인정보 수집 및 이용에 대한 안내-->	    
	    <section class="agree_collection_section mt30">
		    <p class="pl10 fs12 bold .fc_type_3b">ABC-MART 개인정보 수집 및 이용에 대한 안내
		    <a class="btn_sType1" id="btnPrivateClause" style="cursor: pointer;">전문보기 <i class="ico_arrow_left"></i></a></p>
	  	</section>


		<!--  section [1]  -->
	   	<section class="agree_collection_section mt30">	   		
	   		<header class="positR mt25">
	            <h4 class="pl10 fc_type_66 fs11">개인정보 수집 및 이용에 대한 안내 <em>(필수)</em></h4>
	            <div class="positA t0 r0">
	                <input type="radio" name="cbPrivateClause" value="true" class="required pl10" id="cbPrivateClause1">&nbsp;&nbsp;<label for="cbPrivateClause1" class="fc_type_7b fs11">동의함</label>&nbsp;
	                <input type="radio" name="cbPrivateClause" value="false" class="required pl10" checked="checked" id="cbPrivateClause2">&nbsp;&nbsp;<label for="cbPrivateClause2" class="fc_type_7b fs11">동의안함</label>
	            </div>
	       </header>  
	       <!-- 테이블 -->
	       <div class="table_basic no_point mt10 fs11 fontfamily">
	       		<table class="table_center">
                    <colgroup>
                        <col width="400"><col width="600"><col width="400">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>목적</th>
                            <th>항목</th>
                            <th>보유 및 이용기간</th>
                        </tr>
                    </thead>
                    <tbody class="fc_type_66">
                        <tr class="group-center">
                            <td class="align-top">회원가입 및 상담서비스 신청 등</td>
                            <td><div class="pl20 align-left">성명, 아이디, 생년월일, 비밀번호, 휴대폰번호, 이메일</div></td>
                            <td class="align-top">회원탈퇴 시 까지(단, 관계 법령에 따름)</td>
                        </tr>
                    </tbody>
                </table>
           </div>
           </section>
       
   		<!--  section [2]  -->
   		<section class="agree_collection_section mt30">
   		<header class="positR mt25">
           <h4 class="pl10 fc_type_66 fs11">개인정보 수집 및 이용에 대한 안내  <em>(선택)</em></h4>
           <div class="positA t0 r0">
               <input type="radio" name="marketingAgreeYn" value="true" class="required pl10" id="marketingAgree1">&nbsp;&nbsp;<label for="marketingAgree1" class="fc_type_7b fs11">동의함</label>&nbsp;
               <input type="radio" name="marketingAgreeYn" value="false" class="required pl10" checked="checked" id="marketingAgree2">&nbsp;&nbsp;<label for="marketingAgree2" class="fc_type_7b fs11">동의안함</label>
           </div>
       </header>
       
             
       <!-- 테이블 -->
       <div class="table_basic no_point mt10 fs11 fontfamily">
                  <table class="table_center">
                        <colgroup>
                            <col width="400"><col width="600"><col width="400">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>목적</th>
                                <th>항목</th>
                                <th>보유 및 이용기간</th>
                            </tr>
                        </thead>
                        <tbody class="fc_type_66">
                            <tr class="group-center">
                                <td class="align-top">회원가입 및 각종 이벤트, 행사관련 정보 안내 및 마케팅 활동 등 신청 등</td>
                                <td><div class="pl20 align-left">생년월일, 정보수신여부(이메일, SMS)</div></td>
                                <td class="align-top">회원탈퇴 시 까지(단, 관계 법령에 따름)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
          
           
           
           <div class="mt20 pl10 fs11 fc_type_66 fontfamily">
                    <p>＊서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</p>
                    <ul class="mt5 pl10">
                        <li>-방문일시, 주문/결제기록, IP Address, 서비스 이용 기록, 불량 이용 기록, 상담기록, IP Address<br></li>
                        <li class="mt5">-개인정보 수집방법 : 홈페이지 회원가입, 서비스 이용, 이벤트 응모, 회원정보 수정, 팩스, 전화, 고객센터 문의</li>
                    </ul>
          </div>
          
          <p class="mt60 align-center">
                   <input type="checkbox" id="agree_all">&nbsp;&nbsp;<label for="agree_all" class="tit_type1 fc_type_3b fs14 bold">ABC-MART 이용을 위한 구매이용약관 및 전자금융거래 이용약관, 개인정보 처리방침(필수)에 대해 <strong><font color="red">모두 동의</font></strong> 합니다.</label>
          </p>
          
          <!--  동의/회원가입 버튼 -->
          <div class="mt40 align-center btnAgree">
            <a href="javascript:submit();" class="btn_lType0"  style="width: 300px;">만 14세 이상 회원가입</a>
            &nbsp;<a href="javascript:underAgeCheck();" class="btn_lType5" style="width: 300px;">만 14세 미만 회원가입</a>
            &nbsp;<a href="/abcd_mart/main/index" class="btn_lType5" style="width: 300px;">취소</a>
         </div>
         
         <div class="mt40"></div>
          
          
       </section> 
   	</form>
</div>


<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>

</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/user/userLoginJs.js"></script>

<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>

</html>