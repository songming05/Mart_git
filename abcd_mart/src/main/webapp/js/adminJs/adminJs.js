//$(function(){	
//		$.ajax({
//		type : 'GET',
//		url : '/abcdMVC/admin/applyFormPdt',
//		success : function(){
//				$('#lMenu_Product').css('display','block');
//			}
//		});
//});

$('#orderPayment_Btn').click(function(){
	$.ajax({
		type:'post',
		url:'/abcd_mart/admin/orderPayment',
		data : {'fromDate' : $('#fromDate').val() ,
				'toDate' : $('#toDate').val(),
				'orderSelect' : $('#orderSelect').val(),
				'orderResult' : $('#orderResult').val()	},
		dataType : 'json',
		success : function(data){
			alert(JSON.stringify(data));
			
			$( '#table2Tbody').empty();
			
			$.each(data.list, function(index, items){
			$('<tr/>').append($('<td/>',{
				align : 'center',
				text : items.orderdate
			})).append($('<td/>',{
				align : 'center',
				text :  items.orderid
			})).append($('<td/>',{
				align : 'center',
				text : items.orderpdt
			})).append($('<td/>',{
				align : 'center',
				text : items.orderpayment
			})).append($('<td/>',{
				align : 'center',
				text : items.orderprice
			})).appendTo($('#table2Tbody'));
		
			}); //each
			
			
			}
	});
});

$('#lMenu_applyPdt').click(function() {
	  $(this).css("background","red");
	}, function(){
	  $(this).css("background","white");
});



$('#applyPdt_Btn').click(function(){
	if($('#prdtMainName').val()==''){
		swal("메인 상품명(한글)을 입력해주세요.");
		$('#prdtMainName').focus();
	}else if($('#prdtMiniName').val()==''){
		swal("영어 상품명을 입력해주세요.");
		$('#prdtMiniName').focus();
	}else if($('#prdtStyleCode').val()==''){
		swal("기존 상품명을 입력해주세요.");
		$('#prdtStyleCode').focus();
	}else if($('#prdtCode').val()==''){
		swal("상품코드를 입력해주세요.");
		$('#prdtCode').focus();
	}else if($('#prdtPrice').val()==''){
		swal("가격을 입력해주세요.");
		//$('#prdtPrice').focus();
	}else if($('#prdtdeliveryPrice').val()==''){
		swal('배송비를 입력해주세요');
		//$('#prdtdeliveryPrice').focus();
	}else if($('#sizeMin').val()==''){
		swal('최소 신발사이즈를 입력해주세요');
		$('#sizeMin').focus();
	}else if($('#sizeMax').val()==''){
		swal('최대 신발사이즈를 입력해주세요');
		$('#sizeMax').focus();
	}else{
		$.ajax({
			type : 'POST',
			url : '/abcd_mart/admin2/applyPdt',
			data : { 'prdtMainName' : $('#prdtMainName').val()
				 , 'prdtMiniName' : $('#prdtMiniName').val()
				 , 'prdtStyleCode' : $('#prdtStyleCode').val()
				 , 'prdtCode' : $('#prdtCode').val()
				 , 'prdtPrice' : $('#prdtPrice').val()
				 , 'prdtdeliveryPrice' : $('#prdtdeliveryPrice').val()
				 , 'sizeMin' : $('#sizeMin').val()
				 , 'sizeMax' : $('#sizeMax').val()},
			success : function(data){
				swal({
					title: "환영합니다",
					text: "등록성공"
				}).then((value) => {
					if('${value}') location.href = "/abcd_mart/admin2/applyFormImg?prdtCode="+$('#prdtCode').val();
				});
				
				
			}//success
		});//ajax
	}
});








