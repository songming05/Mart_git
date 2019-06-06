<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3 style="margin-left:400px">주문관리</h3>
				<table class="orderForm basicTable" border="1" cellpadding="3" frame="hsides" rules="none" 
  					 action="/abcd_mart/admin/-----" method="post">

				<tbody>

				<tr>
					<th align="center" height="60px" width="130px">주문상태</th>
					<td width="700px">
						<input type="checkbox" class="orderSts" value="주문완료" >주문완료&ensp; 
						<input type="checkbox" class="orderSts" value="주문취소" >주문취소&ensp;  
						
					</td>
				</tr>
				<tr>
					<th align="center" height="60px" width="80px">결제상태</th>
					<td width="700px">
						<input type="checkbox" value="">결제완료&ensp; 
						<input type="checkbox" value="">결제취소&ensp;	
					</td>
				</tr>
				
				<tr>
					<th align="center" height="60px" width="80px">배송상태</th>
					<td width="700px">
						<input type="checkbox" value="">배송준비중&ensp; 
						<input type="checkbox" value="">배송중&ensp;
						<input type="checkbox" value="">배송완료&ensp;	
					</td>
				</tr>

				<tr>
					<th align="center" height="70px">회원구분</th>
					<td width="700px">
						<input type="radio" checked>전체&ensp; 
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
							<option>아이디</option>
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
		<input type="button" class="btn btn-default btn-md bg-red text-primary" id="orderForm_Btn" value = "검 색" />

	</div>