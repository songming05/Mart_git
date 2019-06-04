$(function(){
	$(".store_map ul li").mouseover(function(){
		$(this).find("img").attr("src", $(this).find("img").attr("src").replace(".png", "_on.png"));
		$(this).addClass("overmap");

	}).mouseout(function(){
		$(this).find("img").attr("src", $(this).find("img").attr("src").replace("_on.png", ".png"));
	    $(".store_map ul li").removeClass("overmap");
	});
	
	$(".line_up .bigArea").click(function(){
		$(this).next("ul").toggleClass("on");
	});
	
	$('.siDoList li a').click(function(){
		var area = $(this).text();
		
		$('.bigArea').html(area+"<span class=ico_arrow1></span>");
		$('.line_up .siDoList').removeClass('on');

		 $.ajax({
		    	type:'POST',
		    	url:'/abcd_mart/center/checkArea.do',
		    	data:'sido='+area,
		    	dataType:'json',
		    	success:function(data){

		    		$('.relation_product .guGunList li').remove();
		    		
		    		$.each(data.areaList,function(index,items){
		    			$('<li/>').append($('<a/>',{
		    				href:'#',
		    				id:'area',
		    				text:items.sigungu
		    			})).appendTo($('.relation_product .guGunList'));
		    		});
		    		
		    	}
		    	
		    });
		 
	});
	
	
	$(".line_up .smallArea").click(function(){
		$(this).next("ul").toggleClass("on");
	});
	
	$('.guGunList').on('click','#area',function(){
		$('.smallArea').html($(this).text()+"<span class=ico_arrow1></span>");
		$('.line_up .guGunList ').removeClass('on');
	}); 
	
	$('#findAbcd_Tbody').on('click','a',function(){
		//alert($(this).attr('class'));
		
		window.open("/abcd_mart/center/whereAbcdForm.do?seq="+$(this).attr('class'),"","width=650px height=700px");
		//window.open("/abcd_mart/center/whereAbcdForm.do","","width=500px height=400px");
		
	});
	
	$('.btn_sType4').click(function(){ 
		//alert($('.bigArea').text()+"과"+$('.smallArea').text());
		$.ajax({
			type:'POST',
	    	url:'/abcd_mart/center/findAbcd.do',
	    	data:'sido='+$('.bigArea').text()+'&sigungu='+$('.smallArea').text(),
	    	dataType:'json',
	    	success:function(data){
				//alert(JSON.stringify(data));
				$('#findAbcd_Tbody tr').remove();
				$.each(data.areaList,function(index,items){
					$('<tr/>').append($('<td/>',{
						class:'align-center'
						
							}).append($('<span/>',{
								align:'center',
								class:'shop'+items.seq,
								text: 'ABCD'+items.seq+'호점'

						}))).append($('<td/>',{
											
							}).append($('<div/>',{
							
							}).append($('<p/>',{
									text:items.buildingname
							})).append($('<p/>',{
								text: items.tel
							
						})).append($('<p/>',{
								text: items.sido+''+items.sigungu+''+items.yubmyundong
							
						})))).append($('<td/>',{
							class:'align-center'
							
						}).append($('<span/>',{
							align:'center',
							text:'교환/환불'
							
						})).append($('<span/>',{
							align:'center',
							text:'포인트사용'
							
						}))).append($('<td/>',{
							class:'align-center'
							
						}).append($('<a/>',{
							href:"#",
							class:items.seq,
							style:'padding: 2px 6px; display: inline-block; color: #fff !important; border: 1px solid #bfbfbf; background: #bfbfbf;',
							text:'상세정보'
						}))).appendTo($('#findAbcd_Tbody'));	
				});
				
				var scmove = $('#findAbcd_Tbody').offset().top;
				$('html, body').animate( { scrollTop : scmove }, 400 );

	    	}
		});
		
	});
	
	$('.btn_sType5').click(function(){
		alert('오픈 준비중인 매장입니다');
	});
	
});