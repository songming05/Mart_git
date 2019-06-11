//개인정보변경 전 비밀번호 확인
$('.btn_mType1.ml5').click(function(){
	if($('.text.ml15').val()=='' || $('.text.ml15').val().length==0) {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	$.ajax({
		type : 'POST',
		url : '/abcd_mart/user/myPageLogin',
		data : {'password' : $('.text.ml15').val()},
		dataType : 'text',
		success : function(data) {
			if(data=='loginFail') {
				alert("비밀번호가 맞지 않습니다. 다시 확인하여 입력해주세요.");
			}else {
				location.href="/abcd_mart/mypage/viewMyInfo";
			}
		}
	});

});

//개인정보변경 버튼
$('#updateBtn').click(function(){
	var question = confirm("변경하시겠습니까?");

	if(question==true) {
		$('#viewMyInfoForm').submit();
		alert("개인정보가 변경되었습니다");
		location.href="/abcd_mart/mypage/myPage";
		
	}else {
		
	}
});


//배송 주소 입력
function popupSearchPostCode(){
	new daum.Postcode({
	    oncomplete: function(data) {
	        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	        // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	        var addr ='';
	        var extraAddr ='';
	        
	        if(data.userSelectedType=='R'){
	        	addr = data.roadAddress;
	        }else{
	        	addr = data.jibunAddress;
	        }
	        
	        document.getElementsByName('mainAddrPostNum')[0].value = data.zonecode;
            document.getElementsByName("mainAddr")[0].value = addr;
            document.getElementsByName("mainAddrDetail")[0].focus();
           
	    }
	}).open();	
	
}

function checkPostClose(zipcode, address){
	opener.document.getElementById('mainAddrPostNum').value =zipcode;
	opener.document.getElementById('mainAddr').value =address;
	window.close();
	opener.document.getElementById('mainAddrDetail').focus();
} 