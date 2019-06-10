<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰함</title>
<style type="text/css">
.postTable td{
	font-size:9pt;
}
.addressA:link{color: black; text-decoration: none;}
.addressA:visited{color: black; text-decoration: none;}
.addressA:hover{color: green; text-decoration: underline;}
.addressA:active{color: black; text-decoration: none;}

</style>
</head>
<body>

<table class="postTable" id="postTable" border="1" cellpadding="5" cellspacing="0" width="100%" >

 <tr>
 	<th width="70" align="center" >쿠폰번호</th>
	<th align="center" colspan="2"> 내 용 </th>
	<th align="center" colspan="1"> 할 인 가 격 </th>
 </tr>

<c:if test="${not empty homeList }"> 
   <c:forEach var="cpDTO" items="${homeList }"> 
	<tr>
 	 <td width="70" align="center" class="zipcode">${cpDTO.getSeq() }</td> 
	 <td align="left" colspan="2"><a href="#" class="addressA" onclick="checkCouponClose('${cpDTO.getSeq() }','${cpDTO.getCpSale() }')">${cpDTO.getCpName() }</a></td>
  	 <td align="center" colspan="1"><fmt:formatNumber value="${cpDTO.getCpSale() }" type="number"/>원</td>
	</tr> 
   </c:forEach>
  </c:if>
 </table>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script src="../js/order_pay/orderPage22.js"></script>

</html>

