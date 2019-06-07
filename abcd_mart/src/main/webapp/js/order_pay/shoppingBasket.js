$(document).ready(function() {
	$.ajax({
		type:'POST',
		url:'/abcd_mart/cart/getCartList',
		dataType:'json',
		success: function(data) {
			//console.log(JSON.stringify(data));
			
//			$.each(data.list , function(index, items){
//				$('<tr/>').append($('<td/>',{
//					align : 'center',
//					text : items.prdtCode
//				})).append($('<td/>',{
//					align : 'center',
//					text : items.prdtQty
//				})).append($('<td/>',{
//					align : 'center',
//					text : items.prdtBrand
//				})).append($('<td/>',{
//					align : 'center',
//					text : items.prdtColor
//				})).append($('<td/>',{
//					align : 'center',
//					text : items.prdtGender
//				})).append($('<td/>',{
//					align : 'center',
//					text : items.prdtPrice
//				})).append($('<td/>',{
//					align : 'center',
//					text : items.prdtSize
//				})).appendTo($('#table2Tbody'));
//		}
		}
	});
});








//전체체크박스가 바뀔때마다 가격 변경
$('.all_checkbox').change(function(){
	var check_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	
	if($('.all_checkbox').is(':checked')){
		$('.choice_checkbox').prop("checked", true);
		$('.delete_checkbox').prop("checked", true);
	}else{
		$('.choice_checkbox').prop("checked", false);
		$('.delete_checkbox').prop("checked", false);
		$('.total_price_div_shippingFee').text("0");
	}
	
	var check_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	var final_price;
	
	//총 주문금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.hidden_shoesprice:eq('+i+')').val();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(Number(total_price).toLocaleString('en'));
	
	//총 할인금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.hidden_shoesdiscount:eq('+i+')').val();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(Number(total_discount).toLocaleString('en'));
	
	//배송비
	if(parseInt(total_price) < 20000) {
		shoppingFee = '2500';
	} else {
		shoppingFee = '0';
	}
	$('.total_price_div_shippingFee').text(Number(shoppingFee).toLocaleString('en'));
	
	final_price = parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee);
	
	//총 결제금액
	$('.total_price_div_total').text(Number(final_price).toLocaleString('en'));
});

//삭제 체크박스가 바뀔때마다 가격 변경
$('.delete_checkbox').change(function(){
	if($('.delete_checkbox').is(':checked')){
		$('.choice_checkbox').prop("checked", true);
		$('.all_checkbox').prop("checked", true);
	}else{
		$('.choice_checkbox').prop("checked", false);
		$('.all_checkbox').prop("checked", false);
	}
	
	var check_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	var final_price;
	
	//총 주문금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.hidden_shoesprice:eq('+i+')').val();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(Number(total_price).toLocaleString('en'));
	
	//총 할인금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.hidden_shoesdiscount:eq('+i+')').val();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(Number(total_discount).toLocaleString('en'));
	
	//배송비
	if(parseInt(total_price) < 20000) {
		shoppingFee = '2500';
	} else {
		shoppingFee = '0';
	}
	$('.total_price_div_shippingFee').text(Number(shoppingFee).toLocaleString('en'));
	
	final_price = parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee);
	
	//총 결제금액
	$('.total_price_div_total').text(Number(final_price).toLocaleString('en'));
});

//물품 별 체크박스가 바뀔때마다 가격 변경
$('.choice_checkbox').change(function(){
	var check_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	var final_price;
	
	//총 주문금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.hidden_shoesprice:eq('+i+')').val();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(Number(total_price).toLocaleString('en'));
	
	//총 할인금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.hidden_shoesdiscount:eq('+i+')').val();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(Number(total_discount).toLocaleString('en'));
	
	//배송비
	if(parseInt(total_price) < 20000) {
		shoppingFee = '2500';
	} else {
		shoppingFee = '0';
	}
	$('.total_price_div_shippingFee').text(Number(shoppingFee).toLocaleString('en'));
	
	final_price = parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee);
	
	//총 결제금액
	$('.total_price_div_total').text(Number(final_price).toLocaleString('en'));
});

//옵션변경버튼
$('.shoes_optionBtn').click(function(){
	$('.change_option').show();
});

//수량조절버튼
$('.qtyUp').click(function(){
	var index = $('.qtyUp').index(this);
	var num = $('.qtyText:eq('+index+')').val();
	num = $('.qtyText:eq('+index+')').val(num*1+1);
});
$('.qtyDown').click(function(){ 
    var index = $('.qtyDown').index(this);
    var num = $('.qtyText:eq('+index+')').val();
    num = $('.qtyText:eq('+index+')').val(num*1-1); 
    
    if($('.qtyText:eq('+index+')').val() <= 0) {
    	$('.qtyText:eq('+index+')').val('1');
    }
});

