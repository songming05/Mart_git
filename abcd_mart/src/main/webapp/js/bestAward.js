/* BEST AWARD 슬라이드 */
$(document).ready(function(){
    var $bestaward_slick = $('.js-bestaward-slick');
    var $ba_tab = $bestaward_slick.find('.best-award-custom-dot');
    var $ba_slide = $bestaward_slick.find('.best-award-slide-wrap');

    $ba_slide.slick({
        centerMode: true,
        variableWidth: true,
        speed:200,
        swipe: false
    });

    $bestaward_slick.on( 'click','.best-award-custom-dot li a', smegtab_Action );

    function smegtab_Action(e) {
        e.preventDefault();

        var $this = $(this);
        var $tab_Li = $(this).parent();
        var $all_tab_Li = $ba_tab.children('li');
        var tab_Idx = $this.parent().index();

        $all_tab_Li.removeClass('on');
        $tab_Li.addClass('on');

        $ba_slide.slick('slickGoTo',tab_Idx);
    }

    $ba_slide.on( 'click','.slick-arrow', smegtab_Arrow_Action );

    function smegtab_Arrow_Action(e) {
        var mainTab_slick_Idx = $ba_slide.slick('slickCurrentSlide');
        var $all_tab_Li = $ba_tab.children('li');

        $ba_tab.children('li').removeClass('on');

        $all_tab_Li.eq(mainTab_slick_Idx).addClass('on');
    }
});