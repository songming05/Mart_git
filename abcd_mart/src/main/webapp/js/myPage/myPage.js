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