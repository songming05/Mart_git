/*공지사항*/
$(document).ready(function(){
	var height =  $(".list-hidden-div").height();
	var num = $(".listFooter li").length;
	var max = height * num;
	var move = 0;
	function noticeRolling(){
		move += height;
		$(".listFooter").animate({"top":-move},600,function(){
			if( move >= max ){
				$(this).css("top",0);
				move = 0;
			};
		});
	};
	noticeRollingOff = setInterval(noticeRolling,4000);
	$(".listFooter").append($(".listFooter li").first().clone());

	
});	


/*동영상*/
$(function(){
	  
	var embed = $('.cont').html(); //동영상 코드
  
	$('.movie-start-btn').on('click', function(){ //레이어 열때
		var path = $(this).attr('href');
		$("#layer").css("left","50%");
		$('.cont').html(embed);
		$(path).show();
		$('.dim').show();
		
	})
  
	$('.close').on('click', function(){ //레이어 닫을때
		$(this).parents('#layer').hide();
		$('.dim').hide();
		$('.cont').empty();
	})
  
  $('.dim').on('click', function(){
    $(this).hide();
    $('#layer').hide();
    $('.cont').empty();
  })
  
});