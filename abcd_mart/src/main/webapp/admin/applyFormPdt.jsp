<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<h3 style="margin-left:400px">상품등록</h3>
				<form id="applyFormPdt_Form">
				<input type="hidden" name="prdtGood">
				<table class="applyFormPdt basicTable" border="1" cellpadding="3" frame="hsides" rules="none">
				
				<tbody>
				<tr>
					<th width="150px" height="70px">한글 상품명</th>
					<td width="300px"><input type="text" size="33" name="prdtMainName" id="prdtMainName"></td>
					
					<th align="center" width="150px" height="70px">영어 상품명</th>
					<td width="300px"><input type="text" size="33"  name="prdtMiniName" id="prdtMiniName"></td>
				</tr>
				
				<tr>
					<th align="center" width="150px" height="70px" align="center">스타일 코드</th>
					<td width="700px" colspan="3"><input type="text" size="33"  name="prdtStyleCode" id="prdtStyleCode"></td>
				</tr>
				
				<tr>
					<th align="center" width="150px" height="70px">상품코드</th>
					<td width="700px" colspan="3"><input type="text" size="33" name="prdtCode"  id="prdtCode"></td>
				</tr>
				
				<tr>
					<th width="150px" height="70px">상품 브랜드</th>
					<td width="300px"><input type="text" size="33" name="prdtBrand" id="prdtBrand"></td>
					
					<th align="center" width="150px" height="70px">상품 색상</th>
					<td width="300px"><input type="text" size="33"  name="prdtColor" id="prdtColor"></td>
				</tr>
				
				<tr>
					<th align="center" width="150px" height="70px">상품 성별</th>
					<td width="700px" colspan="3">
						<input type="radio" name="prdtGender" id="prdtGender" value="남자" checked="true">남자&ensp;
						<input type="radio" name="prdtGender" id="prdtGender" value="여자">여자&ensp;
					</td>
				</tr>
				
				
				<tr>
					<th width="150px" height="70px">가  격</th>
					<td width="300px"><input type="text" size="33" name="prdtPrice" id="prdtPrice"></td>
					
					<th align="center" width="150px" height="70px">배송비</th>
					<td width="300px"><input type="text" size="33" name="prdtDeliveryPrice" id="prdtDeliveryPrice"></td>
				</tr>
				
				<tr>
					<th width="150px" height="70px">대분류</th>
					<td width="300px">
						<select id="prdtCategory1">
							<option value="sportshoes">sportshoes</option>
							<option value="shoes">shoes</option>
							<option value="sandal">sandal</option>
							<option value="boots">boots</option>
						</select>
					</td>
					
					<th align="center" width="150px" height="70px">소분류</th>
					<td width="300px">
						<select id="prdtCategory2">
							<option value="converse">converse</option>
							<option value="slipon">slipon</option>
							<option value="sneakers">sneakers</option>
							<option>-----------</option>
							<option value="oxford">oxford</option>
							<option value="loafer">loafer</option>
							<option value="deckshoes">deckshoes</option>
							<option value="flat">flat</option>
							<option value="heel">heel</option>
							<option>-----------</option>
							<option value="flipflop">flipflop</option>
							<option value="slid">slid</option>
							<option value="strapsandal">strapsandal</option>
							<option>-----------</option>
							<option value="workboots">workboots</option>
							<option value="anchorbooty">anchorbooty</option>
							<option value="rainboots">rainboots</option>
							<option value="boots">boots</option>
							<option value="paddingboots">paddingboots</option>
						</select>
					
					</td>
				</tr>
				<tr>
					<th width="150px" height="70px">최소 신발사이즈</th>
					<td width="700px" colspan="3">
						<select id="prdtSize" name="prdtSize">
							<option value="250">250</option>
							<option value="270">220</option>
						</select>
						
						
					</td>

				</tr>
				
				
				
				</tbody>
	</table>
	</form>
	
	<div style="margin-left:400px">
	<br>
		<input type="button" class="btn btn-default btn-md" id="applyPdt_Btn" value = "등록" />

	</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script src="../js/adminJs/adminJs.js"></script>

</html>