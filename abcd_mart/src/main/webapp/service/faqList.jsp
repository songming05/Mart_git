<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>FAQ</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.min.css" />
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js' /></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

<link rel="stylesheet" href="../css/quickBar.css"/>
<link rel="stylesheet" href="../css/main.css"/>
<link rel="stylesheet" href="../css/header.css"/>
<link rel="stylesheet" href="../css/mainFooter.css"/>
<link rel="stylesheet" href="../css/user/service.css" />
<link rel="shortcut icon" type="image⁄x-icon" href="../image/mainLogo/ABCD.png">
</head>
<body>
<header>
<jsp:include page="../template/header.jsp"/>
</header>
<jsp:include page="../template/quickBarOther.jsp"/> 

    <div class="wrap">
        <div class="container_wrap">
            <div class="container_area">
	            <div class="container_layout">
                    <!-- page_location -->
                    <section class="page_location">
                        <ul>
                            <li><a href='../main/index'>홈</a></li>
                            <li><span>고객센터</span></li>
                            <li><span>FAQ</span></li>
                            
                        </ul>
                    </section>
                   

                    <section class="cutomer_cont">
                        




<section class="sevice_go clearfix">
    <p class="tit_type1 fs16">서비스 바로가기<span>바로가기</span></p>
    <ul class="sevice_list clearfix">
        <li class="list1"><a href='#'>주문/배송조회</a></li>
        <li class="list2"><a href='#'>반품/교환신청</a></li>
        <li class="list3 listMyPoint"><a href="javascript://">포인트내역</a></li>
        <li class="list4"><a href='#'>쿠폰리스트</a></li>
        <li class="list5"><a href='#'>나의 상담내역</a></li>
    </ul>
    <input type="hidden" name="listMyPoint" value=''>
</section>
<section class="cus_area clearfix mt40">
    <div class="in_cusl le_cus">
        <ul class="listbox clarbox">
            <li class="list1"><a href='/abcd_mart/service/serviceMain'>HOME</a></li>
            <li class="list2 on"><a href='/abcd_mart/service/faqList'>FAQ</a></li>
            <li class="list3"><a href='/Aabcd_mart/service/sortAreaList.jsp'>전국매장</a></li>
            <li class="list4"><a href='/abcd_mart/service/announcementList.jsp'>공지사항</a></li>
            <li class="list5 writeConsultation"><a href="javascript://">1:1 상담</a></li>
        </ul>
    </div>
    <div class="in_cusr ri_cus">
        <h3 class="tit_type1 fs16 fl-l">FAQ검색</h3>
        <ul class="search_link fl-l">
            <li><a href="javascript://">반품</a></li>
            <li><a href="javascript://">교환</a></li>
            <li><a href="javascript://">AS</a></li>
            <li><a href="javascript://">배송</a></li>
            <li><a href="javascript://">결제</a></li>
            <li><a href="javascript://">멤버십</a></li>
            <li><a href="javascript://">포인트</a></li>
        </ul>
        <div class="relation_product fl-l">
            <a href="" style="width:145px;">전체<span class="ico_arrow1"></span></a>
            <ul class="relation_list" style="width:145px;">
                
                    <li><a href="javascript://" targetId="topFaqClass" idValue='0000'>상품정보</a></li>
                
                    <li><a href="javascript://" targetId="topFaqClass" idValue='0001'>교환/반품/환불</a></li>
                
                    <li><a href="javascript://" targetId="topFaqClass" idValue='0002'>배송현황</a></li>
                
                    <li><a href="javascript://" targetId="topFaqClass" idValue='0003'>주문/결제/취소</a></li>
                
                    <li><a href="javascript://" targetId="topFaqClass" idValue='0004'>AS</a></li>
                
                    <li><a href="javascript://" targetId="topFaqClass" idValue='0005'>회원정보</a></li>
                
            </ul>
        </div>
        <form name="topFaqSearchForm" method="get" action='/abcd_mart/service/faqList' onsubmit="return checkSearchWord()">
            <div class="fl-l ml10">
                <span class="search_input">
                    <input type="hidden" id="topFaqClass" name="faqClassId">
                    <input type="text" name="searchWord" id="searchWord" style="width:265px; " value=''><button type="submit" class="btn_sType4 ml10">검색</button>
                </span>
            </div>
        </form>
        </div>
