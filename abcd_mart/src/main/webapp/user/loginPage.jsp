<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="ABCD-Mart" />

<title>로그인 페이지</title>
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
<br>

<div class="container_wrap">
            
<div class="container_area">

<div class="container_layout">
	<!-- page_location -->
	<section class="page_location">
	    <ul>
	        <li class="sub_type2"><a href="https://www.abcmart.co.kr/abc/main">홈</a></li>
	        <li class="location_box sub_type2"><span> 로그인</span></li>
	    </ul>
        <hr>    
     </section>
	 
        
        <header class="add_header">
            <h2 class="sub_tit">로그인</h2>
        </header>
        
        <div class="member_joinCont">
        <section class="top_joinbox">
        
        	<div class="login_box fl-l l_login">
                    <ul class="tabs-nav tit mtm3">
                    	
                        <li class="current bar" id="userLoginTabli"><a href="#cm_tabs_01" id="userLoginTab">회원 로그인</a></li>
                        <li id="nonUserLoginTabli"><a href="#cm_tabs_02 loginText_style2" id="nonUserLoginTab">비회원 주문조회</a></li>
                    </ul>
                    <div class="tabs-content positR">
                        <form action="https://www.abcmart.co.kr/abc/login/login" method="post" id="form-user-login" role="submitByEnterKey">
                            <input type="hidden" name="redirectUrl" value="">
                            <div id="cm_tabs_01" class="tabs-cont">
                                <article>
                                    <table class="layout_table">
                                        <colgroup>
                                            <col width="131px" /><col width="*" />
                                        </colgroup>
                                        <tr>
                                            <td class="align-top"><p class="mt5 ml20"><strong class="fs12 fc_type_3b">아이디</strong></p></td>
                                            <td>
                                                <input type="text" id="userId" name="userId" value="" class="l_id mb10" maxlength="20" style="width:240px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="align-top"><p class="mt5 ml20"><strong class="fs12 fc_type_3b">비밀번호</strong></p></td>
                                            <td>
                                                <input type="password" id="userPwd" name="userPwd" maxlength="20" style="width:240px;" />
                                                <p class="fc_type_a4 mt10 fs11"><input type="checkbox" name="saveId" id="save_id" ><label for="save_id" class="ml5">아이디 저장</label></p>
                                            </td>
                                        </tr>
                                    </table>
                                    <p class="mtm5">
                                    <a href="javascript:loginUser();" class="btn_lType1" id="loginBox_loginBtn">로그인</a></p>
                                </article>
                                <article class="loss_member_add bor-dash">
                                    <span class="fs12">아이디/비밀번호를 잊으셨나요?</span>&nbsp;&nbsp;
                                    <a href="https://www.abcmart.co.kr/abc/user/findUserIdForm" class="loginBtn_Type1 sub_type1 fs11">아이디 찾기</a>
                                    <a href="https://www.abcmart.co.kr/abc/user/findPasswordForm" class="loginBtn_Type2 sub_type1 fs11">비밀번호 찾기</a>
                                </article>
                            </div>
                        </form>
                        
                        
                        
                        
                        <form action="/abc/login/nonUserLogin" method="post" id="form-non-user-login" role="submitByEnterKey">
                            <input type="hidden" name="redirectUrl" value="">
                            <div id="cm_tabs_02" class="tabs-cont" style="display:none;">
                                <article>
                                    <table class="layout_table mtm5" style="vertical-align: middle;">

                                        <colgroup>
                                            <col width="131px" /><col width="*" />
                                        </colgroup>
                                        <tr><td><br></td></tr>
                                        <tr>
                                            <td class="align-top"><p class="mt5 ml20"><strong class="fs12 fc_type_3b">주문번호</strong></p></td>
                                            <td>
                                                <input type="text" class="inputNumberText" name="orderNum" maxlength="13" style="width:240px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="align-top"><p class="mt5 ml20"><strong class="fs12 fc_type_3b">비밀번호</strong></p></td>
                                            <td>
                                                <input type="password" class="mt5" name="orderPassword" maxlength="6" style="width:240px;">
                                                <p class="fc_type_a4 mt10 fs11"><input type="hidden"><label class="ml5"></label></p>
                                            </td>
                                        </tr>
                                    </table>
 									<p class="mtm5">
                                    <a href="javascript:loginNonUser();" class="btn_lType1">로그인</a></p>
                                </article>
                                <article class="bot_txt"><p class="sub_type2">＊주문번호와 비밀번호를 잊으신 경우, <br/>&nbsp;&nbsp;ABC-MART 통합고객센터 080-701-7770로 문의하여 주시기 바랍니다.</p></article>
                            </div>
                        </form>
                    </div>
                </div>
        
			<!-- 오른쪽박스 -->
			
			<div class="login_box fl-l r_login">
                    <ul class="tabs-nav tit mtm3">
                        <li><span>SNS 로그인 & 회원가입</span></li>
                    </ul>
                    <form action="/abc/login/login" method="post" id="form-fb-login">
                        <p class="mt30">
                            <input type="hidden" name="userId">
                            <input type="hidden" name="userName">
                            <input type="hidden" name="userMailAddress">
                            <input type="hidden" name="snsTypeCode" value="FACEBOOK">
                            <input type="hidden" name="snsKey">
                            <input type="hidden" name="redirectUrl" value="">
                            <button type="button" class="sns_login face_login">페이스북 로그인</button>
                        </p>
                    </form>
                    <form action="/abc/login/login" method="post" id="form-naver-login">
                        <p class="mt15">
                            <input type="hidden" name="userId">
                            <input type="hidden" name="userName">
                            <input type="hidden" name="userMailAddress">
                            <input type="hidden" name="snsTypeCode" value="NAVER">
                            <input type="hidden" name="snsKey">
                            <input type="hidden" name="redirectUrl" value="">
                            <button type="button" class="sns_login naver_login">네이버 로그인</button>
                        </p>
                    </form>
			            <p class="mt15 ml20">
                            <button type="button" class="loginBox_writeBtn" id="loginBox_writeBtn">회 원 가 입</button>
                        </p>

                </div>
	 </section>
	 </div>
</div>
</div>
</div>
<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>
</body>
<script type="text/javascript" src='../js/user/userLoginJs.js'/></script>

<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>

</html>