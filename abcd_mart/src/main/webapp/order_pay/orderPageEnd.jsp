<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />

<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>

<!-- quickBar -->
<link rel="stylesheet" href="../css/quickBar.css"/>	


<title>주문 완료</title>

<style type="text/css">
#winHeader{
	width:100%;
	height:50px;
	text-align:center;
	background: #e50015;
	color:#ffffff;
	font-weight:bold;
	font-size:19px;
	line-height:45px;
	
}
#map {
    padding: 30px 0;
    margin: 0 40px;
}
div {
    display: block;
}
.orderTable{
    border-collapse: separate;
	width:60%;
	height:400px;
	margin:auto;
	border-top:1px solid #444444;
	border-bottom:1px solid #444444;
}
.orderTable th,td{
	border-bottom:1px solid #dbdbdb;
	padding:10px;
}
.orderTable th{
    background: #f5f5f6;
}


</style>


<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript">
window.onload=function(){
	swal("결제가 완료되었습니다");	
}

</script>

</head>

<header>

<jsp:include page="../template/header.jsp"/>

</header>

<body>
<jsp:include page="../template/quickBarOther.jsp"/>


<h1 align="center">${pDTO.getId() }님 주문해주셔서 감사합니다</h2>
<br>
<br>

<h2 align="center" >결제정보</h3>
<br>
<table class="orderTable">

                    <colgroup>
                        <col width="125px"><col width="*"><col width="125px"><col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                          <th class="align-center">
                              <label for="map_type">총구매가</label>
                          </th>
                          <td>
                            <span class="shop2"><fmt:formatNumber value="${pDTO.getTotalPrice()+pDTO.getPoint()+pDTO.getCoupon()}" type="number"/>원</span>
                          </td>
                        </tr>
                        
                        <tr>
                          <th class="align-center">
                              <label for="map_tel">배송비</label>
                          </th>
                          <td><fmt:formatNumber value="${pDTO.getDlvyPrice() }" type="number"/>원</td>
                          
                        </tr>
                        
                        <tr>
                            <th class="align-center">
                                <label for="map_service">할인</label>
                            </th>
                            <td><fmt:formatNumber value="${pDTO.getCoupon() }" type="number"/>원</td>
                        </tr>
                        
                        <tr>
                            <th class="align-center">
                                <label for="map_address">포인트결제</label>
                            </th>
                            <td id="address" colspan="3"><fmt:formatNumber value="${pDTO.getPoint() }" type="number"/>원</td>
                        </tr>
                        <tr class="total">
                            <th class="align-center">
                                <label for="map_loca">총 결제 금액</label>
                            </th>
                            <td colspan="3"><fmt:formatNumber value="${pDTO.getTotalPrice()+2500 }" type="number"/>원</td>
                        </tr>
                        
                        <tr>
                            <th class="align-center">
                                <label for="map_loca">결제 수단</label>
                            </th>
                            <td colspan="3">${pDTO.getPayChoice()}</td>
                        </tr>
                        
                        <tr>
                            <th class="align-center">
                                <label for="map_loca">결제 시간</label>
                            </th>
                            <td colspan="3"><fmt:formatDate value="${pDTO.getLogtime()}" pattern="yyyy.MM.dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>    
           	</table>
           	<br>
           	<div align="center">
           		<input type="button" value="주문조회 하기">
                <input type="button" value="메인으로 가기">
           	</div>

</body>
<footer>

<jsp:include page="../template/mainFooter.jsp"/>

</footer>
<script type="text/javascript" src="../js/quickBar.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>
<script src="../js/order_pay/orderPage22.js"></script>


</html>