//수량변경버튼
$('.qtyButton').click(function(){
	var index = $('.qtyButton').index(this);
	var shoesbrand = $('.shoes_brand:eq('+index+')').text();
	var shoesname = $('.shoes_name:eq('+index+')').text();
	var shoessize = $('.shoes_size:eq('+index+')').text();
	var shoesqty = $('.qtyText:eq('+index+')').val();
	
	$.ajax({
		type : 'POST',
		url : '/abcd_mart/order_pay/updateQtyText',
		data : 'shoesbrand='+shoesbrand+'&shoesname='+shoesname+'&shoessize='+shoessize+'&shoesqty='+shoesqty,
		success : function(data) {
			alert("수량이 변경되었습니다.");
			location.href = data;
		}
	});
});

//바로구매
$('.choice_div_buynow').click(function(){
	var index = $('.choice_div_buynow').index(this);
	var id = $('.hidden_id:eq('+index+')').val();
	var prdtcode = $('.hidden_prdtcode:eq('+index+')').val();
	var shoesimage = $('.hidden_shoes_image:eq('+index+')').val();
	var shoesbrand = $('.shoes_brand:eq('+index+')').text();
	var shoesname = $('.shoes_name:eq('+index+')').text();
	var shoescolor = $('.shoes_color:eq('+index+')').text();
	var shoessize = $('.shoes_size:eq('+index+')').text();
	var shoesprice = $('.shoes_price:eq('+index+')').text();
	var shoesqty = $('.qtyText:eq('+index+')').val();
	var shoesdiscount = $('.discount_price:eq('+index+')').text();
	var shoespoint = $('.saving_div_point:eq('+index+')').text();
	
	var check = confirm("해당 상품만 바로 구매하시겠습니까?");

	if(check) {
		$.ajax({
			type : 'POST',
			url : '/abcd_mart/order_pay/orderChoice',
			data : {
				'id' : id,
				'prdtcode' : prdtcode,
				'shoesimage' : shoesimage,
				'shoesbrand' : shoesbrand,
				'shoesname' : shoesname,
				'shoescolor' : shoescolor,
				'shoessize' : shoessize,
				'shoesprice' : shoesprice,
				'shoesqty' : shoesqty,
				'shoesdiscount' : shoesdiscount,
				'shoespoint' : shoespoint
			},
			success : function(data) {
				location.href=data;
			}
		});
	} else {
		return false;
	};
});

//삭제버튼
$('.choice_div_delete').click(function(){
	var index = $('.choice_div_delete').index(this);
	var shoesbrand = $('.shoes_brand:eq('+index+')').text();
	var shoesname = $('.shoes_name:eq('+index+')').text();
	var shoessize = $('.shoes_size:eq('+index+')').text();
	
	$('.table_tbody tr:eq('+index+')').remove();
	
	$.ajax({
		type : 'POST',
		url : '/abcd_mart/order_pay/deleteList',
		data : 'shoesbrand='+shoesbrand+'&shoesname='+shoesname+'&shoessize='+shoessize,
		success : function(data) {
			alert("삭제되었습니다.");
			location.href = data;
		}
	});
	
});

//선택상품 삭제
$('.delete_button').click(function(){
	var count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 물품 개수
	var checkbox_size = $(".choice_checkbox:checked").length; //체크된 물품 개수
	
	var id = new Array();
	var prdtcode = new Array();
	var shoesimage = new Array();
	var shoesbrand = new Array();
	var shoesname = new Array();
	var shoescolor = new Array();
	var shoessize = new Array();
	var shoesprice = new Array();
	var shoesqty = new Array();
	var shoesdiscount = new Array();
	var shoespoint = new Array();
	
	if(checkbox_size == 0) {
		alert("삭제하실 상품을 선택해주세요.");
	} else {
		for(i = 0; i < count; i++ ) {
			if($('.choice_checkbox:eq('+i+')').is(':checked')) {
				id.push($('.hidden_id:eq('+i+')').val());
				prdtcode.push($('.hidden_prdtcode:eq('+i+')').val());
				shoesimage.push($('.hidden_shoes_image:eq('+i+')').val());
				shoesbrand.push($('.shoes_brand:eq('+i+')').text());
				shoesname.push($('.shoes_name:eq('+i+')').text());
				shoescolor.push($('.shoes_color:eq('+i+')').text());
				shoessize.push($('.shoes_size:eq('+i+')').text());
				shoesprice.push($('.shoes_price:eq('+i+')').text());
				shoesqty.push($('.qtyText:eq('+i+')').val());
				shoesdiscount.push($('.discount_price:eq('+i+')').text());
				shoespoint.push($('.saving_div_point:eq('+i+')').text());
			}
		}
		
		$.ajax({
			type : 'POST',
			url : '/abcd_mart/order_pay/select_deleteList',
			traditional : true,
			data : {
				'id' : id,
				'prdtcode' : prdtcode,
				'shoesimage' : shoesimage,
				'shoesbrand' : shoesbrand,
				'shoesname' : shoesname,
				'shoescolor' : shoescolor,
				'shoessize' : shoessize,
				'shoesprice' : shoesprice,
				'shoesqty' : shoesqty,
				'shoesdiscount' : shoesdiscount,
				'shoespoint' : shoespoint,
				'size' : checkbox_size
			},
			success : function(data) {
				alert("삭제되었습니다.");
				location.href = data;
			}
		});
	}
});
//계속 쇼핑하기
$('.continue').click(function(){
	var check = confirm("메인페이지로 이동하시겠습니까?");
	if(check) {
		location.href='#'
	}
	else {
		return false;
	};
});

