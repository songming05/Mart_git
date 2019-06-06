<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3 style="margin-left:400px">반품 관리</h3>
			<form id="orderReturnForm" action="/abcd_mart/admin/orderReturn" method="post">
				<table class="orderDepositForm basicTable" border="1" cellpadding="3" frame="hsides" rules="none">

				<tbody>		
				<tr>
					<th width="150px" height="70px">반품신청일</th>
					<td width="700px">
						<input type="date" id="returnDate" name="returnDate">
					</td>
				</tr>	
				<tr>
					<th align="center" height="70px">반품 상태</th>
					<td width="700px"> 
						<input type="radio" name="returnSts" value="반품신청" checked="true">반품신청&ensp; 
						<input type="radio" name="returnSts" value="반품완료">반품완료&ensp; 
					</td>
				</tr>
				
				<tr>
					<th align="center" height="70px">검색어</th>
					<td width="700px">
					<div class="col-xs-3">
						<select id="returnSelect" name="returnSelect" class="form-control input-sm" >
							<option value='returnId'>아이디</option>
							<option value='returnPrdt'>품목(상품코드)</option>

						</select>
					</div>
					
					<div class="col-xs-3">
						<input type="text" class="form-control input-sm" name="returnResult">
					</div>
					</td>
				</tr>
				
			</tbody>
		</table>
	</form>
	
	<div style="margin-left:400px; margin-bottom:50px">
	<br>
		<button type="button" class="btn btn-dark bg-red" id="orderReturn_Btn">검  색</button>

	</div>
	
	<table class="orderDepositForm basicTable2" id="basicTable2" border="1" cellpadding="3" frame="hsides" rules="none">
		<tr>
			<th width="150px" height="80px">주문일</th>
			<th width="150px" height="80px">반품신청일</th>
			<th width="150px" >아이디</th>
			<th width="300px">품목</th>
			<th width="150px">수량</th>
			<th width="200px">결제금액</th>
			<th width="200px">반품상태</th>
		</tr>
		<tbody id="table2Tbody"></tbody>
	</table>
	
	
	<div style="margin-left:750px; margin-bottom:50px">
	<br>
		<button type="button" class="btn btn-dark bg-red" id="orderReturnForm_Btn">반품상태 변경하기</button>
	</div>
	
	
	<div style="display:none; margin-bottom:100px" id="changeTable2">
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
	
	
	