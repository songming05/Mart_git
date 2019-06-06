$('select[name="foundMailDomain"]').on('change', function() {
	var foundMail = $('select[name="foundMailDomain"]').val();
	

	if(foundMail == 'insert'){
		 $('#userMailAddress2').val('');
		 $('#userMailAddress2').prop('readonly',false);
	     
	}else{
		$('#userMailAddress2').val(foundMail);
		$('#userMailAddress2').prop('readonly',true);
	}
});

$('select[name="mailDomain"]').on('change', function() {
	var foundMail = $('select[name="mailDomain"]').val();
	

	if(foundMail == 'insert'){
		 $('#userMailAddress2').val('');
		 $('#userMailAddress2').prop('readonly',false);
	     
	}else{
		$('#userMailAddress2').val(foundMail);
		$('#userMailAddress2').prop('readonly',true);
	}
});

	
	

//확인하기 클릭
function findIdEmail(){
	var way ='email';
	var userName = $('#userNameEmail');
	//var userNamePhone = $('#userNamePhone');
	var email1 =$('#userMailAddress1');
	var email2 =$('#userMailAddress2');
	if(userName.val()==''){
		swal("이름을 입력해주세요");
	}else if(email1.val()==''||email2.val()=='') {
		swal("이메일 주소를 입력해주세요");
	}else {
		$.ajax({
			type: 'POST',
			url: '/abcd_mart/user/findMyId',
			data: {'way': way,//DB column
					'name': userName.val(),
					'email': email1.val()+'@'+email2.val()},
			dataType:'text',
			success: function(userId) {
				console.log(userId);
				swal(userId);
			}			
		});	
	}
}

function findPwdEmail() {
	var way ='email';
	var userId = $('#userId');
	var userName = $('#userName');
	//var userNamePhone = $('#userNamePhone');
	var email1 =$('#userMailAddress1');
	var email2 =$('#userMailAddress2');
	if(userId.val()==''){
		swal("아이디를 입력해주세요");
	}else if(userName.val()==''){
		swal("이름을 입력해주세요");
	}else if(email1.val()==''||email2.val()=='') {
		swal("이메일 주소를 입력해주세요");
	}else {
		$.ajax({
			type: 'POST',
			url: '/abcd_mart/user/findMyPwd',
			data: {'way': way,//DB column
					'id': userId.val(),
					'name': userName.val(),
					'email': email1.val()+'@'+email2.val()},
			dataType:'text',
			success: function(exist) {				
				console.log(exist);
				if(exist=='exist'){
					Swal.mixin({
						input: 'text',
						confirmButtonText: 'Next &rarr;',
						showCancelButton: true,
						progressSteps: ['1', '2']
					}).queue([
						{title: '비밀번호 변경',
							text: '변경하실 비밀번호를 입력하세요'},
						{title: '비밀번호 재입력',
						    text: '한번 더 입력하세요'}
					]).then((result) => {
						if (result.value) {
							var pwd = result.value[0];
							var repwd = result.value[1];
							if(pwd==repwd){
								//console.log('일치');
								$.ajax({
									type:'POST',
									url:'/abcd_mart/user/pwdReset',
									data:{'id': userId.val(),
											'password':pwd},
									success: function() {
										Swal.fire({
									    	title: '비밀번호 변경 완료!',
//									    	html: 'Your answers: <pre><code>' +
//									    		result.value +
//									    		JSON.stringify(result.value) +
//									    		'</code></pre>',
									    	confirmButtonText: '확인'
									    })
									}									
								});	
							} else if(pwd!=repwd){
								//console.log('불일치');
								Swal.fire({
							    	title: '비밀번호가 일치하지 않습니다!',
							    	confirmButtonText: '확인'
							    })
								
							}		  
						    
						}
					});					
				} else {
					swal('일치하는 정보가 없습니다');
				}
			}			
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}