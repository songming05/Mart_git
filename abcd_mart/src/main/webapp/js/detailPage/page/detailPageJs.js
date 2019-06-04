$(document).ready(function(){
	alert("js");
	
	//사이즈 버튼 자동 생성
	for(var i=0; i<=30; i=i+5){
		var size = $('#sizeMin').val()*1+i;
		$('#btn').append('<button type=button class="btn btn-light" id="inBtn" value='+size.toString()+'>'+size.toString()+'</button>&nbsp;');
	}
	
	
	//사이즈 고른후 추가
	$('#btn').on('click','#inBtn',function(){
		var price = $('#price').val()*1;
		if( document.getElementById($(this).attr('value'))==null ){
			
			
			$('#selectTable').append('<tr style="background-color:#EFEFEF">'
														+'<td width="250px" align="left">'
														+'<span  style="font-size:10pt;" id='+$(this).attr('value')+'>'+$('#mainName').val()+'/'+$(this).attr('value')+'</span>'
														+'</td>'
														+'<td width="100px">'
														+'<table id="btnbtn" class="table table-bordered" align="right" style="background-color:white; width:70px; height:20px; padding:0;">'
														+'<tr><td style="width:20px; height:20px; padding:0;"><button type="button" class="btn btn-sm" id="minus" style="padding:0 5px;vertical-align: text-bottom">-</button></td>'   
														+'<td style="width:30px; height:20px; padding:0;"><spna id="amount"><font size="2">1</font></span></td>'    
														+'<td style="padding:0; width:20px; height:20px;"><button type="button" class="btn btn-sm" id="plus" style="padding:0 5px;vertical-align: text-bottom">+</button></td></tr></table>'
														+'</td>'
														+'<td>'
														+'<font size="2"><span>'+String($('#price').val()*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,')+'</span>원</font>&emsp;<button type="button" id="cancel"class="btn btn-light btn-sm" style="padding:0 5px;">x</button></td>'  
														+'</tr>');
			
			var priceArray = String($('#prdtPrice').text()).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,').split(",");
			
			if($('#prdtPrice').text() == 0 ){
				$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
			}else {
			var resultPrice = (priceArray[0]+priceArray[1])*1 + $('#price').val()*1
			$('#prdtPrice').text(String(resultPrice).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
			}
		}else{swal("이미 존재 하는 상품입니다");}
	});
	
	
	//상품 빼기
	$(document).on('click','#minus',function(){
		if($(this).parent().next().text()*1 != 1){
			var amount = $(this).parent().next().text()*1-1;
			var price = $(this).parent().parent().parent().parent().parent().next().children(0).children(0).text();
			$(this).parent().next().text(amount+'');
			
			if(price != 0){
			var priceArray = price.split(",");	
			price = (priceArray[0]+priceArray[1])*1 - $('#price').val()*1
			$(this).parent().parent().parent().parent().parent().next().children(0).children(0).text(String(price*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
			
			var prdtPriceArray = $('#prdtPrice').text().split(",");
			price = (prdtPriceArray[0]+prdtPriceArray[1])*1 - $('#price').val()*1
			$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));   
			}
		}
	});
	
	
	//상품 플러스
	$(document).on('click','#plus',function(){
		if($(this).parent().prev().text()*1 != 100){
			var amount = $(this).parent().prev().text()*1+1;
			var price = $(this).parent().parent().parent().parent().parent().next().children(0).children(0).text();
			$(this).parent().prev().text(amount+'');
			if(price != 0){
				var priceArray = price.split(",");
				price = (priceArray[0]+priceArray[1])*1+$('#price').val()*1
				$(this).parent().parent().parent().parent().parent().next().children(0).children(0).text(String(price*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
				
				var prdtPriceArray = $('#prdtPrice').text().split(",");
				price = (prdtPriceArray[0]+prdtPriceArray[1])*1 + $('#price').val()*1
				$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));   
			}
		}
	});
	
	
	//취소
	$(document).on('click','#cancel',function(){
		alert($(this).parent().prop('tagName'));
	});
	
	//메인 이미지 변경 & 서브이미지 마우스 들어갈시 
	$('#subImage1').mouseenter(function(){
		var image1 = $('#image1').val(); 
		$('#subImage1').css("border","1px solid red");
		$('#mainImage').attr("src","../image/page/goods/"+image1);
	});
	
	$('#subImage2').mouseenter(function(){
		var image2 = $('#image2').val(); 
		$('#subImage2').css("border","1px solid red");
		$('#mainImage').attr("src","../image/page/goods/"+image2);
	});
	
	$('#subImage3').mouseenter(function(){
		var image3 = $('#image3').val(); 
		$('#subImage3').css("border","1px solid red");
		$('#mainImage').attr("src","../image/page/goods/"+image3);
	});
	
	$('#subImage4').mouseenter(function(){
		var image4 = $('#image4').val(); 
		$('#subImage4').css("border","1px solid red");
		$('#mainImage').attr("src","../image/page/goods/"+image4);
	});
	
	$('#subImage5').mouseenter(function(){
		var image5 = $('#image5').val(); 
		$('#subImage5').css("border","1px solid red");
		$('#mainImage').attr("src","../image/page/goods/"+image5);
	});
	
	//서브 이미지 마우스 나갈시
	$('#subImage1').mouseleave(function(){
		$('#subImage1').css("border","0px");
	});
	$('#subImage2').mouseleave(function(){
		$('#subImage2').css("border","0px");
	});
	$('#subImage3').mouseleave(function(){
		$('#subImage3').css("border","0px");
	});
	$('#subImage4').mouseleave(function(){
		$('#subImage4').css("border","0px");
	});
	$('#subImage5').mouseleave(function(){
		$('#subImage5').css("border","0px");
	});
	
	//스마트 계산기
	$('#smartCal').click(function(){
		swal({
			content:'input',
			button: {text: "다시 계산하기",},
		});
	});
	
	
	
	
});