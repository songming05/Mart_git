 window.onload= function(){
	 if($('#tel1').val()=='010'){
		 document.getElementById("buyerTel1").options[0].selected = true;
	 }else if($('#tel1').val()=='011'){
		 document.getElementById("buyerTel1").options[1].selected = true;
	 }else if($('#tel1').val()=='016'){
		 document.getElementById("buyerTel1").options[2].selected = true;
	 }

 }

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
	        
	        document.getElementsByName('dlvyZipcode')[0].value = data.zonecode;
            document.getElementsByName("dlvyAddr1")[0].value = addr;
            document.getElementsByName("dlvyAddr2")[0].focus();
           
	    }
	}).open();	
	
}

function checkPostClose(zipcode, address){

	opener.document.getElementById('dlvyZipcode').value =zipcode;
	opener.document.getElementById('dlvyAddr1').value =address;
	window.close();
	opener.document.getElementById('dlvyAddr2').focus();
} 

function checkCouponClose(cpSeq, cpSale){ 

	opener.document.getElementById('couponNum').value =cpSeq;
	opener.document.getElementById('coupon').value =cpSale;
	opener.document.getElementById('coupon1').value=cpSale;
	opener.document.getElementById('couponIn').innerHTML=cpSale;
	
	testChange(cpSale);
	$('#coupon').change();
	window.close();


} 



//결제 창 누를시 , 유효성 검사 
function goPayment(){

	
	if($('input[name=dlvyName]').val()==''){
		document.getElementsByName("dlvyName")[0].focus();
		swal('이름을 입력해주세요');
		
	}else if($('input[name=dlvyTel2]').val() ==''){
		document.getElementsByName("dlvyTel2")[0].focus();
		swal('휴대폰 번호를 입력해주세요');
		
	}else if($('input[name=dlvyTel3]').val() ==''){
		document.getElementsByName("dlvyTel3")[0].focus();
		swal('휴대폰 번호 뒷자리를 입력해주세요');
	
	}else if($('input[name=rcvrAddr]').val() ==''){
		document.getElementsByName("rcvrAddr")[0].focus();
		swal('주소를 입력해주세요');
		
	}else if($('input[name=dlvyAddr2]').val() ==''){
		document.getElementsByName("dlvyAddr2")[0].focus();
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
		//$('input[name="radioTxt"]:checked' 체크박스 체크된 값 가져오기
		
		if(confirm("결제를 진행 하시겠습니까?")){
			$('#buyerTel1').attr('disabled',false);
			$('input[name=coupon]').attr('disabled',false);
			$('input[name=point]').attr('disabled',false);
			
			$('#totalPrice').val($('.total_pay td span').text().replace(',',''));
			$('#payChoice').val($('input[name="payChoice1"]:checked').val());

					
			$('#orderForm').submit();
			swal("결제가 완료되었습니다");	
			
			
			
		}else return;
		
	}
	
}

function testChange(cpSale) {
	var oldtotal = opener.document.getElementById('orderPrice1').value;
	var dliv = opener.document.getElementById('dliv').value;
	var newtotal = (oldtotal*1)+(dliv*1)-(cpSale*1);
	//alert(oldtotal);
	
	//상품목록에 가격변경
	opener.document.getElementById('discountIn').innerHTML=cpSale+"원";
	opener.document.getElementById('newTotal').innerHTML=newtotal+"원";
	//opener.document.getElementById('totalAmtArea').innerHTML=cpSale+"원";
	
	//
	opener.document.getElementById('discountCp').innerHTML=cpSale;
	opener.document.getElementById('finalTotalOrderAmt').innerHTML=newtotal;
	opener.document.getElementById('totalPrice').value = newtotal;

	}


/*   
 * #discountIn{
 * color: #000000;
    font-weight: bold;
    font-size: 22px;
    }
	*/


/*주문 고객 정보  체크박스 컨트롤 */
$(document).ready(function(){
	
	
	$('#or_namech').click(function(){
		if($('input:checkbox[name=changeBuyerInfo]').is(":checked")){
			$('#or_name,input[name=buyerTel2],input[name=buyerTel3],input[name=buyerEmail1]').removeAttr("readonly");
			$('#buyerTel1').attr('disabled',false);
			
		}else{
			$('#or_name,input[name=buyerTel2],input[name=buyerTel3],input[name=buyerEmail1]').attr("readonly",true);
			$('#buyerTel1').attr('disabled',true);
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
		$('input[name=dlvyName]').val($('input[name=buyerName]').val())
		$('input[name=dlvyTel2]').val($('input[name=buyerTel2]').val());
		$('input[name=dlvyTel3]').val($('input[name=buyerTel3]').val());
	});
	
	$('#or_na2').click(function(){
		$('input[name=dlvyName],input[name=dlvyTel2],input[name=dlvyTel3').val('');

	});
	
	/*최근배송지*/
	$('#or_na3').click(function(){
		
		window.open("/abcd_mart/order_pay/orderAddressList.do","","width=650px height=700px");
		
		
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
	
	
	/*$('#couponList').click(function(){
		window.open("/abcd_mart/order_pay/order_CouponPage.do","","width=650px height=700px");
		
	});*/
	
	$('.tableA').on('click','#couponList',function(){
		if($('#coupon').val() =='')
			window.open("/abcd_mart/order_pay/order_CouponPage.do","","width=650px height=700px");
		else 
			swal('쿠폰은 한번만 사용가능합니다');
	});
	
	
	
	
});