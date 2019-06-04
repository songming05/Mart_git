<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>${detailPageDTO.getPrdtMainName()} 상세페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/detailPage/page/detailPageCss.css">
<link rel="stylesheet" href="../css/detailPage/zoom/zoomExam.css">
 <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
  <style>
	body {min-height: 100vh;} 
  .container { margin: 150px auto; max-width: 960px; }
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script src="../js/detailPage/page/detailPageJs2.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>




</head>
<body>
<!-- 값 넘기기 -->
<input type="hidden" value="${detailPageDTO.getPrdtMainName()}" id="mainName">
<input type="hidden" value="${detailPageDTO.getPrdtImage1()}" id="image1">
<input type="hidden" value="${detailPageDTO.getPrdtImage2()}" id="image2">
<input type="hidden" value="${detailPageDTO.getPrdtImage3()}" id="image3">
<input type="hidden" value="${detailPageDTO.getPrdtImage4()}" id="image4">
<input type="hidden" value="${detailPageDTO.getPrdtSize()}" id="size">
<input type="hidden" value="${detailPageDTO.getPrdtPrice()}" id="price">
<input type="hidden" value="${detailPageDTO.getPrdtCode()}" id="code">

<div class="container" style="width:1100px;">
<br><br>
<table align="center">
<!-- 한줄 -->
<tr>
<td colspan="2" style="height:30px;">
<div style="border:1px solid #AAAAAA; width:90%; margin:auto;"></div>
</td>
</tr>

<!-- 상품 이미지 -->
<tr>
<td style="width:450px; height:600px; padding:10px 28px; text-align:top; vertical-align: text-bottom">
<!-- <div id="mainImage" style="border:1px solid red; width:450px; height:450px;"> -->

<div class="container">
  <div class="show">
    <img src="../image/page/product/${detailPageDTO.getPrdtImage2()}" id="show-img">
  </div>
  <div class="small-img">
    <div class="small-container">
        <img src="../image/page/product/${detailPageDTO.getPrdtImage1()}" class="show-small-img" alt="">
        <img src="../image/page/product/${detailPageDTO.getPrdtImage2()}" class="show-small-img" alt="">
        <img src="../image/page/product/${detailPageDTO.getPrdtImage3()}" class="show-small-img" alt="">
        <img src="../image/page/product/${detailPageDTO.getPrdtImage4()}" class="show-small-img" alt="">
    </div>
  </div>
</div>
<script src="../js/detailPage/zoom/zoomExam.js"></script>
<script src="../js/detailPage/zoom/zoomMain.js"></script>

</td>

<td>
  <h2 style="float:left; font-weight:bold;">${detailPageDTO.getPrdtMainName()}</h2><br><br><br>
  <h6 align="left" style="color:#AAAAAA;">${detailPageDTO.getPrdtMiniName()}</h6><br>            
  <table class="table" style="width:550px;" id="detailPage">
    <thead>
      <tr>
        <td colspan="2" align="left" style="font-size:11px;">스타일코드 : ${detailPageDTO.getPrdtStyleCode()} &emsp; 상품코드 : ${detailPageDTO.getPrdtCode()}</td>
      </tr>
    </thead>
    <tbody>
    
      <tr>
        <td width="90px" height="80px" style="font:bold 20px; color:#686868;">판매가</td>
        <td align="left">
        <font size="5">
        <fmt:formatNumber type="number" value="${detailPageDTO.getPrdtPrice()}" pattern="#,###"/></font>원
        <div align="right">
        <button type="button" class="btn btn-outline-secondary btn-sm" id="smartCal" style="padding:1px 1px; margin:right;">스마트 계산기</button>
        </div>
        </td>
      </tr>
      
      <tr>
        <td width="90px" height="80px" style="font:bold 20px; color:#686868;">배송비</td>
        <td align="left">${detailPageDTO.getPrdtDeliveryPrice()}</td>
      </tr>
      
      <tr>
        <td width="90px" height="80px" style="font:bold 20px; color:#686868;">사이즈</td>
        <td align="left">
        
        <table id="table">
        <tr><td id="btn" width="600px" align="center">
        </td></tr>
        </table>
        
        </td>
      </tr>
      
      <tr>
        <td width="90px" height="50px" style="font:bold 20px; color:#686868;">추가구매</td>
        <td align="left">
        
        <select class="form-control clgfocus" >
	      	<option value="">선택안함</option>
	      	<option value="">버진 폼</option>
	      	<option value="">스타키즘</option>
	      	<option value="">파워프로텍트</option>
	        <option value="">메모리폼</option>
       	</select>
      
        </td>
      </tr>
      
      
    </tbody>
  </table>
	  <div style="text-align:center;">
	  
	  <table class="table" style="width:500px;" id="selectTable" align="center"></table>
	  <h5 style="float:right; font-weight:bold;">총 결제금액 <span style="font-weight:bold; font-size:25pt; color:red;" id="prdtPrice">0</span>원</h5><br><br>
	  
	  
	  <button type="button" class="btn btn-outline-danger"><h5>찜하기</h5></button>&emsp;
	  <button type="button" class="btn btn-outline-danger"><h5>장바구니</h5></button>&emsp;
	  <button type="button" class="btn btn-danger"><h5>바로구매</h5></button>
	  </div>
