$(document).ready(function(){
	//alert("js2");
	
	//사이즈 버튼 자동 생성
	for(var i=0; i<=30; i=i+5){
		var size = $('#size').val()*1+i;
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
		
		$(this).parent().parent().remove();
		
		var prdtPriceArray = $('#prdtPrice').text().split(",");
		var resultPriceArray = $(this).prev().children(0).text().split(",");
		
		var price = (prdtPriceArray[0]+prdtPriceArray[1])*1 - (resultPriceArray[0]+resultPriceArray[1])*1;
		$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
	});
	
	//상품후기 게시판
	$.ajax({
		type : 'POST',
		url : '/abcd_mart/board/getAfterBoardList.do',
		data : {'pg' : '1',
					'prdtCode' : $('code').val()}
		dataType : 'json',
		success : function(data){
			
			$.each(data.list, function(index, items)){
				$('<tr/>').append($('<td/>',{
					//제목
				})).append($('<td/>',{
					//구매처
				})).append($('<td/>',{
					//상품만족도
				})).append($('<td/>',{
					//작성자
				})).append($('<td/>',{
					//작성일
				})).appendTo($('#afterTable'));
			}//each
		}//success
	});//ajax
	
	
	//스마트 계산기
	$('#smartCal').click(function(){
		swal({
			content:'input',
			button: {text: "다시 계산하기",},
		});
	});
	
	
	
	
});