
//비회원 회원 display바뀌는 
$('#nonUserLoginTab').click(function(){
	$('#cm_tabs_01').css('display','none');
	$('#cm_tabs_02').css('display','block');
	$('#userLoginTabli').attr('class','bar');
	$('#nonUserLoginTabli').attr('class','current');
});


$('#userLoginTab').click(function(){
	$('#cm_tabs_01').css('display','block');
	$('#cm_tabs_02').css('display','none');
	$('#userLoginTabli').attr('class','bar current');
	$('#nonUserLoginTabli').attr('class','');
});


//회원가입버튼
$('#loginBox_writeBtn').click(function(){
	location.href='/abcd_mart/user/signUpStep_01';
});
//로그인버튼
function loginUser(){
	if($('#userId').val()==''){
		swal("아이디를 입력해주세요");
	}else if($('#userPwd').val()=='') {
		swal("비밀번호를 입력해주세요");
	}else {
		//이동
		$.ajax({
			type: 'POST',
			url: '/abcd_mart/user/checkUserId',
			data: {'id':$('#userId').val()},
			dataType: 'text',
			success: function(data) {
				if(data=='not_exist'){
					swal('존재하지 않는 아이디 입니다.');
				} else {
					$.ajax({
						type: 'POST',
						url: '/abcd_mart/user/login',
						data: {'id':$('#userId').val(),
								'password':$('#userPwd').val()},
						dataType: 'text',
						success: function(data) {
							if(data=='loginOk'){
								location.href = "/abcd_mart/main/index";
							} else if(data=='loginFail'){
								swal('아이디 또는 비밀번호가 틀렸습니다.');
							}
						}
					});
				}
			}
		});		
	}
}









///************* 회원가입 ******************
//signUpStep_01
$('input#agree_all').on('click', function() {
    if($(this).is(':checked') == true) {
        $('input#cbPurchaseClause').prop('checked', true);
        $('input#cbEbankClause').prop('checked', true);
        $('input[name=cbPrivateClause][value=true]').prop('checked', true);
    } else {
        $('input#cbPurchaseClause').prop('checked', false);
        $('input#cbEbankClause').prop('checked', false);
        $('input[name=cbPrivateClause][value=false]').prop('checked', true);
    }
});


// 약관 팝업
$('#btnPurchaseClause').on('click', function() {
    var url = 'https://www.abcmart.co.kr/abc/user/popupPurchaseClause';
    var options = 'width=550,height=710';
    window.open(url, '구매이용약관', options);
});

$('#btnEbankClause').on('click', function() {
    var url = 'https://www.abcmart.co.kr//abc/user/popupEbankClause';
    var options = 'width=550,height=710';
    window.open(url, '전자금융거래 이용약관', options);
});

$('#btnPrivateClause').on('click', function() {
    var url = 'https://www.abcmart.co.kr/abc/user/popupPrivateClause';
    var options = 'width=550,height=710';
    window.open(url, '개인정보처리방침', options);
    });
    
    
    
    
   //******************signUpStep_02
  
    $('span.check_password_blank').text(''); //비밀번호 항목 ''빈값
   
    //이메일2 직접입력&자동저장
$('select[name=mailDomain]').on('change', function() {
	var mailDomain = $('select[name=mailDomain]').val();
	

	if(mailDomain == 'insert'){
		 $('#userEmail2').val('');
		 $('#userEmail2').prop('readonly',false);
	     
	}else{
		$('#userEmail2').val(mailDomain);
		$('#userEmail2').prop('readonly',true);
	}

});


//아이디중복 span 모두 none으로 비워줌
$('input[name=userId]').on('change', function() {
  isUserIdAvailable = false;
  $('span.user_id_noti').css('display', 'none');
});
 



//===================== 중복버튼 누르면 =====================

//1. 아이디중복
$('#btnCheckUserId').on('click', function() {
   var userId = $('input[name=userId]');   
   $('span.user_id_noti').css('display', 'none');
   
//비어있으면 
   if($('input#userId').val() == '') { 
       $('span.user_id_noti.enter').css('display', 'inline'); //입력하세요 창뜸
       userId.focus();
       return false;
	}
   
   var idReg = /^[a-z0-9]+[a-z0-9]{3,19}$/g;
   if(!idReg.test(userId.val())) {
	   $('span.user_id_noti.unavailableCheckId').css('display','inline');
	   userId.focus();
       return false;
   }
   
   
   $.ajax({
		type: 'POST',
		url: '/abcd_mart/user/checkUserId',
		data: {'id':userId.val()},
		dataType: 'text',
		success: function(data) {
			if(data=='exist'){
				$('span.user_id_noti.duplicated').css('display', 'inline');
			} else if(data=='not_exist'){
				$('span.user_id_noti.ok').css('display', 'inline');
				$('#checkUserIdResult').val(userId.val());
			}
		}
	});
  
   
});