</td>

<tr>
<td colspan="2">
<br><br>
<!-- 아래 한줄 -->
<div style="border:1px solid #AAAAAA; width:90%; margin:auto;"></div>

<!-- 상품정보 -->
<br><br>
	<ul class="nav nav-tabs nav-justified" id="position1">
	    <li class="nav-item">
	      <a class="nav-link active" href="#position1" style="color:black;">상품정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position2" style="color:#AAAAAA;">상품후기(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position3" style="color:#AAAAAA;">상품 Q&A(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position4" style="color:#AAAAAA;">배송 / 교환 / 교환 / AS안내</a>
	    </li>
	  </ul>
		<img src="../image/page/product/${detailPageDTO.getPrdtDetailImage1()}" width="1000px" height="800px">
	    <img src="../image/page/product/${detailPageDTO.getPrdtDetailImage2()}" width="1000px" height="800px">
	    <img src="../image/page/product/${detailPageDTO.getPrdtDetailImage3()}" width="1000px" height="800px">
		
		<table class="table table-striped" id="guideTable">
		    <tbody>
		      <tr>
		        <td>성별</td>
		        <td>${detailPageDTO.getPrdtGender()}</td>
		        <td>소재</td>
		        <td>상세페이지 참조</td>
		      </tr>
		      
		      <tr>
		        <td>색상</td>
		        <td>${detailPageDTO.getPrdtColor() }</td>
		        <td>치수</td>
		        <td>
		        <c:forEach var="i" begin="0" step="5" end="30">
		        ${detailPageDTO.getPrdtSize()+i}
		        <c:if test="i ne 30">/</c:if>
		        </c:forEach>
		        </td>
		      </tr>
		      
		      <tr>
		        <td>굽높이</td>
		        <td>상세페이지 참조</td>
		        <td>제조자</td>
		        <td>상세페이지 참조</td>
		      </tr>
		      
		      <tr>
		        <td>제조국</td>
		        <td>없음</td>
		        <td>수입자</td>
		        <td></td>
		      </tr>
		      
		      <tr>
		        <td>A/S 책임자와 전화번호</td>
		        <td>ABCD마트 A/S 담당자 : 000-123-1234</td>
		        <td>제조년월</td>
		        <td>상세페이지 참조</td>
		      </tr>
		      
		      <tr>
		        <td>특이사항</td>
		        <td></td>
		        <td>품질보증기준</td>
		        <td>본 제품은 정부 고시 소비자 분쟁해결 기준에 의거하여 보상해드립니다.(품질 보증기간 : 구입별로부터 6개월이내)</td>
		      </tr>
		      
		      <tr>
		        <td>사이즈 TIP</td>
		        <td></td>
		        <td>소재별 관리방법</td>
		        <td>가벼운 오염물이 물들었을 때에는 부드러운 솔로 털어내주시기 바랍니다. 물세탁이 되지 않는 소재입니다. 물에 젖지 않게 해주시기 바라며, 만약에 물에 젖었을 떄에는 마른 걸레로 닦아주시기 바랍니다.</td>
		      </tr>
		    </tbody>
		  </table>
		  <h6 style="color:#AAAAAA;">전자상거래 등에서의 상품정보제공 고시에 따라 작성되었습니다.</h6>
