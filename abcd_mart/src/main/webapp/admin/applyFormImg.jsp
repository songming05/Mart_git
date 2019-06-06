<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <br>
    <h3><strong>이미지등록</strong></h3>
	<form name="applyFormImg_Form" id="applyFormImg_Form" method="post" enctype="multipart/form-data">
	<table class="applyFormImg basicTable" border="1" cellpadding="3" frame="hsides" rules="none" 
  					 action="/abcd_mart/admin/applyPdt" method="post">

				<tbody>
				<tr>
					<th width="150px" height="50px">상품코드</th>
					<td width="500px"><input type="text" width="200px" id="prdtCode" value='${prdtCode }' name='prdtCode'> </td>
				</tr>
				<tr>
					<th align="center" height="50px">이미지(4장)</th>
					<td width="500px"><input type="file" width="200px" name="files1" id="files1" multiple>
					<div id="files1_div"></div> <!-- div할때 사용중복체크 꼭 하자  -->
					<input type="hidden" id="files1_check">
					</td>
				</tr>
				
				<tr>
					<th align="center" height="50px">상세이미지(3장)</th>
					<td width="300px"><input type="file" width="200px" name="files2" id="files2" multiple>
					<div id="files2_div"></div>
					<input type="hidden" id="files2_check">
					</td>
				</tr>
				
				
				
				</tbody>
	</table>
	
	<div style="margin-left:300px">
	<br>
		<input type="button" class="btn btn-default btn-md" id="applyImg_Btn" value = "등록" />

	</div>
	
	
	</form>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/adminJs/adminJs.js"></script>
<script>
$("input[name=files1]").change(function () {

 	$('#files1_div').empty();
	$('#files1_check').val('');

	
    var fileInputCheck1 = document.getElementById("files1");
    var filesCheck1 = fileInputCheck1.files;
    
    if(filesCheck1.length!=4){
    	$('#files1_div').text('파일을 4개 선택해주세요').css('color','red').css('font-size','8pt').css('font-weight','bold');
    	return;
    }
    
 	$('#files1_check').val('check_Ok'); 
    
});


$('input[name=files2]').change(function () {

	$('#files2_div').empty();
	$('#files2_check').val('');
	
    var fileInput2 = document.getElementById("files2");
    var files2 = fileInput2.files;
    if(files2.length!=3){
    	$('#files2_div').text('파일을 3개 선택해주세요').css('color','red').css('font-size','8pt').css('font-weight','bold');
    	return;
    }
    
    $('#files2_check').val('check_Ok');
});


$('#applyImg_Btn').click(function(){
	var fileInput1 = document.getElementById("files1");
	var file_list1= fileInput1.files; //file_list1에 4개 담김
	
	var fileInput2 = document.getElementById("files2");
	var file_list2= fileInput2.files; //file_list2에 3개 담김
	
	var fileArray1 = new Array();
	var fileArray2 = new Array();
	
	for (var i = 0; i < file_list1.length; i++) {
        
		fileArray1.push(file_list1[i].name);
    }
	
	for (var i = 0; i < file_list2.length; i++) {
        
		fileArray2.push(file_list2[i].name);
    }

	//alert(fileArray);
	
	if($('#files1_check').val()==''){
		alert("이미지를 4장 넣어주세요");
		return;
	}else if($('#files2_check').val()==''){
		alert("상세이미지를 3장 넣어주세요");
		return;
	}else{
		alert($('#prdtCode').val());
		//submit()으로 간다 
		$.ajax({
			type : 'post',
			url : '/abcd_mart/admin/applyImg',
			data : { 'fileArray1' : fileArray1 ,
					 'fileArray2' : fileArray2 ,
					 'prdtCode' : $('#prdtCode').val() },
			traditional : true,
			success : function(data){
				alert("등록성공");
				/* swal({
					title: "이미지",
					text: "등록성공"
				}).then((value) => {
					if('${value}') //location.href ="location.href='/abcd_mart/admin/applyFormPdt";
				});
				 */
			}
		});//ajax
	}
});

</script>

</html>