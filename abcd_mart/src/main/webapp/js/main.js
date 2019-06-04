$(document).ready(function(){
	$('#mobileTable').hide();
	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#like').click(function(){
	alert("Ctrl+D키를 눌러주세요!")
});

$('#mobile').mouseover(function(){
	var Offset = $('#like').offset();
	$('#mobileTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#mobileTable').show();
	
	$('#mobile').mouseleave(function(){
		$('#mobileTable').hide();
	});
});

$('#facebook').click(function(){
	window.open("http://www.facebook.com/abcmartkorea");
});

$('#category').click(function(){
	var Offset = $('#category').offset();
	$('#categoryTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#categoryTable').toggle();
	
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#category').mouseover(function(){
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#sportsShoes').mouseover(function(){
	var Offset = $('#sportsShoes').offset();
	$('#sportsShoesTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#sportsShoesTable').show();
	
	$('#categoryTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#shoes').mouseover(function(){
	var Offset = $('#shoes').offset();
	$('#shoesTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#shoesTable').show();
	
	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#sandal').mouseover(function(){
	var Offset = $('#sandal').offset();
	$('#sandalTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#sandalTable').show();
	
	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#boots').mouseover(function(){
	var Offset = $('#boots').offset();
	$('#bootsTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#bootsTable').show();
	
	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#themeShop').click(function(){
	var Offset = $('#themeShop').offset();
	$('#themeShopTable').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#themeShopTable').toggle();

	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});

$('#brand').click(function(){
	var Offset = $('#category').offset();
	$('#brand_div').offset( { left: Offset.left, bottom: Offset.bottom } );
	$('#brand_div').toggle();

	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#smartSearch_div').hide();
});

$('#smartSearch').click(function(){
	$('#smartSearch_div').toggle();

	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
});

$('#main_center').mouseover(function(){
	$('#categoryTable').hide();
	$('#sportsShoesTable').hide();
	$('#shoesTable').hide();
	$('#sandalTable').hide();
	$('#bootsTable').hide();
	$('#themeShopTable').hide();
	$('#brand_div').hide();
	$('#smartSearch_div').hide();
});
