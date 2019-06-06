<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최근 배송지</title>
</head>
<body>
<table id="postTable" border="1" cellpadding="5" cellspacing="0" width="100%" >

 <tr>
 	<td width="70" align="center" >우편번호</td>
	<td align="center" colspan="3">주소</td>
 </tr>

<c:if test="${not empty homeList }"> 
   <c:forEach var="orderDTO" items="${homeList }"> 
	<tr>
 	 <td width="70" align="center" class="zipcode">${orderDTO.getDlvyZipcode() }</td> 
	 <td align="left" colspan="3"><a href="#" class="addressA" onclick="checkPostClose('${orderDTO.getDlvyZipcode() }','${orderDTO.getDlvyAddr1() }')">${orderDTO.getDlvyAddr1() }</a></td>
    </tr> 
   </c:forEach>
  </c:if>
 </table>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script src="../js/order_pay/orderPage22.js"></script>

</html>

