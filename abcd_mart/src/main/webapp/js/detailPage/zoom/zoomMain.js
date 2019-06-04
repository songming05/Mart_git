$('.show').zoomImage();
$('#big-img').attr('src', '../image/page/product/'+$('#image1').val());
$('.show-small-img:first-of-type').css({
	//화면로딩시 1번그림 선택
	'border': 'solid 1px #f00', 'padding': '2px'
});

//1번그림 확대 가능 속성
$('.show-small-img:first-of-type').attr('alt', 'now').siblings().removeAttr('alt')

$('.show-small-img').click(function () {
  $('#show-img').attr('src', $(this).attr('src'))
  $('#big-img').attr('src', $(this).attr('src'))
  $(this).attr('alt', 'now').siblings().removeAttr('alt')
  $(this)
  .css({
	  //클릭하면 작은 박스 테두리 설정
	  'border': 'solid 1px #f00', 'padding': '2px'
  }).siblings()
  .css({
	  //나머지는 테두리 없어요
	  'border': 'none', 'padding': '0'
  })
  
})