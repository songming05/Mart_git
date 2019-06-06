<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <br>
    <h3><strong>이미지등록</strong></h3>
	<form name="applyFormImg_Form" id="applyFormImg_Form" method="post" enctype="multipart/form-data">
	<table class="applyFormImg basicTable" border="1" cellpadding="3" frame="hsides" rules="none" 
  					 action="/abcd_mart/admin/applyPdt" method="post">

				<tbody>

				<tr>
					<th align="center" height="50px">이미지</th>
					<td width="300px"><input type="file" width="200px" name="files1" id="files1" multiple></td>
				</tr>
				
				<tr>
					<td> <input type="file" id="contract_file" multiple> </td>
					<td> <input type="button" value="확인" name="check" id="check"> </td>
				</tr>
				</tbody>
	</table>
	</form>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/adminJs/adminJs.js"></script>
<script>

$(document).ready( function() {
	
	$("input[name=files1]").change(function () {
        
	        var fileInput = document.getElementById("files1");

	        var files = fileInput.files;
	        var file;
	         
	        alert(files.length);
	        for (var i = 0; i < files.length; i++) {
	              
	            file = files[i];

	            alert(file.name);
	        }
	          
	});

});


</script>

</html>