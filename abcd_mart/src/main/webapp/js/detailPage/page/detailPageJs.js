$(document).ready(function(){
	
	//상품 후기 보기
	$(document).on('click','#subjectA',function(){
		$.ajax({
			type : 'POST',
			url : "/abcd_mart/board/afterBoardView",
			data : {'seq' : $(this).attr('class')*1},
			dataType : 'json',
			error : function(){alert("실패");},
			success : function(data){
				 $("#afterBoardDiv").load("../product/afterBoardView.jsp",function(){
					 $('#id').text(data.id); 
					 //$('#subject').val(data.subject);
					 $('#content').css('background','#e9ecef').css('width','900').css('height','auto'); 
					 $('#content').html('<br><img style="display:block; margin:auto; width:400px; height:auto;" src="../storage/'+data.fileName+'"><br><br>'+data.content); 
					 
					 if(data.good >= 95){$('#good').text('★★★★★');}
					 else if(data.good >= 90){$('#good').text('★★★★☆');}
					 else if(data.good >= 85){$('#good').text('★★★★');}
					 else if(data.good >= 80){$('#good').text('★★★☆');}
					 else if(data.good >= 75){$('#good').text('★★★');}
					 else if(data.good >= 70){$('#good').text('★★☆');}
					 else if(data.good >= 65){$('#good').text('★★');}
					 else if(data.good >= 60){$('#good').text('★☆');}
					 else{$('#good').text('★');}
					 //$('input:radio[name=whereToBuy]:input[value=' + data.whereToBuy + ']').attr("checked", true);
				 }
						 
				 ).dialog({ 
					resizable: false,
					height: 800,
					width: 1000,
					modal: true,
					buttons: {
						"확인": function(data) {$( this ).dialog( "close" );}
					}//buttons
				 }); //load
			}//success
		});//ajax
	});//on
	
	
	
	
	//상품 후기 등록
	$('#afterBoardBtn').click(function(){
		var code = $('#code').val();
	    $("#afterBoardDiv").load("../product/afterBoardPage.jsp").dialog({ 
			resizable: false,
			height: 550,
			width: 530,
			modal: true,
			buttons: {
				"등록": function() {
		               if ($('#id').val() == ""){
		                  swal("아이디 입력하세요");
		               }
		               else if($('#subject').val()==""){
		                  swal("제목 입력하세요");
		               }
		               else if($('#content').val()==""){
		                  swal("내용 입력하세요");
		               }
		               else if($('#good').val()==""){
		                  swal("만족도를 입력하세요");
		               }
		               else if($('#good').val()*1 <= 0){
		            	   swal("숫자 1~100 까지 입력하세요");
		               }
		               else if($('#good').val()*1 >= 101){
		            	   swal("숫자 1~100 까지 입력하세요");
		               }
		               else{
		            	   
		            	//업로드이미지 파일명
						var fileValue = $("#uploadImage1").val().split("\\");
						var fileName = fileValue[fileValue.length-1]; // 파일명
						
						//사진 업로드
						var sendFile = new FormData($('#afterBoardImage')[0]);
						$.ajax({
							contentType : false,
							type : 'POST',
							url : '/abcd_mart/board/afterBoardImage',
							data : sendFile,
							dataType : 'json',
							cache: false,
						    async:false,
							processData: false,
							error : function(){},
							success : function(data){}
						});
		            	   
						//글등록
		               $.ajax({
		                  type : 'POST',
		                  url : '/abcd_mart/board/afterBoardWrite',
		                  data : {'id' : $('#id').val(), 'subject' : $('#subject').val(), 'content' : $('#content').val(), 
		                           'whereToBuy' : $('input[name="whereToBuy"]:checked').val(), 'good' : $('#good').val(), 
		                           'prdtCode' : $('#code').val(),'fileName' : fileName},
		                  dataType : 'json',
		                  error : function(){/*alert("실패");*/},
		                  success : function(data){
		                     swal("등록완료")
		                     .then((value) => {location.href="/abcd_mart/product/detail?prdtCode="+$('#code').val()});}
		               });
		               $( this ).dialog( "close" );
		               }
		         },
				"취소": function() {
					$( this ).dialog( "close" );
			}
		}});
	});
	
	//사이즈 버튼 자동 생성
	for(var i=0; i<=30; i=i+5){
		var size = $('#size').val()*1+i;
		$('#btn').append('<button style="font-size:15px; font-family:맑은고딕;" type=button class="btn btn-light" id="inBtn" value='+size.toString()+'>'+size.toString()+'</button>&nbsp;');
	}
	
	
	//사이즈 고른후 추가
	$('#btn').on('click','#inBtn',function(){
		var price = $('#price').val()*1;
		if( document.getElementById($(this).attr('value'))==null ){

			$('#selectTable').append('<tr id="inTr" style="background-color:#EFEFEF">'
														+'<input type="hidden" id="amount1" name="qtyName" value="1">'
														+'<input type="hidden" value="aaa" name="id">'
														+'<input type="hidden" value="" name="prdtcode" id="code">'
														+'<input type="hidden" value="" name="shoesname" id="mainName">'
														+'<input type="hidden" value="" name="shoesimage" id="image1">'
														+'<input type="hidden" value="" name="shoesbrand" id="brand">'

														+'<input type="hidden" value="" name="shoescolor" id="prdtColor">'
														+'<input type="hidden" value='+$(this).attr('value')+' name="shoessize" id="size">'
														+'<input type="hidden" value="" name="shoesprice" id="price">'
														
														+'<input type="hidden" value="0" name="shoesdiscount" id="coupon">'
														+'<input type="hidden" value="1000" name="shoespoint" id="point">'
														
														+'<td width="250px" align="left">'
														+'<span  style="font-size:10pt;" id='+$(this).attr('value')+'>'+$('#mainName').val()+'/'+$(this).attr('value')+'</span>'
														+'</td>'
														+'<td width="100px">'
														+'<table id="btnbtn" class="table table-bordered" align="right" style="background-color:white; width:70px; height:20px; padding:0;">'
														+'<tr><td style="width:20px; height:20px; padding:0;"><button type="button" class="btn btn-sm" id="minus" style="padding:0 5px;vertical-align: text-bottom">-</button></td>'   
														+'<td id="qtyCheck" style="width:30px; height:20px; padding:0;"><span id="amount"><font size="2">1</font></span></td>'
														+'<td style="padding:0; width:20px; height:20px;"><button type="button" class="btn btn-sm" id="plus" style="padding:0 5px;vertical-align: text-bottom">+</button></td></tr></table>'
														+'</td>'
														+'<td>'
														+'<font size="2"><span>'+String($('#price').val()*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,')+'</span>원</font>&emsp;<button type="button" id="cancel"class="btn btn-light btn-sm" style="padding:0 5px;">x</button></td>'  
														+'</tr>');
			
			var priceArray = String($('#prdtPrice').text()).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,').split(",");
			
			var priceArray2 = "";
			for (var i=0; i<priceArray.length; i++){
				priceArray2 += priceArray[i]; 
			}
			
			if($('#prdtPrice').text() == 0 ){
				$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
			}else {
			var resultPrice = priceArray2*1 + $('#price').val()*1
			$('#prdtPrice').text(String(resultPrice).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
			}
		}else{swal("이미 존재 하는 상품입니다");}
	});
	
	
	//상품 빼기
	$(document).on('click','#minus',function(){
		if($(this).parent().next().text()*1 != 1){
			var amount = $(this).parent().next().text()*1-1;
			$('#amount1').val(parseInt($('#amount1').val())-1);
			
			
			
			
			var price = $(this).parent().parent().parent().parent().parent().next().children(0).children(0).text();
			$(this).parent().next().text(amount+'');
			
			if(price != 0){
				var priceArray = price.split(",");
			
				var priceArray2 = "";
				for (var i=0; i<priceArray.length; i++){
					priceArray2 += priceArray[i]; 
				}
				
				if($(this).parent().parent().parent().parent().parent().parent().attr('id') == 'inTr'){
					price = (priceArray2)*1 - $('#price').val()*1
					$(this).parent().parent().parent().parent().parent().next().children(0).children(0).text(String(price*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
					
					var prdtPriceArray = $('#prdtPrice').text().split(",");
					
					var prdtPriceArray2 = "";
					for (var i=0; i<prdtPriceArray.length; i++){
						prdtPriceArray2 += prdtPriceArray[i]; 
					}
					
					price = (prdtPriceArray2)*1 - $('#price').val()*1
					$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));  
				}else {
					price = (priceArray[0]+priceArray[1])*1-$(this).parent().parent().parent().parent().parent().prev().children(0).attr('id')*1;
					$(this).parent().parent().parent().parent().parent().next().children(0).children(0).text(String(price*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
					
					var prdtPriceArray = $('#prdtPrice').text().split(",");
					
					var prdtPriceArray2 = "";
					for (var i=0; i<prdtPriceArray.length; i++){
						prdtPriceArray2 += prdtPriceArray[i]; 
					}
					price = (prdtPriceArray2)*1-$(this).parent().parent().parent().parent().parent().prev().children(0).attr('id')*1;
					$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));  
				}
				
			}
		}
	});
	
	
	//상품 플러스
	$(document).on('click','#plus',function(){
		if($(this).parent().prev().text()*1 != 100){
			var amount = $(this).parent().prev().text()*1+1;
			$('#amount1').val(parseInt($('#amount1').val())+1); 
		
			
			var price = $(this).parent().parent().parent().parent().parent().next().children(0).children(0).text();
			$(this).parent().prev().text(amount+'');
			$(this).parent().prev().val(amount+'');
			
				if(price != 0){
				var priceArray = price.split(",");
				//alert($(this).parent().parent().parent().parent().parent().parent().attr('id'));
				
				var priceArray2 = "";
				for (var i=0; i<priceArray.length; i++){
					priceArray2 += priceArray[i]; 
				}
				
				
				if($(this).parent().parent().parent().parent().parent().parent().attr('id') == 'inTr'){
					price = (priceArray2)*1+$('#price').val()*1
					
					$(this).parent().parent().parent().parent().parent().next().children(0).children(0).text(String(price*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
					
					var prdtPriceArray = $('#prdtPrice').text().split(",");
					
					var prdtPriceArray2 = "";
					for (var i=0; i<prdtPriceArray.length; i++){
						prdtPriceArray2 += prdtPriceArray[i]; 
					}
					
					price = (prdtPriceArray2)*1 + $('#price').val()*1;
					$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));  
				}else{
					
					price = (priceArray2)*1+$(this).parent().parent().parent().parent().parent().prev().children(0).attr('id')*1;
					$(this).parent().parent().parent().parent().parent().next().children(0).children(0).text(String(price*1).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
					
					var prdtPriceArray = $('#prdtPrice').text().split(",");
					
					var prdtPriceArray2 = "";
					for (var i=0; i<prdtPriceArray.length; i++){
						prdtPriceArray2 += prdtPriceArray[i]; 
					}
					
					price = (prdtPriceArray2)*1+$(this).parent().parent().parent().parent().parent().prev().children(0).attr('id')*1;
					$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,')); 
					
				}
				
			}
		}
	});
	
	
	//취소
	$(document).on('click','#cancel',function(){
		
		$(this).parent().parent().remove();
		
		var prdtPriceArray = $('#prdtPrice').text().split(",");
		var resultPriceArray = $(this).prev().children(0).text().split(",");
		
		var prdtPriceArray2 = "";
		for (var i=0; i<prdtPriceArray.length; i++){
			prdtPriceArray2 += prdtPriceArray[i]; 
		}
		
		var resultPriceArray2 = "";
		for (var i=0; i<resultPriceArray.length; i++){
			resultPriceArray2 += resultPriceArray[i]; 
		}
		
		if(prdtPriceArray == 0){
			var price = (prdtPriceArray2)*1
			$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
		}
		else{
		var price = (prdtPriceArray2)*1 - (resultPriceArray2)*1;
		$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
		}
		/*if($('#selectOption').val() == 'noOption'){
		$('#selectOption').val('noOption').attr('selected', 'selected');
		}*/
	});
	
	//상품후기 게시판
	$.ajax({
		type : 'GET',
		url : '/abcd_mart/board/getAfterBoardList',
		data : {'pg' : 1, 'prdtCode' : $('#code').val()},
		dataType : 'json',
		//error : function(){alert("실패");},
		success : function(data){
			
			$('#totalA1').text(data.totalA);
			$('#totalA2').text(data.totalA);
			$('#totalA3').text(data.totalA);
			$('#totalA4').text(data.totalA);
			
			if(data.list != ""){
				
				
				$('#afterTable tbody tr').remove();
				
				$.each(data.list, function(index, items){
					
					var star = "";
					
					if(items.good >= 95){star = '★★★★★';}
				    else if(items.good >= 90){star = '★★★★☆';}
				    else if(items.good >= 85){star = '★★★★';}
				    else if(items.good >= 80){star = '★★★☆';}
				    else if(items.good >= 75){star = '★★★';}
				    else if(items.good >= 70){star = '★★☆';}
				    else if(items.good >= 65){star = '★★';}
				    else if(items.good >= 60){star = '★☆';}
				    else{star = '★';}
					
					$('<tr/>').append($('<td/>',{
						align : 'left',
					}).append($('<a/>',{
						//제목
						id : 'subjectA',
						class : items.seq,
						text : items.subject
					}))
					).append($('<td/>',{
						//구매처
						text : items.whereToBuy 
					})).append($('<td/>',{
						//상품만족도
						text : star
					})).append($('<td/>',{
						//작성자
						text : items.id
					})).append($('<td/>',{
						//작성일
						text : items.logtime
					})).appendTo($('#afterTable'));
				})//each
				$('#boardPagingDiv').html(data.boardPaging.pagingHTML);
			}//if
		}//success
	});//ajax
	
	//상품후기 게시판 페이징 처리
	$(document).on('click','#paging',function(){
		var pg = 0;
		if($(this).text() == '이전'){pg = (($('#currentPaging').text()*1-1)/3*3+1)-1;}
		else if($(this).text() == '다음'){pg = (($('#currentPaging').text()*1-1)/3*3+1)+1;}
		else{pg = $(this).text();}
		
		$.ajax({
			type : 'GET',
			url : '/abcd_mart/board/getAfterBoardList',
			data : {'pg' : pg, 'prdtCode' : $('#code').val()},
			dataType : 'json',
			//error : function(){alert("실패");},
			success : function(data){
				
				if(data!=null){
					$('#afterTable tbody tr').remove();
					
					$.each(data.list, function(index, items){
						$('<tr/>').append($('<td/>',{
							
						}).append($('<a/>',{
							//제목
							id : 'subjectA',
							class : items.seq,
							align : 'left',
							text : items.subject
						}))).append($('<td/>',{
							//구매처
							text : items.whereToBuy 
						})).append($('<td/>',{
							//상품만족도
							text : items.good
						})).append($('<td/>',{
							//작성자
							text : items.id
						})).append($('<td/>',{
							//작성일
							text : items.logtime
						})).appendTo($('#afterTable'));
					})//each
					$('#boardPagingDiv').html(data.boardPaging.pagingHTML);
				}//if
			}//success
		});//ajax
	});
	
	//상품 옵션 선택시
	$(document).on('click','#selectOption',function(){
		//alert($(this).children(0).prop('tagName'));
		
		if( document.getElementById('5000') == null ){
			if($('#selectOption option:selected').val()=='클리너'){
				$('#selectOption option:selected').attr( 'class', '5000' );
				price = '5000';
				
				$('#selectTable').append('<tr style="background-color:#EFEFEF">'
						+'<td width="250px" align="left">'
						+'<span  style="font-size:10pt;" id='+price+'>'+$('#selectOption option:selected').val()+'</span>'
						+'</td>'
						+'<td width="100px">'
						+'<table id="btnbtn" class="table table-bordered" align="right" style="background-color:white; width:70px; height:20px; padding:0;">'
						+'<tr><td style="width:20px; height:20px; padding:0;"><button type="button" class="btn btn-sm" id="minus" style="padding:0 5px;vertical-align: text-bottom">-</button></td>'   
						+'<td style="width:30px; height:20px; padding:0;"><spna id="amount"><font size="2">1</font></span></td>'    
						+'<td style="padding:0; width:20px; height:20px;"><button type="button" class="btn btn-sm" id="plus" style="padding:0 5px;vertical-align: text-bottom">+</button></td></tr></table>'
						+'</td>'
						+'<td>'
						+'<font size="2"><span>'+String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,')+'</span>원</font>&emsp;<button type="button" id="cancel"class="btn btn-light btn-sm" style="padding:0 5px;">x</button></td>'  
						+'</tr>');
				
				if($('#prdtPrice').text() == 0 ){
					$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
				}else {
				var prdtPriceArray = $('#prdtPrice').text().split(",");
				var prdtPriceArray2 = "";
				for (var i=0; i<prdtPriceArray.length; i++){
					prdtPriceArray2 += prdtPriceArray[i]; 
				}
				
				var resultPrice = (prdtPriceArray2)*1 + price*1
				$('#prdtPrice').text(String(resultPrice).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
				}
				
			}//if
		}//if
		
		if( document.getElementById('8000')==null ){
			 if($('#selectOption option:selected').val()=='가죽 클리너'){
				$('#selectOption option:selected').attr( 'class', '8000' );
				price = '8000';
				
				$('#selectTable').append('<tr style="background-color:#EFEFEF">'
						+'<td width="250px" align="left">'
						+'<span  style="font-size:10pt;" id='+price+'>'+$('#selectOption option:selected').val()+'</span>'
						+'</td>'
						+'<td width="100px">'
						+'<table id="btnbtn" class="table table-bordered" align="right" style="background-color:white; width:70px; height:20px; padding:0;">'
						+'<tr><td style="width:20px; height:20px; padding:0;"><button type="button" class="btn btn-sm" id="minus" style="padding:0 5px;vertical-align: text-bottom">-</button></td>'   
						+'<td style="width:30px; height:20px; padding:0;"><spna id="amount"><font size="2">1</font></span></td>'    
						+'<td style="padding:0; width:20px; height:20px;"><button type="button" class="btn btn-sm" id="plus" style="padding:0 5px;vertical-align: text-bottom">+</button></td></tr></table>'
						+'</td>'
						+'<td>'
						+'<font size="2"><span>'+String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,')+'</span>원</font>&emsp;<button type="button" id="cancel"class="btn btn-light btn-sm" style="padding:0 5px;">x</button></td>'  
						+'</tr>');
				
				if($('#prdtPrice').text() == 0 ){
					$('#prdtPrice').text(String(price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
				}else {
				var prdtPriceArray = $('#prdtPrice').text().split(",");
				var prdtPriceArray2 = "";
				for (var i=0; i<prdtPriceArray.length; i++){
					prdtPriceArray2 += prdtPriceArray[i]; 
				}
				
				var resultPrice = (prdtPriceArray2)*1 + price*1
				$('#prdtPrice').text(String(resultPrice).replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,'));
				}

				
			}//if
		}//if
		
		$('#selectOption').val('noOption').attr('selected', 'selected');
	});//on
	
	//----------------------바로 구매 --------------------
	
	
	
	
});