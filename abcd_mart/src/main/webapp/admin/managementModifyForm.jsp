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



<form action="/abcd_mart/admin/managementModify" method="post">
	<table border=1>
		<tr>
			<th width="100px" height="50px">상품코드</th>
			<th width="100px" height="50px">수량</th>
			<th width="100px" height="50px">사이즈</th>
			<th width="100px" height="50px">색상</th>
		</tr>
		
		
		<c:forEach items="${list }" var="list" varStatus="status">
			<tr>
				<td height="50px" align="center">${list.prdtCode}</td>
				<td height="50px" align="center"><input type="text" value="${list.prdtQty}" size="2"></td>
				<td height="50px" align="center">${list.prdtSize}</td>
				<td height="50px" align="center">${list.prdtColor}</td>
	
			</tr>
			
		</c:forEach>
	
	</table>
</form>

		<input type="submit" value="수정" id="managementModify_btn" style="width:75px; height:40px; margin-top:10px; margin-left:350px;">
</body>
</html>