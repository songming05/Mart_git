

$('#prdtManagementForm_Btn').click(function(){
	//alert($('#prdtResult').val());
	$.ajax({
		type:'post',
		url:'/abcd_mart/admin/prdtManagement',
		data:{'prdtSelect' : $('#prdtSelect').val() ,
			  'prdtResult' : $('#prdtResult').val() },
		dataType : 'json',
		success : function(data){
			//alert(JSON.stringify(data));
			
			$('#table2Tbody').empty();
			//6개넘어옴  each 돌때마다 items에 담김
			$.each(data.list , function(index, items){
				$('<tr/>').append($('<td/>',{
					align : 'center',
					html : '<a href="/abcd_mart/admin/managementModifyForm?prdtCode='+items.prdtCode
							+'"	onclick="window.open(this.href, \'재고변경\',\'width=430, height=620\');return false;" target=\'_blank\'>'
							+items.prdtCode+'</a>'

				})).append($('<td/>',{
					align : 'center',
					text : items.prdtBrand
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtColor
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtGender
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtPrice
				})).appendTo($('#table2Tbody'));
				
			});//each
			
		}//success
	});
});


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
			//alert(JSON.stringify(data));	
			$( '#table2Tbody').empty();
			
			$.each(data.list, function(index, items){
			$('<tr/>').append($('<td/>',{
				align : 'center',
				text : items.orderNum
			})).append($('<td/>',{
				align : 'center',
				text : items.orderDate
			})).append($('<td/>',{
				align : 'center',
				text :  items.orderId
			})).append($('<td/>',{
				align : 'center',
				text : items.prdtCode
			})).append($('<td/>',{
				align : 'center',
				text : items.orderSize
			})).append($('<td/>',{
				align : 'center',
				text : items.orderPrice+'원'
			})).append($('<td/>',{
				align : 'center', 
				text : items.orderPayment
			})).append($('<td/>',{
				align : 'center',
				text : items.orderDelivery
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
		swal("스타일코드를 입력해주세요.");
		$('#prdtStyleCode').focus();
	}else if($('#prdtCode').val()==''){
		swal("상품코드를 입력해주세요.");
		$('#prdtCode').focus();
	}else if($('#prdtBrand ').val()==''){
		swal('신발브랜드를 입력해주세요');
		$('#prdtBrand').focus();
	}else if($('#prdtColor').val()==''){
		swal('색상을 입력해주세요');
		$('#prdtColor').focus();
	}else if($('#prdtPrice').val()==''){
		swal("가격을 입력해주세요.");
	}else if($('#prdtDeliveryPrice').val()==''){
		swal('배송비를 입력해주세요');
	}else{
		$.ajax({
			type : 'POST',
			url : '/abcd_mart/admin/applyPdt',
			data :  { 'prdtMainName' : $('#prdtMainName').val(),
				'prdtMiniName' : $('#prdtMiniName').val(),
				'prdtStyleCode' : $('#prdtStyleCode').val(),
				'prdtCode' : $('#prdtCode').val(),
				'prdtBrand' : $('#prdtBrand').val(),
				'prdtColor' : $('#prdtColor').val(),
				'prdtGender' : $('#prdtGender').val(),
				'prdtPrice' : $('#prdtPrice').val(),
				'prdtDeliveryPrice' : $('#prdtDeliveryPrice').val(),
				'prdtCategory1' : $('#prdtCategory1').val(), 
				'prdtCategory2' : $('#prdtCategory2').val(),
				'prdtSize' : $('#prdtSize').val()},
			success : function(data){
				swal({
					title: "환영합니다",
					text: "등록성공"
				}).then((value) => {
					if('${value}') location.href = "/abcd_mart/admin/applyFormImg?prdtCode="+$('#prdtCode').val();
				});
				
				
			}//success
		});//ajax
	}
});

//수량변경
$('#prdtChangeForm_Btn').click(function(){
	$('#changeTable').css('display','block');
});

$('#prdtClose_Btn').click(function(){
	$('#changeTable').css('display','none');
});

$('#prdtChange_Btn').click(function(){
	$.ajax({
		type : 'POST',
		url : '/abcd_mart/admin/prdtChange',
		data : { 'changePrdt' : $('#changePrdt').val() ,
				 'changeSize' : $('#changeSize').val() ,
				 'changeQty' : $('#changeQty').val() },
		success : function(){
			swal({
				title: "수량변경",
				text: "변경성공"
			}).then((value) => {
				if('${value}') ;
			});
		}//success
		
	});
});

//반품신청버튼
$('#orderReturn_Btn').click(function(){
	$.ajax({
		type : 'POST',
		url : '/abcd_mart/admin/orderReturn',
		data : $('#orderReturnForm').serialize(),
		dataType:'json',
		success : function(data){

			//alert(JSON.stringify(data));
			$( '#table2Tbody').empty();
			
			$.each(data.list, function(index, items){
			$('<tr/>').append($('<td/>',{
				align : 'center',
				text : items.returnNum
			})).append($('<td/>',{
				align : 'center',
				text :  items.returnDate
			})).append($('<td/>',{
				align : 'center',
				text :  items.returnDate
			})).append($('<td/>',{
				align : 'center',
				text : items.returnId
			})).append($('<td/>',{
				align : 'center',
				text : items.returnPrdt
			})).append($('<td/>',{
				align : 'center', 
				text : items.returnQty
			})).append($('<td/>',{
				align : 'center',
				text : items.returnPrice+'원'
			})).append($('<td/>',{
				align : 'center',
				text : items.returnSts
			})).appendTo($('#table2Tbody'));
		
			}); //each
			
		}//success
	
	});
});


//반품상태변경하기
$('#orderReturnForm_Btn').click(function(){
	$('#changeTable2').css('display','block');
});

//반품상태변경+2
$('#returnChange_Btn').click(function(){
	$.ajax({
		type:'post',
		url : '/abcd_mart/admin/returnChange',
		data : { returnSts : $('#returnSts').val() ,
				 returnNum : $('#returnNum').val() },
		dataType:'json',
		success : function(data){
			swal({
				title: "반품상태",
				text: "변경성공"
			}).then((value) => {
				if('${value}') ;
			});
		}//success
	});
	
});


$('.orderSts').on('click',function(){
	
	var checkedArray = new Array();
	$('.orderSts:checked').each(function(){
		alert($(this).val());
		checkedArray.push($(this).val());
	});
});

$('#orderForm_Btn').click(function(){
	$('.orderSts:checked').each(function(){
		var orderSts_val =$(this).val();
	});
	$.ajax({
		type:'Post',
		url : '/abcd_mart/admin/order',
		data : {'checkedArray' :  checkedArray},
		success : function(data){
			
		}
		
	});
});



///매출통계
$('#statsSales_Btn').click(function(){
	var total = 0;
	
	$.ajax({
		
		type:'post',
		url:'/abcd_mart/admin/statsSales',
		data : {'fromDate' : $('#fromDate').val() ,
				'toDate' : $('#toDate').val()	},
		dataType : 'json',
		success : function(data){
			//alert(JSON.stringify(data));
			
			
			
			$( '#table2Tbody').empty();
			
			$.each(data.list, function(index, items){
				
				$('<tr/>').append($('<td/>',{
					align : 'center',
					text : items.prdtCode
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtMiniName 
				})).append($('<td/>',{
					align : 'center',
					text :  items.prdtBrand
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtSize
				})).append($('<td/>',{
					align : 'center',
					text : items.sumTotal+'원'
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtQty
				})).append($('<td/>',{
					align : 'center',
					text : items.soldQty
				})).appendTo($('#table2Tbody'));
			
				total = total + items.sumTotal;
				//alert(total);

				}); //each
				
				
				$('#statsSalesDiv').text('총 합계 : '+total+'원');
			}
			
				
				
				
	});
});


///상품통계
$('#statsPrdt_Btn').click(function(){
	$.ajax({
		
		type:'post',
		url:'/abcd_mart/admin/statsPrdt',
		data : {'fromDate' : $('#fromDate').val() ,
				'toDate' : $('#toDate').val()	},
		dataType : 'json',
		success : function(data){
			//alert(JSON.stringify(data));
			
			
			$( '#table2Tbody').empty();
			
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align : 'center',
					text : items.prdtCode
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtMiniName 
				})).append($('<td/>',{
					align : 'center',
					text :  items.prdtBrand
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtSize
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtPrice
				})).append($('<td/>',{
					align : 'center',
					text : items.soldQty
				})).appendTo($('#table2Tbody'));
			
				}); //each

			}				
	});
});

