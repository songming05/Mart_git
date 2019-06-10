<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="../js/jquery-1.12.0.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<link rel="stylesheet" href="../css/sub2.css?v=180713" />
</head>
<script type="text/javascript">
$(function() {
    $( "#abcdDatepickerStart" ).datepicker({
	   	  showOn: "both", 
	      buttonImage: "../image/ico_calander.gif", 
	      buttonImageOnly: true,
    	  changeYear: true,
    	  changeMonth: true, 
    	  showButtonPanel: true,
          dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
          dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
          minDate:"-3Y",
	      maxDate:"+0Y",
          monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          currentText: '오늘 날짜', 
          closeText: '닫기', 
          dateFormat: "yymmdd"
    });
    
    $( "#abcdDatepickerEnd" ).datepicker({
    	  showOn: "both", 
          buttonImage: "../image/ico_calander.gif", 
          buttonImageOnly: true,
		  changeYear: true,
		  changeMonth: true, 
		  showButtonPanel: true,
	      dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	      dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	      minDate:"-3Y",
	      maxDate:"+0Y",
	      monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	      monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	      currentText: '오늘 날짜', 
	      closeText: '닫기', 
	      dateFormat: "yymmdd"
	});
    
    $('#selectedStatCode').click(function(){

    	$('#selectedStatCode , .relation_list').addClass('on');
    });
    
    $('.btn_mlType1').click(function(){
    	$.ajax({
    		type:'post',
    		url:'/abcd_mart/order_pay/orderHistory.do',
    		data:'id='+$('#userId').val(),
    		dataType:'json',
    		success:function(data){
    			if(data!=null){
    				$('#oldTr').remove();
    				$.each(data.history,function(index,items){
    					$('<tr/>').append($('<td/>',{
    						align:'center',
    						text: items.seq
    						
    					})).append($('<td/>',{
    						text: 'ABCD택배'
    					})).append($('<td/>',{
    						text: items.totalPrice
    					})).append($('<td/>',{
    						html:'<img src="../image/'+items.abcdCode+'/'+items.shoesimage+'">'
    						
    						
    					/* }).append($('<img/>'),{
    							src:'../image/'+items.abcdCode+'/'+items.shoesimage, */
    					})).append($('<td/>',{
    						text:'배송준비중'
    					})).appendTo($('#oldTbody'));
    					
    					
    				});
    			}

    		}
    		
    		
    	});
    });
    
  
    
});
</script>
<body>
<!-- //고객 정보 -->
<input type="hidden" id="userId" name="id" value="admin">

<article class="mt25">
<section class="my_lnb">
    <ul>
        <li class="tit">쇼핑내역
            <ul>
                <li class="on"><a href="#">주문배송 현황 조회</a></li>
                
                    <li class=""><a href="#">반품/교환/AS</a></li>
                    <li class=""><a href="#">영수증 조회/발행</a></li>
                    <li class=""><a href="#">상품권 구매 내역</a></li>
                    
                
            </ul>
        </li>
        
            <li class="tit">쇼핑혜택
                <ul>
                    
                    
                    
                    
                        <li class=""><a href="#">쿠폰리스트</a></li>
                    
                    
                        <li class=""><a href="#">발도장</a></li>
                    
                    
                    
                        <li class=""><a href="#">회원등급</a></li>
                    
                </ul>
            </li>
        
        
            <li class="tit">쇼핑수첩
                <ul>
                    
                        <li class=""><a href="#">찜한상품/알림상품 내역</a></li>
                    
                    
                        <li class=""><a href="#">나의 상품후기</a></li>
                        <li class=""><a href="#">나의 상담</a></li>
                    
                    
                        <li class=""><a href="#">단골매장/관심브랜드</a></li>
                    
                </ul>
            </li>
        
        
            <li class="tit">개인정보
                <ul>
                    
                        <li class=""><a href="#">배송주소록관리</a></li>
                    
                    
                        <li class=""><a href="#">개인정보수정</a></li>
                    
                    
                        <li class=""><a href="#">부가정보수정</a></li>
                    
                    
                        <li class=""><a href="#">비밀번호 변경</a></li>
                    
                    
                        <li class=""><a href="#">회원탈퇴</a></li>
                    
                    
                        <li class=""><a href="#">SNS 연결설정</a></li>
                    
                    
                </ul>
                
            </li>
        
    </ul>
</section>

