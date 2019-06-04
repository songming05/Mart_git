<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3 style="margin-left:400px">주문관리</h3>
				<table class="orderForm basicTable" border="1" cellpadding="3" frame="hsides" rules="none" 
  					 action="/abcd_mart/admin/-----" method="post">

				<tbody>
				<tr>
					<th width="150px" height="70px">주문일</th>
					<td width="700px">
						<div class="col-xs-3">
						<select id="" class="form-control input-sm" >
							<option>주문일</option>
							<option>입금일</option>
						</select>
					</div>
					</td>
				</tr>
				<tr>
					<th align="center" height="100px">주문상태</th>
					<td width="700px">
						<input type="checkbox" value="">주문완료&ensp; 
						<input type="checkbox" value="">결제완료&ensp; 
						<input type="checkbox" value="">배송준비중&ensp; 
						<input type="checkbox" value="">부분배송&ensp; 
						<input type="checkbox" value="">배송중&ensp; 
						<input type="checkbox" value="">분배배송완료&ensp; 
						<br>
						<input type="checkbox" value="">배송완료&ensp; 
						<input type="checkbox" value="">구매확정&ensp; 
						<input type="checkbox" value="">정산보류&ensp; 
						<br>
						<input type="checkbox" value="">주문무효&ensp; 
						<input type="checkbox" value="">주문취소&ensp; 
						<input type="checkbox" value="">결제취소&ensp; 
						<input type="checkbox" value="">결제실패&ensp; 
						
					</td>
				</tr>
				<tr>
					<th align="center" height="70px">결제수단</th>
					<td width="700px">
						<input type="checkbox" value="">신용카드&ensp; 
						<input type="checkbox" value="">휴대폰결제&ensp; 
						<input type="checkbox" value="">실시간계좌이체&ensp; 
						<input type="checkbox" value="">가상계좌&ensp; 
						<input type="checkbox" value="">무통장&ensp; 
						<input type="checkbox" value="">간편결제&ensp; 
						<input type="checkbox" value="">전체&ensp; 
					</td>
				</tr>

				<tr>
					<th align="center" height="70px">회원구분</th>
					<td width="700px">
						<input type="radio">전체&ensp; 
						<input type="radio">회원&ensp; 
						<input type="radio">비회원&ensp; 
					</td>
				</tr>
				<tr>
					<th align="center" height="70px">검색어</th>
					<td width="700px">
					<div class="col-xs-3">
						<select id="" class="form-control input-sm" >
							<option>주문번호</option>
							<option>주문자</option>
							<option>수령자</option>
							<option>입금자</option>
							<option>아이디</option>
							<option>이메일</option>
							<option>휴대폰</option>
							<option>상품명</option>
							<option>상품번호</option>
						</select>
					</div>
					
					<div class="col-xs-3">
						<input type="text" class="form-control input-sm">
					</div>
					</td>
				</tr>
				
			</tbody>
	</table>
	
	<div style="margin-left:400px">
	<br>
		<button type="button" class="btn btn-dark bg-red" id="applyPdt_Btn">검  색</button>
		<input type="button" class="btn btn-default btn-md bg-red text-primary" id="applyPdt_Btn" value = "검 색" />

	</div>