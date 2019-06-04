$(document).ready(function(){
	
	$('#ico_quick4').mouseover(function(){
		$("#mouseControll").css("background-image"," url('../image/quickBar/abcZoneRed.png')");
		$("#ico_quick4").css("color","red");
	});
	$('#ico_quick4').mouseout(function(){
		$("#mouseControll").css("background-image"," url('../image/quickBar/abcZone.png')");
		$("#ico_quick4").css("color","black");
	});
	$('#ico_quick2').mouseover(function(){
		$("#mouseControll2").css("background-image"," url('../image/quickBar/couponIconRed.png')");
		$("#ico_quick2").css("color","red");
	});
	$('#ico_quick2').mouseout(function(){
		$("#mouseControll2").css("background-image"," url('../image/quickBar/couponIcon.png')");
		$("#ico_quick2").css("color","black");
	});
	
	
	
	$('#ico_quick6').mouseover(function(){
		$("#mouseControll3").css("background-image"," url('../image/quickBar/abcZoneRed.png')");
		$("#ico_quick6").css("color","red");
	});
	$('#ico_quick6').mouseout(function(){
		$("#mouseControll3").css("background-image"," url('../image/quickBar/abcZone.png')");
		$("#ico_quick6").css("color","black");
	});
	$('#ico_quick5').mouseover(function(){
		$("#mouseControll4").css("background-image"," url('../image/quickBar/couponIconRed.png')");
		$("#ico_quick5").css("color","red");
	});
	$('#ico_quick5').mouseout(function(){
		$("#mouseControll4").css("background-image"," url('../image/quickBar/couponIcon.png')");
		$("#ico_quick5").css("color","black");
	});
	
	
	
	
	
	
	/*포지션*/
	$(window).on("scroll", function() {
		if ($(window).scrollTop() <700) {
			$("#quickbar").css("position","absolute");
			$("#quickbar").css("top","");
		}else {
			$("#quickbar").css("position","fixed");	
			$("#quickbar").css("top","50px");
		}
		
		if ($(window).scrollTop() <200) {
			$("#quickbarOther").css("position","absolute");
			$("#quickbarOther").css("top","");
		}else {
			$("#quickbarOther").css("position","fixed");	
			$("#quickbarOther").css("top","50px");
		}
		
	});
	

		

	
	
});


