$(document).ready(function() {
	
	$.ajax({
		type:'post',
		url:'/abcd_mart/user/myCouponList',
		dataType:'json',
		success: function(data) {
			console.log(data);
		}
	});
});