<!-- 상품후기 -->
<br><br><br><br>
	<ul class="nav nav-tabs nav-justified" id="position2">
	    <li class="nav-item">
	      <a class="nav-link" href="#position1" style="color:#AAAAAA;">상품정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link active" href="#position2" style="color:black;">상품후기(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position3" style="color:#AAAAAA;">상품 Q&A(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position4" style="color:#AAAAAA;">배송 / 교환 / 교환 / AS안내</a>
	    </li>
	  </ul>
	  <br>
	  <img src="../image/page/basic/상품후기.PNG" width="250px" height="160px">
		<ul>
			<li id="guideAfter">상품 후기를 작성해주시면 발도장 10개를 드립니다.</li>
			<li id="guideAfter">상품 후기를 작성해주시면 최대 2,000 포인트를 적립해드립니다.</li>
			<li id="guideAfter">후기 포인트는 등록일 이후 최대 3일 이내에 적립해드립니다. (주말 및 공휴일 제외)</li>
			<li id="guideAfter">용품 및 액세서리에 대한 후기는 포인트 지급이 제외됩니다.</li>
			<li id="guideAfter">구매 확정일로부터 30일이 지난 후 등록된 후기는 포인트 지급이 제외됩니다.</li>
			<li id="guideAfter">직접 촬영한 사진이 아닐 경우 포토 후기에 대한 포인트 지급이 제외됩니다.</li>
		</ul>
		
		<br><br>
		<nav class="navbar navbar-expand-sm bg-light navbar-light">
		  <ul class="navbar-nav">
		    <li class="nav-item active">
		      <a class="nav-link" href="javascript:void(0)" style="font-size:11px;">전체</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="javascript:void(0)" style="font-size:11px;">일반</a>
		    </li>
		  </ul>
		</nav>
		
		<table id="afterTable" class="table table-striped" style="font-size:11px; text-align:center;">
		    <thead>
		      <tr>
		        <th width="300px">제목</th>
		        <th width="80px">구매처</th>
		        <th width="80px">상품만족도</th>
		        <th width="80px">작성자</th>
		        <th width="80px">작성일</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td colspan="5" align="center">작성된 후기가 없습니다.</td>
		      </tr>
		    </tbody>
		  </table>
		  
		  <button type="button" class="btn btn-danger btn-sm" style="float:right;">상품후기 작성</button>
