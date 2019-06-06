<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/user/idFound.css"/>

<!-- quickBar -->
<link rel="stylesheet" href="../css/quickBar.css"/>	
<!-- footer-->
<link rel="stylesheet" href="../css/mainFooter.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

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
                <li><a href="https://www.abcmart.co.kr/abc/main">홈</a></li>
                <li class="location_box"><span>로그인</span></li>
                <li class="location_box"><span>비밀번호 찾기</span></li>
            </ul>
        </section>
        <!-- // page_location -->

        <header class="add_header">
            <h2 class="sub_tit">비밀번호 찾기</h2>
            <p class="add_tit">비밀번호를 잊어버리셨나요?<br>회원가입 시 등록한 정보 또는 본인인증을 통해 비밀번호를 찾으실 수 있습니다.</p>
        </header>   

        <div class="member_area800">
            <ul class="column_tab column3 tabs-nav">
                <li class="current"><a href="#cm_tabs_01">이메일 주소로 찾기</a></li>
                <li><a href="#cm_tabs_02">휴대폰 번호로 찾기</a></li>
                <li><a href="#cm_tabs_03">본인 인증으로 찾기</a></li>
            </ul>
            <div class="tabs-content">
                <form action="/abc/user/findPassword" method="post" id="form-find-by-phone">
                    <input type="hidden" name="searchGbn" value="03">
                    <input type="hidden" name="authUnitGbn" value="1">

                    <div id="cm_tabs_02" class="tabs-cont">
                        <article class="loss_member_box">
                            <table class="layout_table">
                                <colgroup>
                                    <col width="113px"><col width="*">
                                </colgroup>
                                <tbody><tr>
                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">아이디</strong></p></td>
                                    <td>
                                        <input type="text" name="userId" id="userId" maxlength="20" style="width:300px;">
                                    </td>
                                </tr>
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
                                        <select name="handphoneNumber1" style="width:86px;">
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
                                        <input type="text" name="authCode" id="authCode" maxlength="6" style="width:300px;" disabled="">&nbsp;
                                        <a style="cursor: pointer;" class="btn_sType4">확인</a>
                                        <p class="fc_type5 mt10">3분 이내에 인증번호를 입력해 주세요.</p>
                                    </td>
                                </tr>
                            </tbody></table>
                        </article>
                        <ul class="loss_member_add">
                            <li><strong class="fs12">아이디를 잊으셨나요?</strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/findUserIdForm" class="btn_sType2">아이디 찾기</a></li>
                            <li><strong class="fs12">ABC-MART 회원가입하러 가기 </strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/joinUserIntro" class="btn_sType2">회원가입</a></li>
                        </ul>
                    </div>
                </form>
                <form action="/abc/user/findPassword" method="post" id="form-find-by-email">
                    <input type="hidden" name="searchGbn" value="03">
                    <input type="hidden" name="authUnitGbn" value="2">

                    <div id="cm_tabs_01" class="tabs-cont">
                        <article class="loss_member_box">
                            <table class="layout_table">
                                <colgroup>
                                    <col width="113px"><col width="*">
                                </colgroup>
                                <tbody><tr>
                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">아이디</strong></p></td>
                                    <td>
                                        <input type="text" name="userId" id="userId" maxlength="20" style="width:300px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">이름</strong></p></td>
                                    <td>
                                        <input type="text" name="userName" id="userName" style="width:300px;" maxlength="30">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">이메일</strong></p></td>
                                    <td>
                                        <input type="hidden" name="mailAddr" id="mailAddr">
<!--                                         <input type="hidden" name="userMailAddress" id="userMailAddress"> -->
                                        
                                        <input type="text" class="text" id="userMailAddress1" value="" maxlength="50" style="width:140px"> @
                                        <input type="text" class="text" id="userMailAddress2" value="" maxlength="50" style="width:140px" readonly="">&nbsp;

                                        <select name="mailDomain">
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
                                        &nbsp;<a class="btn_sType1" style="cursor: pointer;">인증번호 요청</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">인증번호</strong></p></td>
                                    <td>
                                        <input type="text" name="authCode" id="authCode" maxlength="6" style="width:300px;" disabled="">
                                        &nbsp;<a class="btn_sType4" style="cursor: pointer;">확인</a>
                                        <p class="fc_type5 mt10">3분 이내에 인증번호를 입력해 주세요.</p>
                                    </td>
                                </tr>
                            </tbody></table>
                        </article>
                        <ul class="loss_member_add">
                            <li><strong class="fs12">아이디를 잊으셨나요?</strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/findUserIdForm" class="btn_sType2">아이디 찾기</a></li>
                            <li><strong class="fs12">ABC-MART 회원가입하러 가기 </strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/joinUserIntro" class="btn_sType2">회원가입</a></li>
                        </ul>
                    </div>
                </form>
                <form action="/abc/user/findPassword" method="post" id="form-find-by-auth">
                    <div id="cm_tabs_03" class="tabs-cont">
                        <article class="loss_member_box">
                            <table class="mt10">
                                <colgroup>
                                    <col width="113px"><col width="*">
                                </colgroup>
                                <tbody><tr>
                                    <td class="align-top"><p class="mt5"><strong class="fs12 fc_type6">아이디</strong></p></td>
                                    <td>
                                        <input type="text" name="userId" id="userId" maxlength="20" style="width:300px;">
                                        <p class="fc_type5 mt15">온라인회원으로 가입하신 경우 휴대폰 인증으로<br>찾기 또는 이메일 인증으로 찾기를 통해 진행하시기 바랍니다.</p>
                                    </td>
                                </tr>
                            </tbody></table>
                            <section class="mt40">
                                <header class="fc_type6 bold align-center fs12">원하시는 인증수단을 선택해 주세요. </header>
                                <ul class="member_confirm">
                                    <li style="cursor: pointer;" id="btnHpCheck">
                                        <div class="confirm_01">
                                            <div class="fl-l mt10">
                                                <strong class="fs12 fc_type3">휴대폰 인증</strong><br>
                                                <p class="mt10">이용자 명의의<br>휴대폰으로 인증</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li style="cursor: pointer;" id="btnIpinCheck">
                                        <div class="confirm_02">
                                            <div class="fl-l mt10">
                                                <strong class="fs12 fc_type3">아이핀 인증</strong><br>
                                                <p class="mt10">이용자의 I-PIN 아이디와 <br>비밀번호로 인증</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </section>
                        </article>
                        <ul class="loss_member_add">
                            <li><strong class="fs12">아이디를 잊으셨나요?</strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/findUserIdForm" class="btn_sType2">아이디 찾기</a></li>
                            <li><strong class="fs12">ABC-MART 회원가입하러 가기 </strong>&nbsp;&nbsp;<a href="https://www.abcmart.co.kr/abc/user/joinUserIntro" class="btn_sType2">회원가입</a></li>
                        </ul>
                    </div>
                </form>
                <form name="hp_form_chk" method="post">
                    <input type="hidden" name="param_r1" value="">
                    <input type="hidden" name="tr_cert" value="">
                    <input type="hidden" name="tr_url" value="">
                </form>
                <form name="ipin_form_chk" method="post">
                    <input type="hidden" name="reqInfo" value="">
                    <input type="hidden" name="retUrl" value="">
                </form>
            </div>
        </div>
    </div>
</div>


<div id="changePasswordFormArea" class="pop_wrap" style="width:425px;"></div>

<div id="changePasswordArea" class="pop_wrap" style="width:405px;"></div>

          
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

<script type="text/javascript" src="../js/main.js"></script>
</html>