$(document).ready(function() {
	
	$.ajax({
		type:'post',
		url:'/abcd_mart/user/myCouponList',
		dataType:'json',
		success: function(data) {
			console.log(data);
			//return;
			
			//$('tbody').empty();
			//6개넘어옴  each 돌때마다 items에 담김
			$.each(data.myPageList , function(index, items){
				console.log(items);
				console.log(index);
				return;
				$('<tr class="group-center">').appendTo($('tbody'));
				
				$('<td/>',{
					class:'tit_type3',
					text: items.coupon_seq
				}).appendTo($('.group-center'));

				
				
				$('<td/>').append(
					'<div class="cp_type1_2">'
					+items.coupon_name
					+'<br><strong>'
					+items.coupon_price+'원</strong></div>'
				)
				.appendTo($('.group-center'));
					
				
				
				
				$('<td/>',{
					class : 'align-left pl0',
				}).append(
						'<div class="fl-l ml20"> 할인쿠폰<br>'
						+items.coupon_name
						+'<br><span class="fc_type2"/>'
						+'<p class="fc_type5">(일부 브랜드 및 <br>일부 상품에 적용 불가)'
						+'</p></div>'
				).appendTo($('.group-center'));
				
				$('<span/>',{
					class : 'fc_type2',
					text : '상품 : 30,000원 이상 사용가능'
				}).add($('<p/>',{
					class : 'fc_type5',
					html : '(일부 브랜드 및 일부 상품에 적용 불가)</div>'
				})).appendTo($('.fl-l .ml20'));
				
				
				$('<td/>').append($('<span/>',{
					class : 'bold tit_type3 fs12 fc_type8',
					text : items.coupon_price
				})).append($('<span/>',{
					class : 'bold',
					text : '원'
				})).appendTo($('.group-center'));
				
				
				$('<td/>',{
					text:items.coupon_check
				}).appendTo($('.group-center'));

				$('<td/>',{
					class:'tit_type3',
					html:items.coupon_date+' ~ <br>'+items.coupon_end
				}).appendTo($('.group-center'));
				
				$('<td/>',{
					html:'온라인/<br>모바일</tr>'
				}).appendTo($('.group-center'));
				
				
			});//each
		}
	});
});