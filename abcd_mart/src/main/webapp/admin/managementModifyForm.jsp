<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<img width="200" src="../image/page/product/${list[0].prdtCode}/${list[0].prdtCode}_title.jpg">



	<table border=1>
		<tr>
			<th width="100px" height="50px">상품코드</th>
			<th width="100px" height="50px">수량</th>
			<th width="100px" height="50px">사이즈</th>
			<th width="100px" height="50px">색상</th>
		</tr>
	</table>
		
		
		<c:forEach items="${list }" var="list" varStatus="index" >
			<form method="post" id="managementModifyForm${index.count }">
			<table border=1>
			<tr>
							
				<td height="50px" width="100px" align="center">
					${list.prdtCode}
					<input type="hidden" name="prdtCode" class="prdtCode" value="${list.prdtCode}">
				</td>
				<td height="50px"  width="100px" align="center">
					<input type="text" value="${list.prdtQty}" class="prdtQty" name="prdtQty" size="2">
					<input type="button" value="수정" class="managementModify_btn">
				</td>
				<td height="50px" width="100px" align="center">
					${list.prdtSize}
					<input type="hidden" name="prdtSize" class="prdtSize" value="${list.prdtSize}">
				</td>
				<td height="50px" width="100px" align="center">${list.prdtColor}</td>
				
			</tr>
			</table>
			</form>
			
			
		</c:forEach>
	
		
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="../js/adminJs/adminJs.js"></script>
</html>
