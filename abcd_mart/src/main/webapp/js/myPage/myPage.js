$(function(){
	  
$('#mypageBox').on('click', function(){ //레이어 열때
	/*	var path = $(this).attr('href');
		$("#layer").css("left","50%");*/
		/*$(path).show();*/
		$('#target1').show();
		$('.bg_mask').css("position","fixed");
		$('.bg_mask').css("height","888px");
		
	});

$('#closeBox').on('click',function(){
	$('#target1').hide();
	$('.bg_mask').css("height","0px");
});
  /*
	$('.close').on('click', function(){ //레이어 닫을때
		$(this).parents('#layer').hide();
		$('.dim').hide();
		$('.cont').empty();
	})
  
  $('.dim').on('click', function(){
    $(this).hide();
    $('#layer').hide();
    $('.cont').empty();
  })*/
  
});



$('#stopIncrease').click(function(){
	
	$('#stopIncrease').css( 'pointer-events', 'none');
});



$(document).ready(function(){
	var limit =0;
	var marVal=0;
	$('.ml10').click(function(){
		/*alert("클릭시");*/
		
		/*var marVal=0;*/
		/*marVal=$('#scrollPosition').css("height");*/
		/*alert(marVal);*/
		/*marVal=$('.container_wrap').css('margin-bottom');*/
		/*$( "#myPage" ).css( "margin-bottom",marVal);
		marVal=$('#scrollPosition').css("height");*/
		/*$( "#myPage" ).css( "margin-bottom","4783px");*/
		limit++;
		marVal=$('#scrollPosition').css("height");
		
		
		if(limit==1){
			
				$(window).scroll(function(event){
					if(limit==1){
						marVal=$('#scrollPosition').css("height");
						/*marVal-=500;*/
						/*alert(marVal);*/
						$( "#myPage" ).css( "margin-bottom",marVal);
						/*alert(marVal+"움직이는중"+limit);*/
						limit++;
					}
				});
		}
	});
	
	
	
});
