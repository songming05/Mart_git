//FAQ검색어
function checkSearchWord() {
	if($('#searchWord').val()=='') {
		alert("검색어를(을) 입력해 주세요.");
		$('#searchWord').focus();
		return false;
	}

}


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


//자주하는 질문 TOP10
$('section.qna_list .qna_btn').on('click', 'a', function(e){ 
    e.preventDefault(); 
    if ($(this).closest('tr').next('.qna_answer_box').hasClass("on")) {
        $(this).closest('tr').next('.qna_answer_box').toggleClass("on");
    } else {
        $('.qna_answer_box').removeClass('on');
        $(this).closest('tr').next('.qna_answer_box').toggleClass('on');
    }
});