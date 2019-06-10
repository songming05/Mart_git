$(document).ready(function() {
	
	$.ajax({
		type:'post',
		url:'/abcd_mart/user/myCouponList',
		dataType:'json',
		success: function(data) {
			console.log(data);
			
			$('.group-center').empty();
			//6개넘어옴  each 돌때마다 items에 담김
			$.each(data.list , function(index, items){
				$('<td/>',{
					class:'tit_type3',
					text: items.
				}).append($('<td/>',{
					align : 'center',
					text : items.prdtCode
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtQty
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
				})).append($('<td/>',{
					align : 'center',
					text : items.prdtSize
				})).appendTo($('.group-center'));
				
			});//each
		}
	});
});