//쿠폰리스트버튼
$('#couponlistForm_Btn').click(function(){
	$.ajax({
		type:'post',
		url:'/abcd_mart/admin/couponList',
		data : {'couponSelect' : $('#couponSelect').val(),
				'couponResult' : $('#couponResult').val()	},
		dataType : 'json',
		success : function(data){
			//alert(JSON.stringify(data));	
			$( '#table2Tbody').empty();
			
			$.each(data.list, function(index, items){
			$('<tr/>').append($('<td/>',{
				align : 'center',
				text : items.id
			})).append($('<td/>',{
				align : 'center',
				text : items.coupon_seq
			})).append($('<td/>',{
				align : 'center',
				text : items.coupon_name
			})).append($('<td/>',{
				align : 'center',
				text : items.coupon_price
			})).append($('<td/>',{
				align : 'center',
				text : items.coupon_end
			})).append($('<td/>',{
				align : 'center', 
				text : items.coupon_check
			})).appendTo($('#table2Tbody'));
		
			}); //each
			
			
			}
	});
});



$('.managementModify_btn').click(function(){
	var index = $('.managementModify_btn').index(this);
	var prdtQty =  $('.prdtQty:eq('+index+')').val();
	var prdtCode = $('.prdtCode:eq('+index+')').val();
	var prdtSize = $('.prdtSize:eq('+index+')').val();
	
	
	$.ajax({
		type:'post',
		url:'/abcd_mart/admin/updateQty',
		data : {'prdtQty' : prdtQty,
				'prdtCode' : prdtCode,
				'prdtSize' : prdtSize },
		success : function(data){
			alert('수량변경 완료!');
			location.href = data;
		}
	});
	
	
});


