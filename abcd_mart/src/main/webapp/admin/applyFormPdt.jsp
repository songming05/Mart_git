<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<h3 style="margin-left:400px">상품등록</h3>
				<table class="applyFormPdt basicTable" border="1" cellpadding="3" frame="hsides" rules="none" 
  					 action="/abcd_mart/admin/applyPdt" method="post">

				<tbody>
				<tr>
					<th width="150px" height="70px">한글 상품명</th>
					<td width="300px"><input type="text" size="33" id="prdtMainName"></td>
					
					<th align="center" width="150px" height="70px">영어 상품명</th>
					<td width="300px"><input type="text" size="33"  id="prdtMiniName"></td>
				</tr>
				
				<tr>
					<th align="center" width="150px" height="70px" align="center">홈페이지 상품명</th>
					<td width="700px" colspan="3"><input type="text" size="33"  id="prdtStyleCode"></td>
				</tr>
				
				<tr>
					<th align="center" width="150px" height="70px">상품코드</th>
					<td width="700px" colspan="3"><input type="text" size="33"  id="prdtCode"></td>
				</tr>
				
				<tr>
					<th width="150px" height="70px">가  격</th>
					<td width="300px"><input type="text" size="33" id="prdtPrice"></td>
					
					<th align="center" width="150px" height="70px">배송비</th>
					<td width="300px"><input type="text" size="33"  id="prdtdeliveryPrice"></td>
				</tr>
				<tr>
					<th width="150px" height="70px">최소 신발사이즈</th>
					<td width="300px"><input type="text" size="33" id="sizeMin"></td>
					
					<th align="center" width="150px" height="70px">최대 신발사이즈</th>
					<td width="300px"><input type="text" size="33"  id="sizeMax"></td>
				</tr>
				
				</tbody>
	</table>
	
	<div style="margin-left:500px">
	<br>
		<input type="button" class="btn btn-default btn-md" id="applyPdt_Btn" value = "등록" />

	</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script src="../js/adminJs/adminJs.js"></script>

</html>