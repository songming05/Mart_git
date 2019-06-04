<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABCD MART 위치 정보</title>
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
table{
	width:100%;
	border-top:1px solid #444444;
	border-bottom:1px solid #444444;
}
th,td{
	border-bottom:1px solid #dbdbdb;
	padding:10px;
}
th{
    background: #f5f5f6;
}

</style>
</head>
<body>
<div id="winHeader">ABCD MART 매장정보</div>
<br>
<div id="map" style="width:550px;height:250px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0b4cc6afb801fb82a9a0fd80ffeff870"></script>
<script type="text/javascript">

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(${centerDTO.latitude},${centerDTO.longitude}), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng( ${centerDTO.latitude}, ${centerDTO.longitude}); 

//마커를 생성합니다
var marker = new daum.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>
<br><br>

 <table>
                    <colgroup>
                        <col width="125px"><col width="*"><col width="125px"><col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="align-center">
                                <label for="map_name">매장명</label>
                            </th>
                            <td>${centerDTO.getBuildingname() }</td>
                            <th class="align-center">
                                <label for="map_type">매장형태</label>
                            </th>
                            <td>
                                
                                        <span class="shop2">창고형</span>
                                    
                            </td>
                        </tr>
                        <tr>
                            <th class="align-center">
                                <label for="map_tel">전화</label>
                            </th>
                            <td>${centerDTO.getTel() }</td>
                            <th class="align-center">
                                <label for="map_time">영업시간</label>
                            </th>
                            <td>${centerDTO.getOpenTime() }</td>
                        </tr>
                        <tr>
                            <th class="align-center">
                                <label for="map_service">매장서비스</label>
                            </th>
                            <td colspan="3">
                                <p class="ri_line">
                                    
                                    <em><span class="shok2">교환/환불</span></em>
                                    <em><span class="shok4">포인트사용</span></em>
                                    
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th class="align-center">
                                <label for="map_address">주소</label>
                            </th>
                            <td id="address" colspan="3"></td>
                        </tr>
                        <tr>
                            <th class="align-center">
                                <label for="map_loca">위치</label>
                            </th>
                            <td colspan="3">ABCD</td>
                        </tr>

                    </tbody>
                </table>

<!--${centerDTO.getSido()} ${centerDTO.getSigungu() }${centerDTO.getYubmyundong() }${centerDTO.getRi() }${centerDTO.getRoadname() }  -->
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript">
$(function(){
	var address = '${centerDTO.getSido()}'+' '+ '${centerDTO.getSigungu() }'+' '+'${centerDTO.getYubmyundong() }'+' '+'${centerDTO.getRi() }'+' '+'${centerDTO.getRoadname()}';
	address = address.replace(/null/g,'');
	$('#address').text(address);
	
	
});

</script>
</html>