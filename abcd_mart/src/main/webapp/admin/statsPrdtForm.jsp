<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3 style="margin-left:400px">상품 통계</h3>
			
				<table class="orderDepositForm basicTable" border="1" cellpadding="3" frame="hsides" rules="none">

				<tbody>
				<tr>
					<th width="150px" height="70px">검색일</th>
					<td width="700px">
						<input type="date" id="fromDate" name="fromDate"> &ensp;~&ensp;
						<input type="date" id="toDate" name="toDate">
					</td>
				</tr>			

				<tr>
					<th align="center" height="70px">검색순</th>
					<td width="700px">
						<input type="radio" name="bestSales" value="bestSales" checked="true">인기상품순&ensp; 
						<input type="radio"  name="newSales" value="newSales">신상품순&ensp; 
					</td>
				</tr>
				
			</tbody>
		</table>

	<div style="margin-left:400px; margin-bottom:50px">
	<br>
		<button type="button" class="btn btn-dark bg-red" id="statsPrdt_Btn">검  색</button>

	</div>
	
	<table class="orderDepositForm basicTable2" id="basicTable2" border="1" cellpadding="3" frame="hsides" rules="none">
		<tr>
			<th width="150px" height="80px">상품코드</th>
			<th width="250px">이름</th>
			<th width="150px">브랜드</th>
			<th width="200px">사이즈</th>
			<th width="200px">가격</th>
			<th width="200px">개수</th>
		</tr>
		<tbody id="table2Tbody"></tbody>
	</table>

	

<!-- 데이터피커 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>

//오늘 날짜를 출력
$("#today").text(new Date().toLocaleDateString());

//datepicker 한국어로 사용하기 위한 언어설정
$.datepicker.setDefaults($.datepicker.regional['ko']); 

// 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
// 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

//시작일.
$('#fromDate').datepicker({
    showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
    buttonImage: "../image/date_icon.png", // 버튼 이미지
    buttonImageOnly : true,             // 버튼 이미지만 표시할지 여부
    buttonText: "날짜선택",             // 버튼의 대체 텍스트
    dateFormat: "yy-mm-dd",             // 날짜의 형식
    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
    maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 텍스트
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 Tooltip 텍스트
    dayNamesMin: ['일','월','화','수','목','금','토'], //달력의 요일 부분 텍스트
    dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'], //달력의 요일 부분 Tooltip 텍스트

    
    onClose: function( selectedDate ) {    
        // 시작일(fromDate) datepicker가 닫힐때
        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
        $("#toDate").datepicker( "option", "minDate", selectedDate );
    }                
});

//종료일
$('#toDate').datepicker({
    showOn: "both", 
    buttonImage: "../image/date_icon.png", 
    buttonImageOnly : true,
    buttonText: "날짜선택",
    dateFormat: "yy-mm-dd",
    changeMonth: true,
    maxDate: 0, // 오늘 이전 날짜 선택 불가
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 텍스트
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 Tooltip 텍스트
    dayNamesMin: ['일','월','화','수','목','금','토'], //달력의 요일 부분 텍스트
    dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'], //달력의 요일 부분 Tooltip 텍스트

    onClose: function( selectedDate ) {
        // 종료일(toDate) datepicker가 닫힐때
        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
    }                
});


</script>
	
	