<!-- 상품 Q&A -->
	<br><br><br><br>
	<ul class="nav nav-tabs nav-justified" id="position3">
	    <li class="nav-item">
	      <a class="nav-link" href="#position1" style="color:#AAAAAA;" id="tab1">상품정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position2" style="color:#AAAAAA;" id="tab2">상품후기(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link active" href="#position3" style="color:black;" id="tab3">상품 Q&A(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position4" style="color:#AAAAAA;" id="tab4">배송 / 교환 / 교환 / AS안내</a>
	    </li>
	  </ul>
	  
	  <br><br>
	 <ul>
		<li id="guideAfter">단순 상품비방, 상업적인 내용, 미풍양속 위반, 게시판의 성격에 맞지 않는 글은 통보 없이 삭제될 수 있습니다.</li>
		<li id="guideAfter">오프라인 매장 재고현황 문의는 ‘전국오프라인매장’ 정보를 참고하시어 해당 매장으로 문의하시면 좀 더 정확한 확인이 가능합니다.</li>
		<li id="guideAfter">주문/배송/반품 및 AS 등 기타 문의는 1:1 상담문의(마이페이지>쇼핑수첩>나의상담)에 남겨주시기 바랍니다.<br>
											(상품 자체에 대한 문의가 아닌 주문/배송/반품 및 AS 등의 기타문의를 작성하실 경우 나의상담 메뉴로 글이 이동될 수 있습니다.)
		</li>
	</ul>
	
	<table class="table table-striped" style="font-size:11px; text-align:center;">
		<thead>
			<tr>
				<th width="80px">답변상태</th>
				<th width="80px">문의유형</th>
				<th width="300px">제목</th>
				<th width="80px">작성자</th>
				<th width="80px">작성일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="5" align="center">작성된 후기가 없습니다.</td>
			</tr>
		</tbody>
	</table>
	
	<button type="button" class="btn btn-danger btn-sm" style="float:right;">Q&A 작성</button>


	<!-- 배송 등 -->
	<br><br><br><br>
	<ul class="nav nav-tabs nav-justified" id="position4">
	    <li class="nav-item">
	      <a class="nav-link" href="#position1" style="color:#AAAAAA;" id="tab1">상품정보</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position2" style="color:#AAAAAA;" id="tab2">상품후기(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#position3" style="color:#AAAAAA;" id="tab3">상품 Q&A(0)</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link active" href="#position4" style="color:black;" id="tab4">배송 / 교환 / 교환 / AS안내</a>
	    </li>
	  </ul>
	  
	  <br>
	  <table class="table table-bordered" style="font-size:12px; color:#282828">
	    <tbody>
	    
	      <tr>
	        <td>
	        	<img src="../image/page/basic/이모티콘1.PNG" width="30px" height="30px"><strong style="font-size:13px;">배송안내</strong>	
	        	<h6 style="font-size:13px;">배송비</h6>
	        	<ul style="padding:0 20px;">
					<li>2만원 미만 구매 시 2500원</li>
					<li>2만원 이상 구매 시 전액무료 (제주도 및 기타 도선료 추가지역 포함)</li>
				</ul>
				<h6 style="font-size:13px;">평균 배송일</h6>
				<ul style="padding:0 20px;">
					<li>평일 4시 이전 주문 당일 출고됩니다. (온라인 발송에 한함)</li>
					<li>결제 완료 후 평균 2일 소요됩니다. (주말 및 공휴일 제외)</li>
					<li>택배사의 사정에 따라 다소 지연될 수 있습니다. (KG통운 1588-0001)</li>
					<li>오프라인 매장 발송은 2~3일 더 소요될 수 있습니다.</li>
				</ul>
	        </td>
	        
	        <td>
	        	<img src="../image/page/basic/이모티콘2.PNG" width="30px" height="30px"><strong style="font-size:15px;">온.오프라인 교환 / 반품(환불) / AS 통합서비스</strong>
	        	<h6 style="font-size:13px;">ABCD-MART는 온라인ㆍ오프라인 매장 구분 없이 교환/반품/AS 접수가 가능합니다.</h6>
	        	<ul style="padding:0 20px;">
					<li>교환은 사이즈 교환만 가능합니다.</li>
					<li>매장에 방문하여 접수하시면 택배비 무료입니다.(단품 기준 10개 미만에 한함)</li>
					<li>매장에 방문하여 접수하실 경우 구매내역서를 지참하여 주시기 바랍니다.</li>
					<li>매장에서 반품 접수 하신 경우 환불은 온라인 담당자 확인 후 처리됩니다.<br>
							(확인 기간 2-3일 소요 / 결제하신 결제수단으로 환불)</li>
				</ul>
	        	<br>
	        	※ 매장에 방문하여 반품/교환 접수 시 최대 10개 미만 상품만 접수 가능합니다. <br>
					(대량 반품/교환은 온라인 사이트를 통해서 접수해주시기 바랍니다. <br>
					단순 변심일 경우 택배비 고객 부담)<br>
					<br>
					<button type="button" class="btn btn-outline-secondary btn-sm" style="padding:0;">오프라인 매장 확인하기></button>
	        </td>
	      </tr>
	      
	      <tr>
	        <td>
	        <img src="../image/page/basic/이모티콘3.PNG" width="30px" height="30px"><strong style="font-size:13px;">교환ㆍ반품(환불) 접수 시 주의사항</strong>	<br>
	        - 제품을 받으신 날부터 7일 이내(상품불량인 경우 30일)에 접수해주시기 바랍니다.<br>
	        - 접수 시 왕복 택배비가 부과됩니다. <br>
  			(단, 상품 불량, 오배송의 경우 택배비를 환불해드립니다.)<br>
  			- 접수 후 14일 이내에 상품이 반품지로 도착하지 않을 경우 접수가 취소됩니다.<br>
  			(배송 지연 제외)<br><br>
  			
  			<h6 style="font-size:13px;">교환/반품(환불)이 불가능한 경우</h6>
  			<ul style="padding:0 20px;">
				<li>신발/의류를 외부에서 착용한 경우</li>
				<li>상품이 훼손된 경우</li>
				<li>제품에 붙어있는 택(Tag)을 분실/훼손한 경우</li>
				<li>브랜드 박스 분실/훼손된 경우</li>
			</ul>
  			<h6 style="font-size:13px;">교환/반품(환불) 시 박스 포장 예</h6>
  			<ul style="padding:0 20px;">
				<li>브랜드 박스의 훼손이 없도록 택배 박스 및 타 박스로 포장하여 발송해주시기 바랍니다.</li>
			</ul>
			
			<img src="../image/page/basic/포장1.PNG" width="480px" height="200px">
	        </td>
	        
	        <td>
	        <img src="../image/page/basic/이모티콘4.PNG" width="30px" height="30px"><strong style="font-size:13px;">교환ㆍ반품(환불) 요령</strong>
	        <button type="button" class="btn btn-danger btn-sm" style="padding:1px 1px; float:right;">교환/반품(환불) 신청</button>
	        
	        <h6 style="font-size:13px;">교환/반품(환불) 처리 순서</h6>
	        <div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
	        	<strong style="font-size:13px;">01.반품/교환접수</strong><br>
	        	온라인 쇼핑몰에 로그인 후 마이 페이지 > 쇼핑내역 > 반품/교환/AS > 반품/교환 신청
	        </div>
        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
        	
        	 <div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
	        	<strong style="font-size:13px;">02. 접수완료</strong><br>
	        	마이페이지 > 쇼핑내역 > 반품/교환/AS > 반품현황 또는 교환 현황 > 접수확인 상태 확인
	        </div>
        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
        	
        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
	        	<strong style="font-size:13px;">03. ABCD-MART로 상품 발송</strong><br>
	        	주소 : 서울특별시 종로구 묘동 돈화문로 26 단성사쥬얼리센터 ABCD_MART
	        </div>
        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
        	
        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
	        	<strong style="font-size:13px;">04. ABCD-MART에 상품도착</strong><br>
	        	교환 : 교환발송 / 반품 : 환불처리 → 환불완료<br>
				결제사(카드, 은행) 영업일 기준 3~4일 후 환불확인 가능
	        </div>
	        
	        <br><br><br>
	        <strong style="font-size:13px;">교환/반품(환불) 배송비 안내</strong>
	        <ul style="padding:0 20px;">
				<li>왕복 택배비 : 최초 배송비 (2500원) + 반품 배송비(2500원) = 총 5,000원 이 부과됩니다. <br>
						(선결제 또는 환불금액에서 차감 선택)</li>
				<li>단, 보내주신 상품이 불량 또는 오배송으로 확인 될 경우 택배비를 환불해드립니다. <br>
						(선택하신 결제수단으로 택배비 환불)</li>
				<li>지정택배(대한통운) 외 타택배 이용 시 추가로 발생되는 금액은 고객님께서 부담해주셔야 합니다.</li>
			</ul>
			<h6 style="font-size:13px;">※ 대한통운 자동 회수접수 방법 : 교환/반품 접수 시 접수처를 온라인으로 선택 후</h6>
			<h6 style="font-size:13px; text-align:center;">회수여부 ‘예’</h6>
	      	</td>
	      </tr>
	      
	      <tr>
	      	<td colspan="2">
	      	<img src="../image/page/basic/이모티콘5.PNG" width="25px" height="20px"><strong style="font-size:13px;">AS불가안내</strong><br>
	      	 - 에어손상의 경우 심의 및 수선이 불가합니다.<br>
	      	 - 양말소재로 생긴 힐컵주변 보풀현상은 심의가 불가합니다.<br>
	      	  - 신발 세탁으로 생긴 이염은 심의 및 수선이 불가합니다.<br>
	      	</td>
	      </tr>
	      
	      <tr>
	      	<td colspan="2">
	      	<img src="../image/page/basic/이모티콘6.PNG" width="25px" height="25px"><strong style="font-size:13px;">AS(수선/심의) 요령</strong>
	      	<button type="button" class="btn btn-danger btn-sm" style="padding:1px 1px; float:right;">A/S 신청</button><br>
	      	- 오프라인 매장에서도 접수 가능합니다. (매장 방문 접수 시 택배비 무료)<br>
			- 외부 착화 후 발견된 상품 이상에 대한 심의/수선 요청은 온라인 쇼핑몰 마이 페이지>반품/교환/AS 또는 고객센터를 통해 접수해주시기 바랍니다.<br>
			- 접수 없이 상품을 ABCD-MART로 보내실 경우 확인이 어려워 반송되거나 처리가 늦어질 수 있습니다.<br>
			- 접수 완료 후 15일 이내 상품 도착하지 않을 경우 접수가 취소 됩니다.<br>
			- 매장에서 구매하신 상품의 처리절차를 마이페이지>반품/교환/AS 에서 확인 할 수 있습니다.(멤버십 회원에 한함)
			<br><br>
			
			<table frame="hsides" rules="rows">
		      		<tr>
		      			<td>
		      			<h6 style="font-size:13px;">수선 AS</h6>
			     		<ul style="padding:0 20px;">
							<li>수선을 원하는 내용을 자세하게(사진 첨부 가능) 기재해주면 처리 시 도움이 될 수 있습니다.</li>
							<li>수선 접수 시 왕복 택배비(5000원)가 부과됩니다.</li>
							<li>지정택배(KG통운) 외 타택배 이용 시 추가로 발생되는 금액은 고객님께서 부담해주셔야 합니다.</li>
						</ul>
						<button type="button" class="btn btn-outline-secondary btn-sm" style="padding:0;">수선예상비용 자세히 보기 ></button><br><br>
						
		      			
						<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">01. AS 접수</strong><br>
						온라인 쇼핑몰에 로그인 마이 페이지 > 쇼핑내역 > 반품/교환/AS 또는
						고객센터를 통해 접수 > AS신청 (1588-0000 / 080-000-0000)
				        </div>
			        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
			        	
			        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">02. 접수완료</strong><br>
						마이페이지 > 쇼핑내역 > 반품/교환/AS > AS신청 > 접수확인 상태 확인
				        </div>
			        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
			        	
			        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">03. ABCD-MART로 상품 발송</strong><br>
						주소 : 서울특별시 종로구 묘동 돈화문로 26 단성사쥬얼리센터 ABCD_MART<br>
		     			&emsp;&emsp; 온라인 AS담당자 앞
				        </div>
			        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
			        	
			        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">04. ABCD-MART에 상품도착 브랜드사 또는 수선업체 접수</strong><br>
						수선 기간은 총 2주 정도 소요 / 수선 완료 시 개별 유선 통보<br>
						(수선 내용에 따라 수선 비용이 청구될 수 있습니다.)
				        </div>
		      			</td>
		      			
		      			<td>
		      			<h6 style="font-size:13px;">심의 AS</h6>
			     		<ul style="padding:0 20px;">
							<li>불량으로 확인되는 내용을 자세하게(사진 첨부 가능) 기재해주시면 처리 시 도움이 될 수 있습니다.</li>
							<li>상품 불량으로 인한 심의 접수 시 왕복 택배비는 ABCD-MART에서 부담합니다. <br>
									(KG통운 택배 이용 권장)</li>
						</ul>
						<br><br>
						
						<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">01. AS 접수</strong><br>
						온라인 쇼핑몰에 로그인 마이 페이지 > 쇼핑내역 > 반품/교환/AS 또는<br>
						고객센터를 통해 접수 > AS신청 (1588-0000 / 080-700-0000)
				        </div>
			        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
			        	
			        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">02. 접수완료</strong><br>
						마이페이지 > 쇼핑내역 > 반품/교환/AS > AS신청 > 접수확인 상태 확인
				        </div>
			        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
			        	
			        	<div style="border:1px solid #AAAAAA; width:400px; height:100px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">03. ABCD-MART로 상품 발송</strong><br>
						주소 : 서울특별시 종로구 묘동 돈화문로 26 단성사쥬얼리센터 ABCD_MART<br>
		     			&emsp;&emsp; 온라인 AS담당자 앞
				        </div>
			        	<h6 style="color:#AAAAAA; text-align:center">▽</h6>
			        	
			        	<div style="border:1px solid #AAAAAA; width:400px; height:120px; padding:10px 10px 10px 10px; margin:auto;">
			        	<strong style="font-size:13px;">04. ABCD-MART에 상품도착 브랜드사 또는 수선업체 접수</strong><br>
						심의 기간은 총 2주 정도 소요 / 결과 확인 후 개별 유선 통보<br>
						불량 판정 시 무상 교환 또는 환불 처리 / 불량이 아닐 경우 유선 안내 후 상품 반송<br>
						(2차 심의 접수 가능)<br>
				        </div>
		      			</td>
		      		</tr>
		      	</table>
	      	</td>
	      </tr>
	    </tbody>
 	 </table>
	  
	  
	  
	<br><br><br><br>
	
	
</td>
</tr>
</table>
</div><!-- 전체 DIV컨테이너 -->



</body>
</html>