<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
</style>
 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  

<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 



</head>
<body>
<input type="text" id="startDate"> &ensp;~&ensp;
<input type="text" id="endDate">


</body>
<script>

$(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']); 
    $( "#startDate" ).datepicker({
    	 showOtherMonths: true, //빈 공간에 현재월의 앞뒤월의 날짜를 표시
    	 showMonthAfterYear:true, //년도 먼저 나오고, 뒤에 월 표시
    	 buttonImage: "../image/date_icon.png",
    	 showOn: "both",
    	 buttonImageOnly: true,
         changeMonth: true, 
         changeYear: true,
         nextText: '다음 달',
         prevText: '이전 달', 
         dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
         dateFormat: "yy-mm-dd",
         maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
         onClose: function( selectedDate ) {    
              //시작일(startDate) datepicker가 닫힐때
              //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
             $("#endDate").datepicker( "option", "minDate", selectedDate );
         }    

    });

    
    
    $( "#endDate" ).datepicker({
    	showOtherMonths: true, //빈 공간에 현재월의 앞뒤월의 날짜를 표시
    	showMonthAfterYear:true, //년도 먼저 나오고, 뒤에 월 표시
    	buttonImage: "../image/date_icon.png",
    	showOn: "both",
    	buttonImageOnly: true,
        changeMonth: true, 
        changeYear: true,
        nextText: '다음 달',
        prevText: '이전 달', 
        dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dateFormat: "yy-mm-dd",
        maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
        onClose: function( selectedDate ) {    
            // 종료일(endDate) datepicker가 닫힐때
            // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
            $("#startDate").datepicker( "option", "maxDate", selectedDate );
        }    

   });    

});
</script>


</html>