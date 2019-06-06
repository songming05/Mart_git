<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="ABCD-Mart" />
<title>결제페이지</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>


<link rel="stylesheet" href="../css/sub.css">
 
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

<body>
<header>
<jsp:include page="../template/header.jsp"/>

</header>


<div class="container_wrap">
 <div class="container_area"> 
  <div class="container_layout">
    <header class="add_header">
     <h2 class="sub_tit">주문서작성/결제</h2>
    </header>	
    <form name="orderForm" id="orderForm" method="post" action="/abcd_mart/order_pay/orderPageEnd.do">
    <input name="id" id="id" type="hidden" value="${id }">
    <input name="abcdId" id="abcdId" type="hidden" value="${id}">
 	<!-- order_basketCont -->
            <section class="order_basketCont order_sheet">
                <ul class="order_step">
                    <li class="step1"><em>01</em><p>장바구니</p></li>
                    <li class="step2 this"><em>02</em><p>주문서작성/결제</p></li>
                    <li class="step3"><em>03</em><p>결제완료</p></li>
                    <li class="step4"></li>
                </ul>
                <!-- basket_box 일반상품-->
                <div class="basket_box mt40">
                    <div class="positR">
                        <h3 class="tit_type1 fs16 ml10">주문 리스트</h3>
                       
                    </div>
                    <div class="table_basic no_point mt10 gallery_line_type1">
                        
                        <table class="tableA">
							<colgroup>
								<col width="430">
								<col width="95">
								<col width="80">
								<col width="165">
								<%-- <col width="120">
                                
								<col width="130"> --%>
                                
								<col width="*">
							</colgroup>
							<thead>
								<tr>
									<th>상품명/옵션</th>
									<th>판매가</th>
									<th>수량</th>
									<th>할인금액</th>
									<th>주문금액<br>(적립예정 포인트)</th>
								</tr>
							</thead>
							<tbody>
								 
								<!--상품 리스트 for문-->
								<c:if test="${not empty orderList }"> 
								
								   <c:set var="totalPrice" value="0"/><!-- 총가격 계산 변수 -->
								   <c:set var="discount"  value="0"/><!-- 할인가격 변수 -->
								   <c:set var="totalPoint" value="0"/><!-- 총합 포인트 변수 -->
								   
								   <c:forEach var="orderDTO" items="${orderList }"> 
								   <c:set var="totalPrice" value="${totalPrice + orderDTO.getShoesprice() }"/>
								   <c:set var="discount" value="${discount + orderDTO.getShoesdiscount() }"/>
										<tr class="group-center">
											<td class="align-left modeloutBox">
											<input type="hidden" name="abcdCode" value="${orderDTO.getPrdtcode()}"><!-- 상품코드 -->
											<input type="hidden" name="shoesimage" value="${orderDTO.getShoesimage()}"><!-- 상품이미지 -->
											
												<div class="model_img_box">
													<img src="" alt="SPLINE SCRIPT" onerror="imageError(this)"/>
													이미지명:${orderDTO.getShoesimage() }
													<input name="shoesimage" id="shoesimage" type="hidden" value="${orderDTO.getShoesimage() }">
												</div>
												
												<div class="model_txt_box">
													<div class="model_box">
														<span class="brand">${orderDTO.getShoesbrand() }</span><!--상품명-->
														<span class="name bold">${orderDTO.getShoesname() } </span><!--이미지-->
														<span class="tit_type3">${orderDTO.getShoescolor() }</span>
														<em class="option">옵션 : <span>${orderDTO.getShoessize()}</span></em><!--사이즈-->
													</div>
												</div>
											</td>
											<td class="orderPrice">
												<input id="orderPrice" type="hidden" value="${orderDTO.getShoesprice() }">
												<span><fmt:formatNumber value="${orderDTO.getShoesprice() }" type="number"/></span>원<!--가격-->							
											</td>
											<td class="check_list_box">
												1
											</td>
											
											<td>
												<p class="mt5 mb15"><a data-rel="layer" href="#applyCoupon" class="btn_sType5" onclick="applyCouponA(this, '0071357', 1, 22506054, 0);">쿠폰조회/적용</a></p>
												
												<em class="tit_type3 mt5"><span class="dscntAmt"><fmt:formatNumber value="${orderDTO.getShoesdiscount() }" type="number"/></span></em>원
												<em class="showmoreBox" style="display: none;">
													<a href="javascript://" class="showmore">더보기</a>
													<span class="showBox"></span>
												</em>
											</td>
											<td class="totalPrice">
											    <div class="od-won"><span class="order_price"><fmt:formatNumber value="${orderDTO.getShoesprice()-orderDTO.getShoesdiscount() }" type="number"/></span>원</div>
												<div class="od-point">
												 <div style="font-size: 11px; color: #666; font-weight:bold;">
												  <span class="prdt_point" style="font-size: 11px; color: #666;"><fmt:formatNumber value="${orderDTO.getShoespoint() }" type="number"/></span> 
												  P
												 </div>
												</div>
											</td>
										</tr>
									 </c:forEach>
									<%--  <c:out value="${totalPrice }"/>
									 <c:out value="${discount }"/> --%>
								  </c:if>
								
							</tbody>
						</table>
						
                    </div>
                </div>
                <!-- // basket_box -->
                
	                <!-- total_price -->
		                <div class="total_price mt40">
		                    <div class="totalBox total1">
		                        <dl>
		                            <dt>주문금액</dt>
		                            <dd class="ordersPrice"><fmt:formatNumber value="${totalPrice }" type="number"/><span>원</span></dd>
		                        </dl>
		                    </div>
		                    <div class="totalBox total2">
		                        <dl>
		                            <dt>총 할인금액</dt>
		                            <dd class="totalDscntArea"><fmt:formatNumber value="${discount }" type="number"/><span>원</span></dd>
		                        </dl>
		                        <ul class="list_type1" id="dscntInfoUl" style="display:none;">
		                            
		                        </ul>
		                    </div>
		                    <div class="totalBox total3">
		                        <dl>
		                            <dt>배송비</dt>
		                            <dd class="orderDlvyAmtArea">2500<span>원</span></dd>
		                            
		                        </dl>
		                    </div>
		                    <div class="totalBox total4">
		                        <dl>
		                            <dt>결제예정금액</dt>
		                            <dd class="fc_type1" id="totalAmtArea"><fmt:formatNumber value="${totalPrice+2500 }" type="number"/><span>원</span></dd>
		                        </dl>
		                        <input type="hidden" name="orderAmt" value="${totalPrice+2500 }"/>
		                    </div>
		                </div>
	                <!-- //total_price -->

                <div class="mt60">
                    <h3 class="tit_type1 fs16 ml10">주문고객 정보</h3>
                    <section id="buyerInfoSection" class="table_basic mt10 bgfa">
                        <table class="tableA">
                            <colgroup>
                                <col width="160px"><col width="*"><col width="160px"><col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>
                                        <label for="or_name"><em class="fc_type1">＊</em> 주문하시는 분</label>
                                    </th>
                                    <td colspan="3">
                                        <input type="text" name="buyerName" value="abcd" maxlength="25" id="or_name" style="width:130px;" readonly="readonly"/>
                                        <input type="checkbox" name="changeBuyerInfo" class="ml10" id="or_namech"/> <label for="or_namech">주문자 변경</label>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <label for="or_phone"><em class="fc_type1">＊</em> 휴대폰 번호</label>
                                    </th>
                                    <td>
                                        
                                                <select name="buyerTel1" id="buyerTel1" style="width:97px;" disabled>
												    <option value="010">010</option>
												    <option value="011">011</option>
												    <option value="016">016</option>
												    <option value="017">017</option>
												    <option value="018">018</option>
												    <option value="019">019</option>
												</select>

                                                -
                                                <input type="text" name="buyerTel2" value="7777" class="text inputNumberText" maxlength="4" style="width:97px" readonly="readonly"/>
                                                -
                                                <input type="text" name="buyerTel3" value="7777" class="text inputNumberText" maxlength="4" style="width:97px" readonly="readonly"/>
                                            
                                    </td>
                                    <th>
                                        <label for="or_mail"><em class="fc_type1">＊</em> 이메일 주소</label>
                                    </th>
                                    <td>
                                        
                                                <input type="text" name="buyerEmail1" value="abcd" class="text" style="width:150px" id="or_email" readonly="readonly"/>
                                                @
                                                <input type="text" name="buyerEmail2" value="naver.com" class="text" style="width:151px" readonly="readonly"/>
                                            
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </section>
                </div>
                <div class="mt60">
                    <h3 class="tit_type1 fs16 ml10">배송지 정보</h3>
                    <section id="dlvyInfoSection" class="table_basic mt10 bgfa">
                        <table class="tableA">
                            <colgroup>
                                <col width="160px"><col width="*"><col width="160px"><col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>
                                        <label for="or_ch">&nbsp;&nbsp;배송방법 선택</label>
                                    </th>
                                    <td colspan="3">
	                                        <input type="radio" id="or_ch1" name="dlvyTypeCode" value="01" class="mr5" checked="checked"><image src="https://image.abcmart.co.kr/nexti/images/abcmart_new/pc_delivery_icon.jpg"/>&nbsp;<label for="or_ch1" style="margin-right: 19px;">일반 택배</label>	                                        
                                        	                                        
	                                       <!--  <input type="radio" id="or_ch3" name="dlvyTypeCode" value="03" class="mr5 ml10"><image src="https://image.abcmart.co.kr/nexti/images/abcmart_new/pc_abcpick_icon.jpg"/>&nbsp;<label for="or_ch3">편의점 픽업</label>
	                                    
                                        
                                        <input type="radio" id="or_ch2" name="dlvyTypeCode" value="02" class="mr5 ml10"  ><image src="https://image.abcmart.co.kr/nexti/images/abcmart_new/pc_storepick_icon.jpg"/>&nbsp;<label for="or_ch2">매장픽업</label> -->
                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <label for="or_name2"><em class="fc_type1">＊</em> 이름</label>
                                    </th>
                                    <td colspan="3">
                                        <input type="text" name="dlvyName" class="rcvrInfo" maxlength="25" id="or_name2" style="width:130px;" />
                                        <input type="radio" name="selectDeliveryAddress" value="01" id="or_na1" class="mr5 ml10"><label for="or_na1">주문자와 동일</label>
                                        <input type="radio" name="selectDeliveryAddress" value="02" id="or_na2" class="mr5 ml10"><label for="or_na2">신규입력</label>
                                        
                                            <input type="radio" name="selectDeliveryAddress" value="03" id="or_na3" class="mr5 ml10 dlvyType dlvyType01" ><label for="or_na3" class="dlvyType dlvyType01" >최근배송지</label>
                                            <a href="javascript://" onclick="openUserAddrPopup();" class="btn_sType1 ml5 dlvyType dlvyType01" >내 주소록</a>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <label for="or_phone2"><em class="fc_type1">＊</em> 휴대폰 번호</label>
                                    </th>
                                    <td>
                                        <select name="dlvyTel1" id="dlvyTel1" class="dlvyTel1" style="width:97px;">
										    <option value="010">010</option>
										    <option value="011">011</option>
										    <option value="016">016</option>
										    <option value="017">017</option>
										    <option value="018">018</option>
										    <option value="019">019</option>
										</select>

                                        -
                                        <input type="text" name="dlvyTel2" class="text rcvrInfo inputNumberText" maxlength="4" style="width:97px"/>
                                        -
                                        <input type="text" name="dlvyTel3" class="text rcvrInfo inputNumberText" maxlength="4" style="width:97px"/>
                                    </td>
                                  
                                </tr>
                                <tr class="dlvyType dlvyType01" >
                                    <th>
                                        <label for="or_address2"><em class="fc_type1">＊</em> 주소</label>
                                    </th>
                                    <td colspan="3">
                                        <p class="mb5">
                                            <input type="text" id="dlvyZipcode" name="dlvyZipcode" class="text rcvrInfo" style="width:130px" readonly="readonly"/>
                                            <a href="javascript://" id="rcvrPostNumBtn" onclick="popupSearchPostCode();" class="btn_sType1 ml5">우편번호찾기</a>
                                        </p>
                                        <input type="text" id="dlvyAddr1" name="dlvyAddr1" class="text rcvrInfo" style="width:300px" readonly="readonly" maxlength="100"/>
                                        <input type="text" id="dlvyAddr2" name="dlvyAddr2" class="text rcvrInfo" style="width:300px" placeholder="나머지 주소를 입력하세요." maxlength="50"/>
                                    </td>
                                </tr>
                                <tr class="dlvyType dlvyType01" >
                                    <th>
                                        <label for="or_memo"><em class="fc_type1">&nbsp;</em>배송 시 요청사항</label>
                                    </th>
                                    <td colspan="3">
                                        <input type="text" name="dlvyMsg" class="text rcvrInfo exceptSpecialChar" style="width:900px" placeholder="배송 메세지는 40자 이내로 입력해 주세요." maxlength="40"/>
                                    </td>
                                </tr>
                                
                                <tr class="dlvyType dlvyType03" style="display: none;">
                                    <th>
                                        <label for="or_al1">&nbsp;&nbsp;편의점 찾기</label>
                                    </th>
                                    <td colspan="3">
                                        <input type="radio" id="cvs_ch2" name="cvsTypeCode" value="02" class="mr5" checked="checked" onclick="chgCVS();"><image src="https://image.abcmart.co.kr/nexti/images/abcmart_new/pc_gs25_icon.gif"/>&nbsp;&nbsp;
                                        <input type="radio" id="cvs_ch1" name="cvsTypeCode" value="01" class="mr5" onclick="chgCVS();"><image src="https://image.abcmart.co.kr/nexti/images/abcmart_new/pc_CU_icon.gif"/>&nbsp;
                                        <input type="text" style="width:200px;" readonly="readonly" id="cvsCodeName" class="rcvrInfo"/>
                                        <a href="javascript://" id="searchCVSBtn" onclick="searchCVS();" class="btn_sType1 ml5">편의점 찾기</a>
                                    </td>
                                </tr>
                                <tr class="dlvyType dlvyType03" style="display: none;">
                                    <th>
                                        <label for="or_al2">&nbsp;&nbsp;편의점 정보</label>
                                    </th>
                                    <td colspan="3">주소 :
                                        <span id="storeAddressInfoSpan" class="rcvrInfo"></span>
                                        <span class="bar">연락처 : <span id="codeTelInfoSpan" class="rcvrInfo"></span></span>
                                        <input type="hidden" name="store_code" value=""/>
                                        <input type="hidden" name="ho_code" value=""/>
                                        <input type="hidden" name="store_address1" value=""/>
                                        <input type="hidden" name="store_address2" value=""/>
                                        <input type="hidden" name="post_no" value=""/>
                                        <input type="hidden" name="code_f" value=""/>
                                        <input type="hidden" name="dd_zone" value=""/>
                                        <input type="hidden" name="dd_bag" value=""/>
                                        <input type="hidden" name="codePany" value=""/>
                                        <input type="hidden" name="codeName" value=""/>
                                        <input type="hidden" name="codeTel" value=""/>
                                        <input type="hidden" name="eupmyeon" value=""/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
          
                </div>
                <div id="pickupStoreInfo" class="mt60" style="display:none;">
                	<script type="text/javascript">
	                	$(function(){
	                		
	                		
	                		var $picup_search_target = $(".js-pickup-search");
	                		var $radio_pickup = $picup_search_target.find("input[type='radio']");
	                		var $content_pickup = $picup_search_target.find(".sel-box");
	                		$radio_pickup.on({
	                			change : function(){
	                				var $this = $(this);
	                				var radio_change_num = $this.index() / 2;
	                				$content_pickup.hide();
	                				$content_pickup.eq(radio_change_num).show();
	                				if ($this.val() == "01") {
	                					
		                				
		                				$("input[name='pickupStoreId']").val("");
	                					$(".js-pickup-search .check1").hide();
		                				
	                				} else if ($this.val() == "02") {
	                					$(".latelyPickupStore").val("");
                						$("input[name='pickupStoreId']").val("");
	                					$(".js-pickup-search .check1").hide();
	                				} else {
	                					$("input[name='pickupStoreId']").val("");
	                					$(".js-pickup-search .check1").hide();
	                				}
	                			}
	                		});
	                	});
                	</script>

                    <h3 class="tit_type1 fs16 ml10" id="pickup-search-tt">픽업 매장 찾기</h3>
                    <section class="table_basic mt10 bgfa js-pickup-search">
                        <table class="tableA">
							<colgroup>
								<col width="160px"><col width="*"><col width="160px"><col width="*">
							</colgroup>
							<tbody>
								<tr>
									<td colspan="4">
										<input type="radio" name="pickup-radio" value="01" id="pickup-radio-01" class="mr5 ml10"  disabled="disabled"/>
										<label for="pickup-radio-01" id="pickup-label-01">단골매장</label>

										<input type="radio" name="pickup-radio" value="02" id="pickup-radio-02" class="mr5 ml10" disabled="disabled"/>
										<label for="pickup-radio-02" id="pickup-label-02">최근픽업매장</label>

										<input type="radio" name="pickup-radio" value="03" id="pickup-radio-03" class="mr5 ml10" checked="checked"/>
										<label for="pickup-radio-03" id="pickup-label-03">매장 검색</label>
									</td>
								</tr>
								<tr>
									<th>픽업 매장 선택</th>
									<td colspan="3">
                                        
                                                <input type="hidden" name="pickupStoreId" class="pickupStoreId" value="" />
                                            
										<div class="pickup-store-search-bd">
											<div class="store-search-method">
												<div class="sc-txt sel-box check1" style="display: none;">
                                                    <p class="fs12 mb5">
                                                        <span class="pickupStoreName">
                                                            
                                                            
                                                        </span>
                                                    </p>
                                                    <p class="fs12 mb5">
                                                        <span class="pickupStoreAddr">
                                                            
                                                            
                                                        </span>
                                                    </p>
                                                    <ul class="open-tel-list">
                                                        <li>
                                                            <i class="tel"></i>
                                                            <span class="pickupStoreTelNum">
                                                                
                                                                
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <i class="time"></i>
                                                            <span class="pickupBusinessHours">
                                                                
                                                                
                                                            </span>
                                                        </li>
                                                    </ul>
                                                </div>
												<div class="sc-select sel-box check2" style="display: none;">
													<select class="latelyPickupStore">
														<option value="">선택하세요</option>
                                                        
													</select>
												</div>
												<div class="sc-search sel-box check3" >
                                                    <a id="pickupStoreSearchBtn" href="javascript:void(0)" class="btn_sType5" onclick="window.open('/abc/order/popupSearchPickupStore?prdtMegaYn=N', 'pop01', 'top=10, left=10, width=985, height=769, status=no, menubar=no, toolbar=no, resizable=no');">매장검색</a>
                                                </div>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
                    </section>
                    
                    <div class="pick-store-searfoot-set-box">
                        <span>단골매장이 설정되어 있지 않습니다. 단골매장을 설정하시겠습니까?</span>
                        <a href="javascript:popupStoreSearchForm();" class="btn_sType5">단골매장 설정</a>
                    </div>
                    
                </div>
                <div class="mt60 clearbox">
                    <div class="fl-l w550">
                        <div>
                            <h3 class="tit_type1 fs16 ml10">쿠폰 추가적용</h3>
                            <section id="etcCouponSection" class="table_basic mt10 bgfa">
                                <table class="tableA">
                                    <colgroup>
                                        <col width="160px"><col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr id="freeDlvyCpnTr" >
                                            <th>
                                                <label for="or_coupon">&nbsp;&nbsp;쿠폰</label>
                                            </th>
                                            <td>보유 쿠폰 : <em class="bold fc_type8">0</em>장
                                                
                                                        <a href="javascript://" class="btn_sType1 ml10 mr5 non">쿠폰조회/적용</a>
                                                        <input type="text" name="coupon" style="width:100px;" value="${discount }" disabled="disabled"/> 원
                                                    
                                            </td>
                                        </tr>
                                        <tr>
                                            <th rowspan="2">
                                                <label for="or_dcoupon">&nbsp;&nbsp;포인트적립</label>
                                            </th>
                                            <td>적립예정 포인트 : <em class="tit_type3 fc_type2 totalPoint">1,470P</em></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </section>
                        </div>
                        <div class="mt60">
                            <h3 class="tit_type1 fs16 ml10">포인트 결제</h3>
                            <section class="table_basic mt10 bgfa">
                                <table class="tableA">
                                    <colgroup>
                                        <col width="160px"><col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th rowspan="2">
                                                <label for="or_coupon">&nbsp;&nbsp;포인트 결제</label>
                                            </th>
                                            <td>
                                                <p>사용가능 포인트 : <span class="tit_type3 fc_type2">0P</span></p>
                                                
                                                <input type="hidden" name="accessPoint" value="0"/>
                                                <input type="hidden" name="eventPoint" value="0"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" name="point" value="0" style="width:150px;" placeholder="100 단위로 사용 가능" disabled="disabled" maxlength="10" onkeyup="checkUsePoint(this);"/> 원
                                                <a id="applyPointBtn" href="javascript://" class="btn_sType1 ml10 mr5 non">적용</a>
                                                <input type="checkbox" name="useAllPoint" class="ml10" id="or_useAllpoint" disabled="disabled"/><label for="or_useAllpoint" class="fc_type5 ml5">모두적용</label>
                                                <input type="hidden" name="useAccessPoint" value="0"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </section>
                            
                                    <ul class="ml5 mt5 fc_type5">
                                        <li>* 이벤트 포인트는 단일품목 3만원 이상 구매 시 사용 가능합니다.</li>
                                        <li class="mt5">* 포인트는 100P 단위로 사용 하실 수 있습니다. </li>
                                    </ul>
                                
                        </div>
                    </div>
                    <div class="fl-l w490 ml60">
                        <h3 class="tit_type1 fs16 ml10">결제금액</h3>
                        <section class="table_basic mt10 bgfa or_price">
                            <table class="tableA">
                                <colgroup>
                                    <col width="160px"><col width="*">
                                </colgroup>
                                <tbody>
                                    <tr class="order_pay">
                                        <th>
                                            <label for="or_price1">&nbsp;&nbsp;주문금액</label>
                                        </th>
                                        <td>
                                            <span class="tit_type2"><fmt:formatNumber value="${totalPrice }" type="number"/></span>원
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label for="or_price2">&nbsp;&nbsp;할인금액</label>
                                        </th>
                                        <td>
                                            <span class="tit_type3 totalDscntArea">0</span>원
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label for="or_price3">&nbsp;&nbsp;쿠폰할인</label>
                                        </th>
                                        <td>
                                            <span class="tit_type3 totalCpnDscntAmt">0</span>원
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label for="or_price4">&nbsp;&nbsp;배송비</label>
                                        </th>
                                        <td>
                                           <span class="tit_type3 orderDlvyAmtArea">2500</span>원
                                            <input type="hidden" name="dlvyPrice" value="2500">
                                        </td> 
                                       
                                    </tr>
                                    <tr>
                                        <th>
                                            <label for="or_price4">&nbsp;&nbsp;적립예정 포인트</label>
                                        </th>
                                        <td>
                                            <em class="right"><span class="tit_type3 totalPoint">1,470</span>P</em>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label for="or_price3">&nbsp;&nbsp;포인트 결제</label>
                                        </th>
                                        <td>
                                            <span id="usePointSpan" class="tit_type3">0</span>원
                                        </td>
                                    </tr>
                                    <tr class="total_pay">
                                        <th>
                                            <label for="or_price3">&nbsp;&nbsp;결제할 금액</label>
                                        </th>
                                        <td>
                                            <span class="fs22" id="finalTotalOrderAmt"><fmt:formatNumber value="${totalPrice+2500 }" type="number"/></span>원
                                            <input type="hidden" id="totalPrice" name="totalPrice" value="${totalPrice+2500 }">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
                
                <div class="clear mt60">
                    <h3 class="tit_type1 fs16 ml10">개인정보 수집/제공</h3>
                    <section class="table_basic mt10 bgfa">
                        <table class="tableA">
                            <colgroup>
                                <col width="580px"><col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="ml5 mt5 fc_type5"">
                                           <ul class="ml5 mt5 fc_type5">

											<li><b>수집하는 개인정보의 항목</b></li>

											    <li class="mt5">&nbsp;&nbsp;- 주문자의 이름, 주소, 휴대폰 번호, e-mail</li>
											    <li class="mt5">&nbsp;&nbsp;(단, 주문자와 주문물품의 수령자가 다른 경우에는 수령자의 이름, 주소, 휴대폰 번호)</li>
											    <li class="mt5">&nbsp;&nbsp;- 물품 등의 주문 시 주문자가 선택적으로 등록한 정보 (배송과 관련한 요청사항 등)</li>
											    <li class="mt5">&nbsp;&nbsp;- 대금 결제에 관한 정보 (청약 철회 시 현금 환불 계좌정보 등)</li>
											    <li class="mt8">* 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.</li>
											    <li class="mt5">&nbsp;&nbsp;- 서비스 이용 기록, 접속로그, 쿠키, 접속IP정보, 결제기록, 이용정지기록</li>

                                    </td>
                                </tr>
                             </tbody>
                          </table>
                    </section>
                </div>
                <p class="mt5 ml5">
                    <input type="checkbox" id="agreementCheck"/>
                    <label for="agreementCheck" class="fc_type5"><span class="fc_type6">[필수]</span> 개인정보 수집/제공 동의</label>
                </p>
                
                <div class="clear mt60">
                    <h3 class="tit_type1 fs16 ml10">결제수단 선택</h3>
                    <section class="table_basic mt10 bgfa">
                        <table class="tableA">
                            <colgroup>
                                <col width="580px"><col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        
                                                 