//선택상품 주문하기
$('.select_order').click(function(){
	var count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 물품 개수
	var checkbox_size = $(".choice_checkbox:checked").length; //체크된 물품 개수
	
	var id = new Array();
	var prdtcode = new Array();
	var shoesimage = new Array();
	var shoesbrand = new Array();
	var shoesname = new Array();
	var shoescolor = new Array();
	var shoessize = new Array();
	var shoesprice = new Array();
	var shoesqty = new Array();
	var shoesdiscount = new Array();
	var shoespoint = new Array();
	
	if(checkbox_size == 0) {
		alert("주문하실 상품을 선택해주세요.");
	} else {
		for(i = 0; i < count; i++ ) {
			if($('.choice_checkbox:eq('+i+')').is(':checked')) {
				id.push($('.hidden_id:eq('+i+')').val());
				prdtcode.push($('.hidden_prdtcode:eq('+i+')').val());
				shoesimage.push($('.hidden_shoes_image:eq('+i+')').val());
				shoesbrand.push($('.shoes_brand:eq('+i+')').text());
				shoesname.push($('.shoes_name:eq('+i+')').text());
				shoescolor.push($('.shoes_color:eq('+i+')').text());
				shoessize.push($('.shoes_size:eq('+i+')').text());
				shoesprice.push($('.shoes_price:eq('+i+')').text());
				shoesqty.push($('.qtyText:eq('+i+')').val());
				shoesdiscount.push($('.discount_price:eq('+i+')').text());
				shoespoint.push($('.saving_div_point:eq('+i+')').text());
			}
		}
		
		$.ajax({
			type : 'POST',
			url : '/abcd_mart/order_pay/orderSelect',
			traditional : true,
			data : {
				'id' : id,
				'prdtcode' : prdtcode,
				'shoesimage' : shoesimage,
				'shoesbrand' : shoesbrand,
				'shoesname' : shoesname,
				'shoescolor' : shoescolor,
				'shoessize' : shoessize,
				'shoesprice' : shoesprice,
				'shoesqty' : shoesqty,
				'shoesdiscount' : shoesdiscount,
				'shoespoint' : shoespoint,
				'size' : checkbox_size
			},
			success : function(data) {
				location.href=data;
			}
		});
	}
});

//전체상품 주문하기
$('.all_order').click(function(){
	$('#shoppingForm').submit();
	//location.href='/abcd_mart/order_pay/orderList.do';
});





$(document).ready(function(){
	$('.change_option').hide();
	
	//장바구니 물품 모두 선택
	$('.all_checkbox').prop("checked", true); 	
	$('.choice_checkbox').prop("checked", true);
	$('.delete_checkbox').prop("checked", true);
	
	var check_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	var final_price;
	
	//총 주문금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.hidden_shoesprice:eq('+i+')').val();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(Number(total_price).toLocaleString('en'));
	
	//총 할인금액
	for(i = 0; i < check_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.hidden_shoesdiscount:eq('+i+')').val();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(Number(total_discount).toLocaleString('en'));
	
	//배송비
	if(parseInt(total_price) < 20000) {
		shoppingFee = '2500';
	} else {
		shoppingFee = '0';
	}
	$('.total_price_div_shippingFee').text(Number(shoppingFee).toLocaleString('en'));
	
	final_price = parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee);
	
	//총 결제금액
	$('.total_price_div_total').text(Number(final_price).toLocaleString('en'));
});


















