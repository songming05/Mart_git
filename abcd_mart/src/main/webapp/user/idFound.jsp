<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/user/idFound.css"/>

<!-- quickBar -->
<link rel="stylesheet" href="../css/quickBar.css"/>	
<!-- footer-->
<link rel="stylesheet" href="../css/mainFooter.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>



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
	                <li><a onclick="location.href='../main/index.jsp'">홈</a></li>
	                <li class="location_box"><span>로그인</span></li>
	                <li class="location_box"><span>아이디 찾기</span></li>
	            </ul>
	        </section>
	        <!-- // page_location -->
	
	        <header class="add_header">
	            <h2 class="sub_tit">아이디 찾기</h2>
	            <p class="add_tit">아이디를 잊어버리셨나요?<br />회원가입 시 등록한 정보를 통해 아이디를 찾으실 수 있습니다.</p>
	        </header>   
	
	        <div class="member_area800">
	            <ul class="column_tab column2 tabs-nav">
	                <li class="current"><a href="#cm_tabs_01">이메일 주소로 찾기</a></li>
	                <li><a href="#cm_tabs_02">휴대폰 번호로 찾기</a></li>                
	            </ul>
	            <div class="tabs-content">
	                <form action="/abc/user/layerFindUserId" method="post" id="form-find-by-phone">
	                    <input type="hidden" name="searchGbn" class="searchGbn" value="02">
	                    <input type="hidden" name="authUnitGbn" class="authUnitGbn" value="1">
	
	                    <div id="cm_tabs_02" class="tabs-cont">
	                        <article class="loss_member_box">
	                            <table class="layout_table">
	                                <colgroup>
	                                    <col width="113px" /><col width="*" />
	                                </colgroup>
	                                <tr>
	                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">이름</strong></p></td>
	                                    <td>
	                                        <input type="text" name="userName" id="userName" style="width:300px;" maxlength="30">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">휴대폰</strong></p></td>
	                                    <td>
	                                        <input type="hidden" name="hdphnNum">
	                                        <select name="handphoneNumber1" class="handphoneNumber1" style="width:86px;">
	    <option value="010">010</option>
	    <option value="011">011</option>
	    <option value="016">016</option>
	    <option value="017">017</option>
	    <option value="018">018</option>
	    <option value="019">019</option>
	</select>
	 -
	                                        <input type="text" class="text" name="handphoneNumber2" value="" maxlength="4" pattern="\d{3,4}" style="width:93px"> -
	                                        <input type="text" class="text" name="handphoneNumber3" value="" maxlength="4" pattern="\d{4}" style="width:93px">&nbsp;
	                                        <a style="cursor: pointer;" class="btn_sType1">인증번호 요청</a>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">인증번호</strong></p></td>
	                                    <td>
	                                        <input type="text" name="authCode" id="authCode" maxlength="6" style="width:300px;" disabled>&nbsp;
	                                        <a  style="cursor: pointer;" class="btn_sType4">확인</a>
	                                        <p class="fc_type5 mt10"></p>
	                                    </td>
	                                </tr>
	                            </table>
	                        </article>
	                        <ul class="loss_member_add">
	                            <li><strong class="fs12">비밀번호를 잊으셨나요?</strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/findPasswordForm" class="btn_sType2">비밀번호 찾기</a></li>
	                            <li><strong class="fs12">ABC-MART 회원가입하러 가기 </strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/joinUserIntro" class="btn_sType2">회원가입</a></li>
	                        </ul>
	                    </div>
	                </form>
	                <form action="/abc/user/layerFindUserId" method="post" id="form-find-by-email">
	                    <input type="hidden" name="searchGbn" value="02">
	                    <input type="hidden" name="authUnitGbn" value="2">
	
	                    <div id="cm_tabs_01" class="tabs-cont">
	                        <article class="loss_member_box">
	                            <table class="layout_table">
	                                <colgroup>
	                                    <col width="113px" /><col width="*" />
	                                </colgroup>
	                                <tr>
	                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">이름</strong></p></td>
	                                    <td>
	                                        <input type="text" name="idUserName" id="idUserName" style="width:300px;" maxlength="30">
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">이메일</strong></p></td>
	                                    <td>
	                                        <input type="hidden" name="mailAddr" id="userMailAddress">
	                                        
	                                        <input type="text" class="text" id="userMailAddress1" name="userMailAddress1" value="" maxlength="50" style="width:140px"> @
	                                        <input type="text" class="text" id="userMailAddress2" name="userMailAddress2" value="" maxlength="50" style="width:140px" readonly>&nbsp;
	                                        <select name="foundMailDomain" class="foundMailDomain">
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
	    <option value="naver.com">naver.com</option>
	    <option value="paran.com">paran.com</option>
	    <option value="yahoo.co.kr">yahoo.co.kr</option>
	    <option value="insert">직접입력</option>
	</select>
	&nbsp;
	                                        <a href="javascript:autoCode();" style="cursor: pointer;" id="btn_sType1" class="btn_sType1">인증번호 요청</a>
	                                    </td>
	                                </tr>
	                                <tr>
	                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">인증번호</strong></p></td>
	                                    <td>
	                                        <input type="text" name="authCode" id="autoCodeEmail" maxlength="6" style="width:300px;" disabled>&nbsp;
	                                        <a href="javascript:idFound();" style="cursor: pointer;" class="btn_sType4">확인</a>
	                                        <p class="fc_type5 mt10"><!-- 3분 이내에 인증번호를 입력해 주세요. --></p>
	                                    </td>
	                                </tr>
	                            </table>
	                        </article>
	                        <ul class="loss_member_add">
	                            <li><strong class="fs12">비밀번호를 잊으셨나요?</strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/findPasswordForm" class="btn_sType2">비밀번호 찾기</a></li>
	                            <li><strong class="fs12">ABC-MART 회원가입하러 가기 </strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/joinUserIntro" class="btn_sType2">회원가입</a></li>
	                        </ul>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	
	
	<div id="findUserIdArea" class="pop_wrap positR" style="width: 310px;"></div>
	
	            
	            <div id="productPreviewArea" class="pop_wrap positR" style="width:1100px;"></div>
	            
	            <div id="productOptionArea" class="pop_wrap" style="width:370px;"></div>
        </div>
  
  <jsp:include page="../template/mainFooter.jsp"/>
</body>
<!-- quickBar -->
<script type="text/javascript" src="../js/quickBar.js"></script>  
<!-- footer -->
<script type="text/javascript" src="../js/mainFooter.js"></script>
<!-- idFound -->
<script type="text/javascript" src="../js/user/idFound.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
</html>