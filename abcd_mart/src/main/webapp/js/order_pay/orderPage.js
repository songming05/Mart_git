
//배송 주소 입력
function popupSearchPostCode(){
	new daum.Postcode({
	    oncomplete: function(data) {
	        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	        // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	        var addr ='';
	        var extraAddr ='';
	        
	        if(data.userSelectedType=='R'){
	        	addr = data.roadAddress;
	        }else{
	        	addr = data.jibunAddress;
	        }
	        
	        document.getElementsByName('rcvrPostNum')[0].value = data.zonecode;
            document.getElementsByName("rcvrAddr")[0].value = addr;
            document.getElementsByName("rcvrDtlAddr")[0].focus();
           
	    }
	}).open();	
	
}

//결제 창 누를시 , 유효성 검사 
function goPayment(){
	if($('input[name=rcvrName]').val()==''){
		document.getElementsByName("rcvrName")[0].focus();
		swal('이름을 입력해주세요');
		
	}else if($('input[name=rcvrHdphnNum2]').val() ==''){
		document.getElementsByName("rcvrHdphnNum2")[0].focus();
		swal('휴대폰 번호를 입력해주세요');
		
	}else if($('input[name=rcvrHdphnNum3]').val() ==''){
		document.getElementsByName("rcvrHdphnNum3")[0].focus();
		swal('휴대폰 번호 뒷자리를 입력해주세요');
	
	}else if($('input[name=rcvrAddr]').val() ==''){
		document.getElementsByName("rcvrAddr")[0].focus();
		swal('주소를 입력해주세요');
		
	}else if($('input[name=rcvrDtlAddr]').val() ==''){
		document.getElementsByName("rcvrDtlAddr")[0].focus();
		swal('상세 주소를 입력해주세요');
	
	}else if($('#agreementCheck').is(":checked")==false){
		document.getElementById("cbOrderClause").focus();
		swal("개인정보 수집/제공에 동의에 체크를 눌러주십시오");
		
	}else if(  $('#pymntMeansCode01').is(":checked")==false 
			&& $('#pymntMeansCode02').is(":checked")==false
			&& $('#pymntMeansCode03').is(":checked")==false 
			&& $('#pymntMeansCode04').is(":checked")==false
			&& $('#pymntMeansCode07').is(":checked")==false){
		
		swal("결제수단을 선택해주십시오")
	
		
	}else if($('#cbOrderClause').is(":checked")==false){
		swal("구매에 동의를 해주십시오");
	
	
	}else{
		
		if(confirm("결제를 진행 하시겠습니까?")){
			//location.href="";
			swal("결제가 완료되었습니다");
			
		}else return;
		
	}
	
}




/*주문 고객 정보  체크박스 컨트롤 */
$(document).ready(function(){
	$('#or_namech').click(function(){
		if($('input:checkbox[name=changeBuyerInfo]').is(":checked")){
			$('#or_name,input[name=buyerHdphnNum2],input[name=buyerHdphnNum3],input[name=buyerMailAddress1]').removeAttr("readonly");
		}else{
			$('#or_name,input[name=buyerHdphnNum2],input[name=buyerHdphnNum3],input[name=buyerMailAddress1]').attr("readonly",true);
		}
	});

/*배송지 정보 라디오박스 컨트롤 */
	$('#or_ch1').click(function(){
		$('tbody .dlvyType01').css('display','table-row');
		$('tbody .dlvyType03').css('display','none');
		$('tbody tr td .dlvyType.dlvyType01 , .btn_sType1.ml5.dlvyType.dlvyType01').css('display','inline-block');
		
	});
	
	$('#or_ch3').click(function(){
		$('tbody .dlvyType01').css('display','none');
		$('tbody .dlvyType03').css('display','table-row');
	});
	
	
	$('#or_ch2').click(function(){
		$('tbody .dlvyType01 ,tbody .dlvyType03').css('display','none');
	});
	
	/* 배송지 정보 안의 [주문자와 동일 , 신규입력 , 최근배송지] 라디오 박스 컨트롤  */
	$('#or_na1').click(function(){
		$('input[name=rcvrName]').val($('input[name=buyerName]').val())
		$('input[name=rcvrHdphnNum2]').val($('input[name=buyerHdphnNum2]').val());
		$('input[name=rcvrHdphnNum3]').val($('input[name=buyerHdphnNum3]').val());
	});
	
	$('#or_na2').click(function(){
		$('input[name=rcvrName],input[name=rcvrHdphnNum2],input[name=rcvrHdphnNum3').val('');

	});
	
	$('#or_na3').click(function(){
	});
	
	
	/*결제 수단 선택  라디오 박스 컨트롤*/
	$('#pymntMeansCode01').click(function(){
		$('.last_pay.pymntMeansCode02').css('display', 'none');
		
	});
	
	$('#pymntMeansCode02').click(function(){
		$('.last_pay.pymntMeansCode02').css('display', 'table-row');
		
	});
	
	$('#pymntMeansCode03').click(function(){
		$('.last_pay.pymntMeansCode02').css('display', 'none');
			
	});
	
	$('#pymntMeansCode04').click(function(){
		$('.last_pay.pymntMeansCode02').css('display', 'table-row');
		
	});
	
	$('#pymntMeansCode07').click(function(){
		$('.last_pay.pymntMeansCode02').css('display', 'none');
		
	});
	
});