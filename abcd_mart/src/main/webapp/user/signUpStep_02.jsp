<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Step02</title>



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


	<div class="signUpStep_02_layout" style="margin-left:114px; margin-right:114px;">
	<section class="sub_type2 page_location">
            <ul>
                <li><a href="https://www.abcmart.co.kr/abc/main">홈</a></li>
                <li class="location_box"><span>온라인 회원가입</span></li>
                <li class="location_box"><span>회원정보입력</span></li>
            </ul>
            <hr>
     </section>

	<header> 
		<h2 class="sub_tit">ABCD-MART 온라인 회원가입</h2>
	</header>
	
    <section class="agree_step_section">
        <ul class="order_step">
            <li class="step1"><em>01</em><p>약관동의</p></li>
            <li class="step2 this"><em>02</em><p>회원정보입력</p></li>
            <li class="step3"><em>03</em><p>가입완료</p></li>
            <li class="step4"></li>
        </ul>
    </section>
    
 	<!--  form 시작점  -->
  <form action="" method="post" id="form-join-user">
    <header class="clearfix">
             <h3 class="fl-l tit_type1 fs16 pl10">회원기본정보</h3>
             <p class="fl-r mt10 pr10 fontfamily fs11"><em class="fc_red">＊</em> 필수 입력정보</p>
     </header>
    <section class="mt60">
         

   <div class="user_join_box mt10">
   
   	<!--  테이블 ㄱㄱ -->
       <table class="layout_table mt40" >
       
   		<colgroup>
             <col width="145"><col width="*">
       	</colgroup>
   	
   	
   		<tbody class="mt60">
             <tr>
             	<td class="sub_type2"><label for="userName"><em class="fc_red">*</em> 이름</label></td>
             	<td><input type="text" class="table_text" name="userName" id="userName" value="" style="width:300px;" maxlength="30"></td>
             </tr>
             
             <tr>
             	<td class="sub_type2"><label for="userBirthDay"><em class="fc_red">*</em> 생년월일</label></td>
             	<td class="sub_type2"><input type="text" class="table_text" name="userBirthDay" id="userBirthDay" value="" style="width:300px;" maxlength="8" placeholder="예시)19990101"></td>
             </tr>
   			
   			 <tr>
             	<td class="sub_type2"><label for="userId"><em class="fc_red">*</em> 아이디</label></td>
             	<td class="sub_type2"><input type="text" class="table_text" name="userId" id="userId" value="" style="width:300px;" maxlength="20" placeholder="영문, 숫자사용 4~20자">
             	&nbsp;&nbsp;
             	<a class="btn_sType1" id="btnCheckUserId" style="cursor: pointer;">중복확인</a>&nbsp;&nbsp;
             	<span class="fc_type_f3 user_id_noti insert" style="display: inline;"></span>
             	<span class="fc_type_f3 user_id_noti enter" style="display:none;">아이디를 입력해주세요</span> 
                <span class="fc_type_f3 user_id_noti ok" style="display: none; color: blue;">사용 가능한 아이디 입니다.</span>
                <span class="fc_type_f3 user_id_noti duplicated" style="display: none;">이미 가입된 아이디 입니다.</span>
                <span class="fc_type_f3 user_id_noti unavailable" style="display: none;">사용할 수 없는 아이디 입니다.</span>
                <input type="hidden" id="checkUserIdResult">

    
             	</td>
             </tr>
             
             <tr>
             	<td class="sub_type2"><label for="userPwd"><em class="fc_red">*</em> 비밀번호</label></td>
             	<td class="sub_type2"><input type="password" class="table_text" name="userPwd" id="userPwd" value="" style="width:300px;" maxlength="20" placeholder="영문, 숫자, 특수문자의 3개 이상 조합 8~20자">
             	&nbsp;&nbsp;
             	<span class="sub_type2 fc_type_f3 check_password_blank"></span>
             	<span class="sub_type2 fc_type_f3 check_password_noti incorrect" style="display: none;">비밀번호가 일치하지 않습니다.</span>
             	<span class="sub_type2 fc_type_f3 check_password_noti enter" style="display: none;">비밀번호를 입력해주세요.</span>
             	
             	</td>
             </tr>
             
             <tr>
             	<td class="sub_type2"><label for="userPwd2"><em class="fc_red">*</em> 비밀번호 확인</label></td>
             	<td class="sub_type2">
             		<input type="password" class="table_text" name="userPwd2" id="userPwd2" value="" style="width:300px;" maxlength="20">
             		<span class="sub_type2 fc_type_f3 check_password_noti ok" style="display: none; color: blue;">비밀번호가 일치합니다.</span>             	
             	</td>
             	
             </tr>
             
             <tr>
             	<td class="align-top pt10 sub_type2"><p class="pt15"><label for="userEmail"><em class="fc_red">*</em> 이메일</label></p></td>
             	<td class="sub_type2">
             	<div class="pt10">
             		<input type="text" class="table_text" name="userEmail1" id="userEmail1" value="" style="width:140px" maxlength="50">
             		@
             		<input type="text" class="table_text" name="userEmail2" id="userEmail2" value="" maxlength="50" style="width:140px" readonly>
             		&nbsp;
             		<select name="mailDomain" class="table_text" style="width:140px;">
             		<option value="">ㅡㅡ 선택 ㅡㅡ</option>
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
             		<option value="naver.com">naver.com</option>
             		<option value="paran.com">paran.com</option>
             		<option value="yahoo.com">yahoo.com</option>
             		<option value="insert">직접입력</option>
             		</select>
             		
             		&nbsp;
                <a class="btn_sType1" id="btnCheckEmail" style="cursor: pointer;">중복확인</a>&nbsp;&nbsp;
             		
             	<span class="sub_type2 fc_red ok" id="checkUserEmail" style="display: none;"> 사용 가능한 이메일주소 입니다.&nbsp;&nbsp;</span>
             	<span class="sub_type2 fc_red duplicated" id="checkUserEmail" style="display: none;"> 중복된 이메일주소 입니다.&nbsp;&nbsp;</span>
             	<span class="sub_type2 fc_red unavailable" id="checkUserEmail" style="display: none;"> 사용할 수 없는 이메일주소 입니다.&nbsp;&nbsp;</span>
             	<input type="hidden" id="checkUserEmailResult">



             		
             	<div class="mt15">
                <p class="fc_type_7b">                                                
                  <b>
                   * 마케팅 활용동의(이메일) <br/>
                                          목적 :</b>이벤트,쇼핑혜택 안내 
                     &nbsp;&nbsp;<b>항목 : </b>이메일
                     &nbsp;&nbsp;<b>보유기간 : </b>동의철회시 까지                                                   
                     </p>
                     <p class="mt10">
                          <input type="radio" name="mailReceiveYn" id="mailReceiveY" value="true" checked>&nbsp;<label for="mailReceiveY">동의함</label>&nbsp;&nbsp;
                          <input type="radio" name="mailReceiveYn" id="mailReceiveN" value="false" >&nbsp;<label for="mailReceiveN">동의안함</label>
                     </p>
                     <p class="mt15">
                                           이메일 수신거부와 상관없이 구매관련 메시지, ABC-MART의 주요정책 관련 메시지 등은 발송되며,<br />
                                           메일 수신 회원에게는 이메일을 통해 특가상품 등 다양한 이벤트 정보를 알려드립니다.
                      </p>
                   </div>
             	</div>
           	</td>
           </tr>
             	
             	
           <tr>
             
             <td class="align-top pt10 sub_type2">
                    <p class="pt15"><label for="userPhone"><em class="fc_red">＊</em> 휴대폰</label></p>
             </td>
             
             <td>
             	<div class="pt10">
                   <select class="table_text" name="handphoneNumber1" style="width: 90px;">
					    <option value="010">010</option>
					    <option value="011">011</option>
					    <option value="016">016</option>
					    <option value="017">017</option>
					    <option value="018">018</option>
					    <option value="019">019</option>
					</select>
					-
             	<input type="text" class="text inputNumberText table_text" name="handphoneNumber2" value="" maxlength="4" pattern="\d{3,4}" style="width:93px"> -
                        <input type="text" class="text inputNumberText table_text" name="handphoneNumber3" value="" maxlength="4" pattern="\d{4}" style="width:93px">&nbsp;
                        <a class="btn_sType1 sub_type2" id="btnPhoneAuth" style="cursor: pointer;">인증번호 요청</a>&nbsp;&nbsp;
                        <input type="text" class="text inputNumberText table_text sub_type2" id="authCode" placeholder="인증번호 6자리" maxlength="6" style="width:105px" disabled>&nbsp;
                        <a class="btn_sType1 table_text sub_type2" id="btnConfirmPhoneAuth" style="cursor: pointer;">확인</a>
                        <div class="mt15 sub_type2">
                           <p class="fc_type4">
                              <b>* 마케팅 활용동의(휴대폰) <br/>
                                                          목적 :</b>이벤트,쇼핑혜택 안내 
                              &nbsp;&nbsp;<b>항목 : </b>휴대폰
                              &nbsp;&nbsp;<b>보유기간 : </b>동의철회시 까지                                    
                           </p>
                           <p class="mt10">
                               <input type="radio" name="smsReceiveYn" id="smsReceiveY" value="true" checked>&nbsp;<label for="smsReceiveY">동의함</label>&nbsp;&nbsp;
                               <input type="radio" name="smsReceiveYn" id="smsReceiveN" value="false" >&nbsp;<label for="smsReceiveN">동의안함</label>
                               <span>SMS 수신거부와 상관없이 구매관련 메시지, ABCD-MART의 주요정책 관련 메시지 등은 발송됩니다.</span>
                           </p>
                       </div>
                   </div>
               </td>
            </tr>
   		 </tbody>
       </table>
     </div>
   </section>
 </form>

 
 <div class="mt40 mb40 align-center btn_aline">
            <a href="javascript:joinUser();" class="btn_lType2" style="width: 300px;">회원가입</a>&nbsp;
            <a href="/abcd_mart/main/index" class="btn_lType5" style="width: 300px;">취소</a>
 </div>
 <div class="mb40 mt40 align-center"></div>
 
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