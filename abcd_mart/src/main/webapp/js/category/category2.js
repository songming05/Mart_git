$('.top_select').change(function(){
	if($(this).val() == 'sportsShoes') {
		location.href="/abcd_mart/category/categoryPage?category=sportsShoes";
	} else if($(this).val() == 'shoes') {
		location.href="/abcd_mart/category/categoryPage?category=shoes";
	} else if($(this).val() == 'sandal') {
		location.href="/abcd_mart/category/categoryPage?category=sandal";
	} else if($(this).val() == 'boots') {
		location.href="/abcd_mart/category/categoryPage?category=boots";
	}
});

$('.top_select2').change(function(){
	var category1 = $('.hidden_category1').val();
	var category2 = $(this).val()

	location.href="/abcd_mart/category/categoryPage2?category1="+category1+"&category2="+category2;
});

$('.sizelist').mouseover(function(){
	var index = $('.sizelist').index(this);
	var prdtcode = $('.hidden_prdtcode:eq('+index+')').val();
	
	$.ajax({
		type:'post',
		url:'/abcd_mart/category/getPrdtcode_size',
		data : {'prdtcode' : prdtcode},
		dataType : 'json',
		success : function(data){
			$('.sizelist_tbody').empty();
			
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align : 'left',
					text : items.prdtSize
				})).append($('<td/>',{
					align : 'right',
					text : items.prdtGender
				})).appendTo($('.sizelist_tbody'));
			});
		}	
	});
	
	var Offset = $('.sizelist:eq('+index+')').offset();
	$('.sizelist_div').offset( { left: Offset.left, bottom: Offset.bottom } );
	
	$('.sizelist_div').show();
});

$('.sizelist').mouseleave(function(){
	$('.sizelist_div').hide();
});