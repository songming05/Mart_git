$(function(){
	$(document).on("click", ".img_on, .img_off", function(){
	    $(".img_on").hide();
	    $(".img_off").show();
	    $(this).parent().find(".img_on").show();
	    $(this).parent().find(".img_off").hide();
	});
    
    var $bestaward_slick = $('.js-bestbrand-slick');
    var $ba_slide = $bestaward_slick.find('.best-brand-slide-con-wrap .slide-box');

    $ba_slide.slick({
        centerMode: false,
        swipe: false,
        fade: true,
        speed : 150,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
    });
    var $bestbrand_tab = $('.js-bestbrand-slick .best-brand-slide-tab-wrap .tab-box');
    $bestbrand_tab.slick({
        slidesToShow: 5
    });
    
    $bestaward_slick.on( 'click','.best-brand-slide-tab-wrap .tab-box div a', smegtab_Action );
	function smegtab_Action(e) {
        e.preventDefault();
        var $this = $(this);
        var tab_Idx = $this.parent().index();
        $ba_slide.slick('slickGoTo',tab_Idx);
    }
    
});
