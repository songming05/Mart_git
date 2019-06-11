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
<table border=1>
	<tr>
		<th width="100px" height="50px">상품코드</th>
		<th width="100px" height="50px">수량</th>
		<th width="100px" height="50px">사이즈</th>
		<th width="100px" height="50px">색상</th>
		<th width="100px" height="50px">수정</th>
	</tr>
	
	
	<c:forEach items="${list }" var="list">
		<tr>
			<td height="50px" align="center">${list.prdtCode}</td>
			<td height="50px" align="center">${list.prdtQty}</td>
			<td height="50px" align="center">${list.prdtSize}</td>
			<td height="50px" align="center">${list.prdtColor}</td>
			<td height="50px" align="center"><input type="button" value="재고수정"></td>
		</tr>
		
	</c:forEach>

</table>
</body>
</html>