<input type="radio" name="payChoice1" value="신용카드" class="mr5 ml15" id="pymntMeansCode01"/><label for="pymntMeansCode01">신용카드&nbsp;</label>


<input type="radio"  name="payChoice1" value="계좌이체" class="mr5 ml15" id="pymntMeansCode02"/><label for="pymntMeansCode02">계좌이체&nbsp;</label>


<input type="radio" name="payChoice1" value="휴대폰" class="mr5 ml15" id="pymntMeansCode03"/><label for="pymntMeansCode03">휴대폰&nbsp;</label>


<input type="radio" name="payChoice1" value="무통장" class="mr5 ml15" id="pymntMeansCode04"/><label for="pymntMeansCode04">무통장&nbsp;</label>


<input type="radio" name="payChoice1" value="네이버페이" class="mr5 ml15" id="pymntMeansCode07"/><label for="pymntMeansCode07">네이버페이&nbsp;</label>

<input type="hidden" name="payChoice" id="payChoice" value="">

                                                <input type="radio" name="pymntMeansCode" value="06" style="display:none;"/>
                                            
                                        <input type="radio" name="pymntMeansCode" value="06" style="display:none;"/>
                                    </td>
                                </tr>
                                
                                    
                                <tr class="last_pay pymntMeansCode02" style="display: none;">
                                    <td>
                                        <section class="table_basic bgfa no_point">
                                            <table class="tableA">
                                                <colgroup>
                                                    <col width="180px"><col width="*">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>
                                                            <label for="or_inch">에스크로 적용 여부 선택</label>
                                                        </th>
                                                        <td>
                                                            <input type="radio" id="or_inch1" name="escrYn" value="true" class="mr5"><label for="or_inch1">에스크로적용</label>
                                                            <input type="radio" id="or_inch2" name="escrYn" value="false" class="mr5 ml20"><label for="or_inch2">에스크로 미적용</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <label for="or_inch">현금영수증 발급 여부 선택</label>
                                                        </th>
                                                        <td>
                                                            <input type="radio" id="or_inh1" name="cashRcptYn" value="true" class="mr5"><label for="or_inh1">발행</label>
                                                            <input type="radio" id="or_inh2" name="cashRcptYn" value="false" class="mr5 ml20"><label for="or_inh2">미발행</label>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </section>
                                        <p class="mb10">무통장 입금(가상계좌)는 <span class="fc_type2">주문하신 후 3일 이내</span>(주문일 포함)에 주문하신 금액을 정확히 입금해 주셔야 합니다.</p>
                                        <ul class="list_type3">
                                            <li>계좌번호 : 1회 주문에 한하여 발급되는 1회성 계좌로<br/><span style="padding-left:55px;">주문 완료 시 주문상세내역 또는 고객님의 휴대전화로 발송되는 SMS로 확인하실 수 있습니다.</span></li>
                                            <li>예금주 : 에이비씨디마트코리아</li>
                                        </ul>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                </tr>
                                
                                    
                                <tr class="last_pay pymntMeansCode04" style="display: none;">
                                    <td>
                                        <section class="table_basic bgfa no_point">
                                            <table class="tableA">
                                                <colgroup>
                                                    <col width="180px"><col width="*">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th>
                                                            <label for="or_inch">에스크로 적용 여부 선택</label>
                                                        </th>
                                                        <td>
                                                            <input type="radio" id="or_inch10" name="escrYn" value="true" class="mr5"><label for="or_inch10">에스크로적용</label>
                                                            <input type="radio" id="or_inch20" name="escrYn" value="false" class="mr5 ml20"><label for="or_inch20">에스크로 미적용</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <label for="or_inch">현금영수증 발급 여부 선택</label>
                                                        </th>
                                                        <td>
                                                            <input type="radio" id="or_inh10" name="cashRcptYn" value="true" class="mr5"><label for="or_inh10">발행</label>
                                                            <input type="radio" id="or_inh20" name="cashRcptYn" value="false" class="mr5 ml20"><label for="or_inh20">미발행</label>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </section>
                                        <p class="mb10">무통장 입금(가상계좌)는 <span class="fc_type2">주문하신 후 3일 이내</span>(주문일 포함)에 주문하신 금액을 정확히 입금해 주셔야 합니다.</p>
                                        <ul class="list_type3">
                                            <li>계좌번호 : 1회 주문에 한하여 발급되는 1회성 계좌로<br/><span style="padding-left:55px;">주문 완료 시 주문상세내역 또는 고객님의 휴대전화로 발송되는 SMS로 확인하실 수 있습니다.</span></li>
                                            <li>예금주 : 에이비씨디마트코리아</li>
                                        </ul>
                                    </td>
                                    <td>
                                        <div></div>
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </section>
                </div>
                <p class="mt5 ml5">
                    <input type="checkbox" id="cbOrderClause"/>
                    <label for="cbOrderClause" class="fc_type5"><span class="fc_type6">[필수]</span> 주문하는 상품, 가격, 배송정보, 할인내역 등을 최종 확인 하였으며, 구매에 동의합니다. (전자상거래법 제 8조 제2항)</label>
                </p>
                <section class="btn_group_section">
                    <ul>
                        <li><a href="javascript://" onclick="goPayment();" class="btn_lType1">결제하기</a></li>
                    </ul>
                </section>
                <table class="coupon_warning_table mt60">
                    <tbody>
                        <tr>
                            <th>
                                <div class="tit_type1 fs14 nonicon">Shopping Tip</div>
                            </th>
                            <td>
                                <p class="fc_type3 fs12 bold">품절보상안내!!</p>
                                <ul class="mt15">
                                    <li>- 온라인과 오프라인 매장의 상품이 동시에 판매되고 있습니다. 결제완료 후에 부득이하게 품절 또는 다른 사유로 인해 발송이 불가능 할 수 있습니다.</li>
                                    <li>- 결제 완료일로부터 3일 이내(영업일 기준) 발송 불가 안내를 드리지 못했을 경우 보상 쿠폰을 발급해드립니다.</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
            <!-- // order_basketCont -->
</form>
</div>
</div>
</div>
<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>
</body>

<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/order_pay/orderPage22.js"></script>



</html>