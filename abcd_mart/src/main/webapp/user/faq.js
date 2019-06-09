//페이지
$(document).ready(function(){
$('.paginate').html($('#servicePaging').val());

if($('#pageMap').val()=="상품정보" || $('#pageMap').val()=="상품검색" || 
	$('#pageMap').val()=="가격" || $('#pageMap').val()=="입고문의" ||
	$('#pageMap').val()=="신발관리법" || $('#pageMap').val()=="사이즈") {
	
	$('#paging').hide();
	$('#currentPaging').removeAttr("href");
	
}else if($('#pageMap').val()=="교환/반품/환불") {
	$('.paginate a:eq(2)').hide();
	
}else if($('#pageMap').val()=="교환" || $('#pageMap').val()=="반품(환불)" || $('#pageMap').val()=="오프라인 교환/환불" ||
		 $('#pageMap').val()=="배송현황" || $('#pageMap').val()=="배송조회" || $('#pageMap').val()=="배송지연" || 
		 $('#pageMap').val()=="배송오류" || $('#pageMap').val()=="배송비") {
	for(i=1; i<=2; i++) {
		$('.paginate a:eq('+i+')').hide();
	}
	$('#currentPaging').removeAttr("href");
	
}else if($('#pageMap').val()=="주문/결제/취소") {
	$('.paginate a:eq(3)').hide();
	
}else if($('#pageMap').val()=="주문" || $('#pageMap').val()=="결제" || $('#pageMap').val()=="취소" ||
		 $('#pageMap').val()=="AS" || $('#pageMap').val()=="AS접수/현황/결과" || 
		 $('#pageMap').val()=="심의접수/현황/결과" || $('#pageMap').val()=="수선비단가표" || 
		 $('#pageMap').val()=="로그인" || $('#pageMap').val()=="회원가입/탈퇴" || 
		 $('#pageMap').val()=="ID/PW분실" || $('#pageMap').val()=="개인정보변경") {
	for(i=1; i<=3; i++) {
		$('.paginate a:eq('+i+')').hide();
	}
	$('#currentPaging').removeAttr("href");
	
}else if($('#pageMap').val()=="회원정보") {
	$('.paginate a:eq(3)').hide();
	
}

});

//FAQ검색어
function checkSearchWord() {
	if($('#searchWord').val()=='') {
		alert("검색어를(을) 입력해 주세요.");
		$('#searchWord').focus();
		return false;
	}

}
	
//카테고리 2 선택 시 빨간색 적용.
$('.faq_menu .list_type1_1 li').on('click', 'a', function(){
	$(this).parent().addClass("link");
	$(this).parent().siblings().removeClass('link');
});
	

//FAQ검색 셀렉트 박스
$(".relation_product > a").click(function(e) {
    e.preventDefault();
    $(this).toggleClass('on');
    $(this).parent().find(".relation_list").toggleClass("on");
});

$(".relation_list > li > a").click(function(e) {
    $(this).parent().parent().prev().html($(this).text() + '<span class="ico_arrow1"></span>');
    $(this).parent().parent().prev().toggleClass("on");
    $(this).parent().parent().toggleClass("on");
    $("input[id="+$(this).attr("targetId")+"]").val($(this).attr("idValue"));
});


//FAQ 질답
$('section.qna_list .qna_btn').on('click', 'a', function(e){ 
    e.preventDefault(); 
    if ($(this).closest('tr').next('.qna_answer_box').hasClass("on")) {
        $(this).closest('tr').next('.qna_answer_box').toggleClass("on");
    } else {
        $('.qna_answer_box').removeClass('on');
        $(this).closest('tr').next('.qna_answer_box').toggleClass('on');
    }
});