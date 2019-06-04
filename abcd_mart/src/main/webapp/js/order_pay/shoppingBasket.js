//전체체크박스가 바뀔때마다 가격 변경
$('.all_checkbox').change(function(){
	var ckeck_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
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
	
	//총 주문금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.shoes_price:eq('+i+')').text();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(total_price);
	
	//총 할인금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.discount_price:eq('+i+')').text();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(total_discount);
	
	//배송비
	if(parseInt(total_price) < 20000) {
		$('.total_price_div_shippingFee').text("2500");
	} else {
		$('.total_price_div_shippingFee').text("0");
	}
	shoppingFee = $('.total_price_div_shippingFee').text();
	
	//총 결제금액
	$('.total_price_div_total').text(parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee));
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
	
	var ckeck_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	
	//총 주문금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.shoes_price:eq('+i+')').text();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(total_price);
	
	//총 할인금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.discount_price:eq('+i+')').text();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(total_discount);
	
	//배송비
	if(parseInt(total_price) < 20000) {
		$('.total_price_div_shippingFee').text("2500");
	} else {
		$('.total_price_div_shippingFee').text("0");
	}
	shoppingFee = $('.total_price_div_shippingFee').text();
	
	//총 결제금액
	$('.total_price_div_total').text(parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee));
});

//물품 별 체크박스가 바뀔때마다 가격 변경
$('.choice_checkbox').change(function(){
	var ckeck_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	
	//총 주문금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.shoes_price:eq('+i+')').text();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(total_price);
	
	//총 할인금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.discount_price:eq('+i+')').text();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(total_discount);
	
	//배송비
	if(parseInt(total_price) < 20000) {
		$('.total_price_div_shippingFee').text("2500");
	} else {
		$('.total_price_div_shippingFee').text("0");
	}
	shoppingFee = $('.total_price_div_shippingFee').text();
	
	//총 결제금액
	$('.total_price_div_total').text(parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee));
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
		url : '/ABCD_MART/cart/updateQtyText.do',
		data : 'shoesbrand='+shoesbrand+'&shoesname='+shoesname+'&shoessize='+shoessize+'&shoesqty='+shoesqty,
		success : function(data) {
			alert("수량이 변경되었습니다.");
			location.href = data;
		}
	});
});

//바로구매버튼
$('.choice_div_buynow').click(function(){
	var check = confirm("해당상품만 바로 구매하시겠습니까?");
	if(check) {
		location.href='#'
	}
	else {
		return false;
	};
});

//물품삭제버튼
$('.choice_div_delete').click(function(){
	var index = $('.choice_div_delete').index(this);
	var shoesbrand = $('.shoes_brand:eq('+index+')').text();
	var shoesname = $('.shoes_name:eq('+index+')').text();
	var shoessize = $('.shoes_size:eq('+index+')').text();
	
	$('.table_tbody tr:eq('+index+')').remove();
	
	$.ajax({
		type : 'POST',
		url : '/ABCD_MART/cart/deleteList.do',
		data : 'shoesbrand='+shoesbrand+'&shoesname='+shoesname+'&shoessize='+shoessize,
		success : function(data) {
			alert("삭제되었습니다.");
			location.href = data;
		}
	});
	
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
















$(document).ready(function(){
	//장바구니 물품 모두 선택
	$('.all_checkbox').prop("checked", true); 	
	$('.choice_checkbox').prop("checked", true);
	$('.delete_checkbox').prop("checked", true);
	
	var ckeck_shoes_count = $('.shoppingBasket_basketlist_table tbody tr').length; //장바구니 총 개수
	var shoes_price; //가격
	var total_price = '0'; //총 가격
	var shoes_discount; //할인
	var total_discount = '0'; //총 할인
	var shoppingFee; //배송비
	
	//총 주문금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_price = $('.shoes_price:eq('+i+')').text();
			total_price = parseInt(total_price) + parseInt(shoes_price*$('.qtyText:eq('+i+')').val());
		}
	}
	$('.total_price_div_price').text(total_price);
	
	//총 할인금액
	for(i = 0; i < ckeck_shoes_count; i++) {
		if($('.choice_checkbox:eq('+i+')').is(':checked')) {
			shoes_discount = $('.discount_price:eq('+i+')').text();
			total_discount = parseInt(total_discount) + parseInt(shoes_discount);
		}
	}
	$('.total_price_div_sale').text(total_discount);
	
	//배송비
	if(parseInt(total_price) < 20000) {
		$('.total_price_div_shippingFee').text("2500");
	} else {
		$('.total_price_div_shippingFee').text("0");
	}
	
	shoppingFee = $('.total_price_div_shippingFee').text();
	
	//총 결제금액
	$('.total_price_div_total').text(parseInt(total_price) - parseInt(total_discount) + parseInt(shoppingFee));
});


