<section class="my_cont order_basketCont">                                
<section id="scrollPosition" class="my_cont order_basketCont">
    <header class="positR">
        <h3 class="tit_type1 fs16 ml10">주문 배송 현황 조회</h3>
        <p class="positA">
            <a href="#" class="btn_sType2">오프라인 매장 구매내역 보기</a>
        </p>
    </header>
    <form action="?" id="myOrderListForm" name="myOrderListForm">
        <input type="hidden" name="orderStatCode" value=""/> 
        <input type="hidden" name="dlvyStatCode" value=""/> 
        <input type="hidden" name="calendarRange" value="btnFifteen"/> 
        <input type="hidden" name="snsOrderYn" value="false"/> 
        <input type="hidden" name="topAccessYn" value="false"/> 
        <div class="cal_box mt10">
            <table>
                <colgroup><col width="194"><col width="*"></colgroup>
                <tbody>
                    <tr>
                        <th>온라인 쇼핑몰 구매내역</th>
                        <td>
                            <span class="day_ch mr10">
                                <a href="javascript://" class="btnToday" onclick="datePicker(this, 1);">오늘</a>
                                <a href="javascript://" class="btnFifteen" onclick="datePicker(this, 2);"><em class="tit_type3">15</em>일</a>
                                <a href="javascript://" class="btnMonth" onclick="datePicker(this, 3);"><em class="tit_type3">1</em>개월</a>
                                <a href="javascript://" class="btnThreeMonth" onclick="datePicker(this, 4);"><em class="tit_type3">3</em>개월</a>
                            </span>
                            <input type="text" class="day_select mr5" id="abcdDatepickerStart" name="startDt" value="20190513" maxlength="8" onkeydown="onlyNum();"  style="width:138px;height:26px;" readonly="readonly"/>
                            ~
                            <input type="text" class="day_select mr5" id="abcdDatepickerEnd" name="endDt" value="20190528" maxlength="8" onkeydown="onlyNum();" style="width:138px;height:26px;" readonly="readonly"/>
                            <a href="javascript:formSubmit('dateSearch');" class="btn_mlType1 ml10" style="width:63px; height:30px;">조회</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
    <div class="mt40">
        
        
        
        <!-- 테이블 -->
        <div class="tabs-content mt30">
            <div id="cm_tabs_01" class="tabs-cont basket_box">
                <div class="table_basic gallery_line_type1">
                    <table>
                        <colgroup>
                            <col width="125">
                            <col width="90">
                            <col width="120">
                            <col width="*">
                            <col width="230">
                        </colgroup>
                        <thead>
                            <tr>
                           
                                <th class="normal">주문번호</th>
                                <th class="normal">배송방법</th>
                                <th class="normal">총결제금액</th>
                                <th class="normal">상품정보</th>
                                <th class="normal table_select">
                                    <p class="fl-l">주문/배송현황</p>
                                    <div class="relation_product fl-l ml10">
                                        <a id="selectedStatCode" href="javascript://" style="width: 110px;">전체
                                        <span class="ico_arrow1"></span></a>
                                        <ul class="relation_list" style="width: 110px;">
                                            <li><a href="javascript:formSubmitBefore('', '');">전체</a></li>
                                            
                                                
                                                
                                                    
                                                            <li id="statCode01" value="주문접수"><a href="javascript:formSubmitBefore('01', '');">주문접수</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode02" value="결제완료"><a href="javascript:formSubmitBefore('02', '');">결제완료</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode03" value="상품준비중"><a href="javascript:formSubmitBefore('', '03');">상품준비중</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode04" value="상품출고"><a href="javascript:formSubmitBefore('', '04');">상품출고</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode05" value="배송중"><a href="javascript:formSubmitBefore('', '05');">배송중</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode06" value="배송완료"><a href="javascript:formSubmitBefore('', '06');">배송완료</a></li>
                                                        
                                                
                                            
                                                
                                                
                                                    
                                                            <li id="statCode07" value="구매확정"><a href="javascript:formSubmitBefore('', '07');">구매확정</a></li>
                                                        
                                                
                                            
                                                
                                                
                                            
                                                
                                                
                                            
                                                
                                                
                                            
                                        </ul>
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody id="oldTbody">
                            
                                <tr id="oldTr">
                                    <td colspan="4"><p class="non_data">온라인 쇼핑몰 구매내역이 없습니다.</p></td>
                                </tr>
                            
                            
                        </tbody>
                    </table>
                </div>
                <p class="paginate mt20">
                    





                </p>
            </div>
        </div>
        
        
        <div class="p_re" style="margin-bottom:30px;">
            <p>꼭 읽어 주세요!</p>
            <ul>
                <li>- 평일 4시 이전 주문은 당일 출고됩니다.(온라인 발송에 한함)</li>
                <li>- 배송은 결제 완료 후 평균 2일 정도 소요됩니다.(주말 및 공휴일 제외)</li>
                <li>- 오프라인 매장 발송은 2~3일 더 소요될 수 있습니다.</li>
                <li>- 주문 취소 및 배송지 변경은 [상품준비중] 단계까지만 가능합니다.</li>
                <li>- 상품출고 단계는 상품이 택배사로 전달된 상태입니다. 취소를 원하실 경우에는 상품을 받으신 후 반품접수 해주시기 바랍니다.</li>
                <li>- 구매포인트는 구매확정 후에 적립됩니다.</li>
            </ul>
        </div>
        
        
	        <div class="p_re">
	            <p style="color:#e50015;">※ 매장 픽업 주문 안내</p>
	            <ul>
	                <li>- 매장 재고에 따라 상품 준비 기간이 소요될 수 있습니다.</li>
	                <li>- 여러 개의 상품을 주문하실 경우 상품별로 준비기간이 다를 수 있습니다.</li>
	                <li>- 상품이 준비되면 각 상품별로 알림톡 또는 SMS로 안내드립니다.</li>
	            </ul>
	        </div>
        
    </div>
</section>
</section>
</article>


</body>
</html>