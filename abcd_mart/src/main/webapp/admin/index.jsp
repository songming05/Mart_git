<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/adminCss/adminCss.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

	<div id="layout_Box">

		<div id="top">
			<section class="topMenu">
			<div class="content_layout">
				<div class="welcome sub_type1 ml10">관리자님 환영합니다.</div>
				<div class="menu_right">
					<a class="Btn_Type1 sub_type2">관리자설정 </a>
					<a class="Btn_Type1 sub_type2">abcd마트가기 </a>
					<a class="Btn_Type1 sub_type2">로그아웃 </a>
				</div>
			</div>
			
			
			 
			<div class="mainMenu">
		
				<ul>
					<li class="menuLogo">
					 <img src="../image/header/ABCD-MART.png" style="width:120px; height:45px; margin-right:30px;">
					</li>
				</ul>
				<ul class="menuList">
					<li>
					 <a class="mainMenu_Btn mtm10" id="menu_Home" href="/abcd_mart/admin/index">홈</a>
					</li>
					<li>
					 <a class="mainMenu_Btn mtm10" id="menu_Product" href="/abcd_mart/admin/applyFormPdt">상품</a>
					</li>
					<li>
					  <a class="mainMenu_Btn mtm10" id="menu_Order" href="/abcd_mart/admin/orderForm">주문</a>
					</li>
					<li>
					  <a class="mainMenu_Btn mtm10" id="menu_Member">회원</a>
					</li>
					<li>
					 <a class="mainMenu_Btn mtm10" id="menu_Manage">운영</a>
					</li>
					<li>
					 <a class="mainMenu_Btn mtm10" id="menu_Promotion">광고</a>
					</li>
					<li>
					  <a class="mainMenu_Btn mtm10" id="menu_Stats">통계</a>
					</li>
					
					</ul>
				</div>
			
			</section>
		</div>

		<div id="left">
			<div class="left_Layout">
				<jsp:include page="${leftMenu }"/>
			</div>
		
		</div>

		<div id="main">
			<div class="main_Layout">
				<jsp:include page="${display}"/>
			</div>
		</div>
		<div id="bottom">bottom</div>

	</div>

</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/adminJs/adminJs.js"></script>

</html>