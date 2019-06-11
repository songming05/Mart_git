<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3 style="margin-left:400px">재고 관리</h3>
			<form id="prdtManagementForm" action="/abcd_mart/admin/prdtManagement" method="post">
				<table class="prdtManagementForm basicTable" border="1" cellpadding="3" frame="hsides" rules="none">

				<tbody>

				<tr>
					<th align="center" width="130px" height="70px">검색어</th>
					<td width="700px">
					<div class="col-xs-3">
						<select id="prdtSelect" name="prdtSelect" class="form-control input-sm" >
							<option value='prdtBrand'>브랜드</option>
							<option value='prdtCode'>품목(상품코드)</option>
							
						</select>
					</div>
					
					<div class="col-xs-3">
						<input type="text" class="form-control input-sm" id="prdtResult">
					</div>
					</td>
				</tr>
				
			</tbody>
		</table>
	</form>
	
	<div style="margin-left:400px; margin-bottom:50px">
	<br>
		<button type="button" class="btn btn-dark bg-red" id="prdtManagementForm_Btn">검  색</button>

	</div>
	
	<table class="prdtManagementForm basicTable2" id="basicTable2" border="1" cellpadding="3" frame="hsides" rules="none">
		<tr>
			<th width="150px" height="80px">상품코드</th>
			<th width="300px">브랜드명</th>
			<th width="150px">색상</th>
			<th width="150px">상품성별</th>
			<th width="200px">가격</th>

		</tr>
		<tbody id="table2Tbody"></tbody>
	</table>
	
	<!-- <div style="margin-left:750px; margin-bottom:50px">
	<br>
		<button type="button" class="btn btn-dark bg-red" id="prdtChangeForm_Btn">수량변경하기</button>
	</div> -->
	
	<div style="display:none; margin-bottom:100px" id="changeTable">
		<table class="basicTable" border="1" cellpadding="3" frame="hsides" rules="none">

				<tbody>

				<tr>
					<th align="center" width="200px" height="70px">품목(상품번호)</th>
					<td width="700px">

					<div class="col-xs-3">
						<input type="text" class="form-control input-sm" id="changePrdt">
					</div>
					</td>
				</tr>
				
				<tr>
					<th align="center" width="130px" height="70px">사이즈</th>
					<td width="700px">

					<div class="col-xs-3">
						<input type="text" class="form-control input-sm" id="changeSize">
					</div>
					</td>
				</tr>
				
				<tr>
					<th align="center" width="130px" height="70px">수량변경</th>
					<td width="700px">
					<div class="col-xs-3">
						<input type="text" class="form-control input-sm" id="changeQty">
					</div>
						<button type="button" class="btn btn-dark bg-red" id="prdtChange_Btn">변경</button>
						<button type="button" class="btn btn-dark bg-red" id="prdtClose_Btn">닫기</button>
					</td>
				</tr>
				
			</tbody>
		</table>
	</div>
	
	