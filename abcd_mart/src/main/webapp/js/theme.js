//themeShop
//최초 남성 & (밑에 상품 뜨는 부분 방지) & 슬라이드샌들 띄우기
window.onload=function() {
	$('#manDiv').show();
	$('#womanDiv').hide();
	$('#childDiv').hide();
	
	$('#slideSandalDiv').show();
	$('#nikeTodosDiv').hide();
	$('#whiteDiv').hide();
	$('#summerDiv').hide();
	$('#muleDiv').hide();
	
}

//남성 클릭
$('#manLi').click(function(){
	$(this).addClass('on');
	$('#girlLi').removeClass('on');
	$('#childLi').removeClass('on');
	
	$('#manDiv').show();
	$('#womanDiv').hide();
	$('#childDiv').hide();
});

//여성 클릭
$('#girlLi').click(function(){
	$(this).addClass('on');
	$('#manLi').removeClass('on');
	$('#childLi').removeClass('on');
	
	$('#womanDiv').show();
	$('#manDiv').hide();
	$('#childDiv').hide();
});

//아동 클릭
$('#childLi').click(function(){
	$(this).addClass('on');
	$('#manLi').removeClass('on');
	$('#girlLi').removeClass('on');
	
	$('#childDiv').show();
	$('#manDiv').hide();
	$('#womanDiv').hide();
});

//////////////////////////////////////////////////////////////////////////

//MD's PICK
//슬라이드샌들 클릭
$('#slideSandal').click(function(){
	$(this).addClass('on');
	$(this).siblings().removeClass('on');
	
	$('#slideSandalDiv').show();
	$('#nikeTodosDiv').hide();
	$('#whiteDiv').hide();
	$('#summerDiv').hide();
	$('#muleDiv').hide();
	
});

//나이키토도스 클릭
$('#todos').click(function(){
	$(this).addClass('on');	
	$(this).siblings().removeClass('on');
	
	
	$('#nikeTodosDiv').show();
	$('#slideSandalDiv').hide();
	$('#whiteDiv').hide();
	$('#summerDiv').hide();
	$('#muleDiv').hide();
	
});

//흰색 운동화 클릭
$('#whiteShoe').click(function(){
	$(this).addClass('on');
	$(this).siblings().removeClass('on');
	
	$('#whiteDiv').show();
	$('#slideSandalDiv').hide();
	$('#nikeTodosDiv').hide();
	$('#summerDiv').hide();
	$('#muleDiv').hide();
});

//여름샌들 클릭
$('#summerSandal').click(function(){
	$(this).addClass('on');
	$(this).siblings().removeClass('on');
	
	$('#summerDiv').show();
	$('#slideSandalDiv').hide();
	$('#nikeTodosDiv').hide();
	$('#whiteDiv').hide();
	$('#muleDiv').hide();
});

//뮬운동화 클릭
$('#muleShoe').click(function(){
	$(this).addClass('on');
	$(this).siblings().removeClass('on');
	
	$('#muleDiv').show();
	$('#slideSandalDiv').hide();
	$('#nikeTodosDiv').hide();
	$('#whiteDiv').hide();
	$('#summerDiv').hide();
});