</section>
                        
    
    
        <section class="faq_menucont clearfix mt30">
            <div class="exhibit_section clearfix">
                <ul class="faq_list clearfix">
                    
                    
                        <li>
                             
                            <a href="/abcd_mart/service/faqList?category=productInfo" cnslClass='0000'>
                            	상품정보
                            </a>
                        </li>
                        
                    
                        <li>
                            <a href="/abcd_mart/service/faqList?category=exchange" cnslClass='0001'>
								교환/반품/환불
                            </a>
                        </li>
                        
                    
                        <li>
                            <a href="/abcd_mart/service/faqList?category=delivery" cnslClass='0002'>
								배송현황
                            </a>
                        </li>
                        
                    
                        <li>
                            <a href="/abcd_mart/service/faqList?category=orderRelation" cnslClass='0003'>
								주문/결제/취소
                            </a>
                        </li>
                        
                    
                        <li class="last">
                            <a href="/abcd_mart/service/faqList?category=repair" cnslClass='0004'>
								AS
                            </a>
                        </li>
                        
                    
                        <li>
                            <a href="/abcd_mart/service/faqList?category=memberInfo" cnslClass='0005'>
								회원정보
                            </a>
                        </li>

                </ul>
            </div>
            <div class="faq_menu clearfix">
             	<input type="hidden" id="selectNum" value="${select }"/>
             	<input type="hidden" id="pageMap" value="${pageMap.get('category') }">
	             	<!-- 상품정보 카테고리2 -->
	             	${productInfoDisplay }

                    
                    <!-- 교환/반품/환불 카테고리2 -->
                    ${exchangeDisplay }

                    
                    <!-- 배송현황 카테고리2 -->
                    ${deliveryDisplay }

                    
                    <!-- 주문/결제/취소 카테고리2 -->
                    ${orderDisplay }

                    
					<!-- AS 카테고리2 -->
					${asDisplay }

                    
                    <!-- 회원정보 카테고리2 -->
                    ${memberInfoDisplay }

            </div>
        </section>
        
<!--          <section class="faq_searchbox mt30">
            <p class="tit_type1 fs16">검색하신 단어 <span>“kk”</span>에 대해 <span>“0개”</span>가 검색 되었습니다.</p>
            <a href='/abcd_mart/service/faqList.do' class="btn_mlType3">FAQ 전체보기</a>
        </section> -->
        
    <div class="product_detail_box3 mt20">
        <input type="hidden" name="parentDepth">
        <input type="hidden" name="depth">
        <section class="qna_list info_box3">
            <div class="table_basic faqcont">
                <table>
                    <colgroup>
                        <col width="285"><col width="*">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>분류</th>
                            <th style="text-align:left;padding-left:240px;">질문</th>
                        </tr>
                    </thead>
                    <tbody>
						<c:forEach var="serviceDTO" items="${faqLists }" varStatus="status">
                                <tr>
                               
                              
                                <!-- 분류1,2 / 질문1 -->
                                    <td class="pl60">${serviceDTO.category1} > ${serviceDTO.category2 }</td>
                                    <td class="align-left qna_btn"><span class="ico_quest">질문</span><a href="#">${serviceDTO.title }</a></td>
                                </tr>
                                <tr class="qna_answer_box">
                                    <td colspan="2">
                                        <div class="answer_box clearfix" style="padding-left:300px;">
                                            <span class="ico_answer fl-l">답변</span> 
                                            <div class="answer_txt">
      											${serviceDTO.answer }
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                
                       </c:forEach>
                    </tbody>
                </table>
            </div>

            <p class="paginate">
				
				<input type="hidden" id="servicePaging" value="${servicePaging.pagingHTML }"/>

            </p>
        </section>
        <div class="mt60 counsel_bottom">
            <p><em class="fs14 fc_type6">원하시는 정보를 찾지 못하셨나요? <span class="fc_type1">1:1 상담을 통해 문의</span>를 주시면 친절히 안내해 드리겠습니다.</em><a href='https://www.abcmart.co.kr/abc/customer/writeConsultation' class="btn_sType3 ico_arrow pd2 ml20 bold">1:1 상담하기</a></p>
        </div>
    </div>

                    </section>
                </div>
            </div>
        </div>
</div>
<footer>
<jsp:include page="../template/mainFooter.jsp"/>
</footer>
</body>

 <script type="text/javascript" src="../js/quickBar.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/mainFooter.js"></script> 
<script type="text/javascript" src="../js/user/faq.js"></script>
</html>