//2. 이메일중복
$('#btnCheckEmail').click(function() {
	var userEmail1 = $('input[name=userEmail1]');
	var userEmail2 = $('input[name=userEmail2]');
	var email = userEmail1.val()+'@'+userEmail2.val();
	$('.sub_type2.fc_red').attr('style', 'display:none');
		
	if(userEmail1.val()==''){
		swal("이메일을 입력해주세요");
		userEmail1.focus();
		return;
	} if(userEmail2.val()==''){		
		swal("이메일을 입력해주세요");
		userEmail2.focus();
		return;
	}
	
	$.ajax({
		type: 'POST',
		url: '/abcd_mart/user/checkUserEmail',
		data: {'email':email},
		dataType: 'text',
		success: function(data) {
			if(data=='exist'){
				$('.sub_type2.fc_red.duplicated').attr('style', 'display:inline');
			} else {
				$('.sub_type2.fc_red.ok').attr('style', 'display:inline');
				$('#checkUserEmailResult').val(userEmail1.val()+'@'+userEmail2.val());				
			}
		}
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});





$('input[name=userPwd]').on('focusout', function() {
  var userPwd = $(this).val();
  var userPwd2 = $('input[name=userPwd2]').val();
  $('span.check_password_noti').css('display','none');
  
  if(userPwd!='' && userPwd2!=''){

	  if(userPwd != userPwd2) {
  	    $('span.check_password_noti.incorrect').css('display', 'inline');//일치X
  	    return;
  	 }else if( userPwd == userPwd2){
  		$('span.check_password_noti.enter').css('display','inline');//일치
  		return;
  	 }
  }

});//focuseout 비밀번호
	
	
$('input[name=userPwd2]').on('focusout', function() {
	      $('span.check_password_noti').css('display','none');
	      
	      var userPwd2 = $(this).val();
	      var userPwd = $('input[name=userPwd]').val();
	      
	      if(userPwd!='' && userPwd2!=''){
	    	  if(userPwd != userPwd2) {
	      	    $('span.check_password_noti.incorrect').css('display', 'inline');//일치X
	      	    return;
	      	 }else if( userPwd == userPwd2){
	      		$('span.check_password_noti.ok').css('display','inline');//일치
	      		return;
	      	 }
	      }
});//focuseout 비밀번호2





function submit() {
    var $form = $('form#form-agreement');

    if(!$('input#cbPurchaseClause').is(':checked')) {
    	swal('구매이용약관에 동의해 주세요.');
        $('input#cbPurchaseClause').focus();
        return;
    }

    if(!$('input#cbEbankClause').is(':checked')) {
    	swal('전자금융거래 이용약관에 동의해 주세요.');
        $('input#cbEbankClause').focus();
        return;
    }

    if($('input[name=cbPrivateClause]:checked').val() == 'false') {
    	swal('개인정보 수집 및 이용에 대한 안내 (필수)에 동의해 주세요.');
        $('input[name=cbPrivateClause]').focus();
        return;
    }

    $('input[name=cbCheck]').val('true');

    $form.submit();
 
} 


function underAgeCheck() {
	swal({
		title: "회원가입",
		text: "만 14세 미만의 아동의 경우 가입이 제한됩니다."
	}).then((value) => {
		if('${value}') location.href = "/abcd_mart/main/index";
	});    
}





//**step02***************


//회원가입버튼클릭시
function joinUser() {
	
	var userName = $('input[name=userName]');
	var userBirthDay = $('input[name=userBirthDay]');
	var userId = $('input[name=userId]');
	var userPwd = $('input[name=userPwd]');
	var userEmail1 = $('input[name=userEmail1]');
	var userEmail2 = $('input[name=userEmail2]');
	var userPhone1 = $('select[name=handphoneNumber1]');
	var userPhone2 = $('input[name=handphoneNumber2]');
	var userPhone3 = $('input[name=handphoneNumber3]');
	

	if(userName.val()==''){
		userName.focus();
		swal('이름 항목을 입력해 주세요.');
		return;
	}else if(!/^[가-힣a-zA-Z]+$/.test(userName.val())) {
		userName.focus();
		swal('이름은 한글 또는 영문으로 작성해 주세요.');
    	return;
	}
	if(userBirthDay.val()==''){
		swal('생년 월일을 입력해 주세요.');
		userBirthDay.focus();
		return;
	}
		
	var year = Number(userBirthDay.val().substr(0,4)); 
	var month = Number(userBirthDay.val().substr(4,2));
	var day = Number(userBirthDay.val().substr(6,2));
	
	var today = new Date();
	var yearNow = today.getFullYear();
	var monthNow = today.getMonth()+1;
	var dayNow = today.getDate();
	
	if (monthNow < 10) monthNow = "0" + monthNow;
	if (dayNow < 10)   dayNow   = "0" + dayNow;
	
	var todayFmt = yearNow + "" + monthNow + "" + dayNow;
	
	if(userBirthDay.val() == "" || todayFmt < userBirthDay.val() || 
			year < 1900 || year > yearNow ||
			month < 1 || month > 12 || day < 1 || day > 31) {
		  swal("생년월일을 정확하게 입력해 주시기 바랍니다.");
		  userBirthDay.focus();
	    return;
	}	
	if((month==4 || month==6 || month==9 || month==11) && day==31) {
		  swal("생년월일을 정확하게 입력해 주시기 바랍니다.");
		  userBirthDay.focus();
	    return;
	}	
	if(month == 2) {
	    var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
	    if (day>29 || (day==29 && !isleap)) {
	  	  swal("생년월일을 정확하게 입력해 주시기 바랍니다.");
	  	  $('input[name=userBirthDay]').focus();
	        return;
	    }
	}
	
	var result = todayFmt - parseInt(userBirthDay) - 140000;
	if(result < 0) {
		swal("만 14세 미만의 아동의 경우 가입이 제한됩니다.");
	    return;
	}
	
	//아이디
	if(userId.val()==''){
		swal("아이디를 입력해주세요");
		userId.focus();
		return;
	}	
	//비밀번호	
	if(userPwd.val()==''){
		swal('비밀번호 항목을 입력해 주세요.');
		userPwd.focus();
	   return;
	}
	
	if($('input[name=userPwd2]').val()==''){
		swal('비밀번호 확인 항목을 입력해 주세요.');
	   $('input[name=userPwd]2').focus();
	   return;
	}

	
	//특문유효성
	var checkResult = pwd_check(userPwd.val());
	if(!checkResult){
		return;
	}
	
	//이메일 유효성
	if(userEmail1.val()==''){
	   swal("이메일을 입력해주세요");
	   userEmail1.focus();
	   return;
	}
	if(userEmail2.val()==''){		
		swal("이메일을 입력해주세요");
		userEmail2.focus();
		return;
	}
	
	if(userPhone2.val()==''){
		userPhone2.focus();
		swal("핸드폰번호를 입력해주세요.");
		return;
	}
	if(userPhone3.val()==''){
		userPhone3.focus();
		swal("핸드폰번호를 입력해주세요.");
		return;
	}
	
	
	//비밀번호 불일치시 회원가입안됨
	var userPwd2 = $('input[name=userPwd2]');
	if(userPwd.val()!='' && userPwd2.val()!=''){
		if(userPwd.val() != userPwd2.val()) {
    		swal("비밀번호가 일치하지않습니다.");
      	    return;
  	    }
	}
	
	if($('#checkUserIdResult').val()!=userId.val()) {
		swal('아이디를 중복체크 해주세요');
		return false;
	}
	if($('#checkUserEmailResult').val()!=userEmail1.val()+'@'+userEmail2.val()) {
		swal('이메일 중복체크 해주세요');
		return false;
	}
	
	$.ajax({
		type: 'POST',
		url: '/abcd_mart/user/signUp',
		data: {'id':userId.val(),
				'password':userPwd.val(),
				'name':userName.val(),
				'email':userEmail1.val()+'@'+userEmail2.val(),
				'phone':userPhone1.val()+userPhone2.val()+userPhone3.val(),
				'birthday':userBirthDay.val()},
		dataType: 'text',
		success: function(data) {
			if(data=='fail'){
				swal('회원가입 실패');
			} else {
				swal({
					title: "환영합니다",
					text: "확인을 누르시면 로그인페이지로 이동합니다."
				}).then((value) => {
					if('${value}') location.href = "/abcd_mart/user/loginPage";
				});
			}
		}
	});
}

function pwd_check(userPwd) {
 
  if( (userPwd.length<8) ||(userPwd.length>20)|| (!userPwd.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~,-])|([!,@,#,$,%,^,&,*,?,_,~,-].*[a-zA-Z0-9])/)))  {
    swal("비밀번호는 영문(대소문자구분),숫자,특수문자(~!@#$%^&*()-_? 만 허용)를 혼용하여 8자 이상을 입력해주세요.");
    return false;
  }
  return true;
}





