<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>고객센터</title>
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
                            <li><a href='#'>홈</a></li>
                            <li><span>고객센터</span></li>
                            
                            
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
            <li class="list1 on"><a href='/abcd_mart/service/serviceMain'>HOME</a></li>
            <li class="list2"><a href='/abcd_mart/service/faqList'>FAQ</a></li>
            <li class="list3"><a href='/abcd_mart/center/abcd_StoreList'>전국매장</a></li>
            <li class="list4"><a href='/abcd_mart/service/announcementList'>공지사항</a></li>
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
                        
    <div class="container_area">
        <div class="container_layout">
            <section class="cutomer_cont">
                <section class="faq_menucont clearfix mt30">
                    <div class="exhibit_section clearfix">
                        <ul class="faq_list clearfix">
                           
                                <li>
                                    <a href='/abcd_mart/service/faqList?category=1'>
										상품정보
                                    </a>
                                </li>
                            
                                <li>
                                    <a href='/abcd_mart/service/faqList?category=2'>
										교환/반품/환불
                                    </a>
                                </li>
                            
                                <li>
                                    <a href='/abcd_mart/service/faqList?category=3'>
										배송현황
                                    </a>
                                </li>
                            
                                <li>
                                    <a href='/abcd_mart/service/faqList?category=4'>
										주문/결제/취소
                                    </a>
                                </li>
                            
                                <li class="last">
                                    <a href='/abcd_mart/service/faqList?category=5'>
										AS
                                    </a>
                                </li>
                            
                                <li>
                                    <a href='/abcd_mart/service/faqList?category=6'>
										회원정보
                                    </a>
                                </li>
                                                        
                        </ul>
                    </div>
                </section>
                
                <h3 class="fs16 tit_type1 ml10 mt40">자주하는 질문 TOP5</h3>
                <div class="product_detail_box3 mt10">
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
                                                                
                                      <tr>
<!-- AS > 심의접수/현황/결과  -->                    <td class="pl60">${listCategory1.get(58) } > ${listCategory2.get(60) }</td>
                                          <td class="align-left qna_btn"><span class="ico_quest">질문</span><a href="javascript:void(0)">${listTitle.get(62) }</a></td>
                                      </tr>
                                      <tr class="qna_answer_box">
                                          <td colspan="2">
                                              <div class="answer_box clearfix" style="padding-left:300px;">
                                                  <span class="ico_answer fl-l">답변</span> 
                                                  <div class="answer_txt">
                                                  	${listAnswer.get(62) }
                                                  </div>
                                              </div>
                                          </td>
                                      </tr>
                                  
                                      <tr>
<!-- 교환/반품/환불 > 교환 -->                       <td class="pl60">${listCategory1.get(7) } > ${listCategory2.get(7) }</td>
                                          <td class="align-left qna_btn"><span class="ico_quest">질문</span><a href="javascript:void(0)">${listTitle.get(11) }</a></td>
                                      </tr>
                                      <tr class="qna_answer_box">
                                          <td colspan="2">
                                              <div class="answer_box clearfix" style="padding-left:300px;">
                                                  <span class="ico_answer fl-l">답변</span> 
                                                  <div class="answer_txt">
													${listAnswer.get(11) }
                                                  </div>
                                              </div>
                                          </td>
                                      </tr>
                                  
                                      <tr>
<!-- 교환/반품/환불 > 교환 -->                       <td class="pl60">${listCategory1.get(7) } > ${listCategory2.get(7) }</td>
                                          <td class="align-left qna_btn"><span class="ico_quest">질문</span><a href="javascript:void(0)">${listTitle.get(13) }</a></td>
                                      </tr>
                                      <tr class="qna_answer_box">
                                          <td colspan="2">
                                              <div class="answer_box clearfix" style="padding-left:300px;">
                                                  <span class="ico_answer fl-l">답변</span> 
                                                  <div class="answer_txt">
                     								${listAnswer.get(13) }
                                                  </div>
                                              </div>
                                          </td>
                                      </tr>
                        
                                      <tr>
<!-- 교환/반품/환불 > 교환 -->                       <td class="pl60">${listCategory1.get(7) } > ${listCategory2.get(7) }</td>
                                          <td class="align-left qna_btn"><span class="ico_quest">질문</span><a href="javascript:void(0)">${listTitle.get(7) }</a></td>
                                      </tr>
                                      <tr class="qna_answer_box">
                                          <td colspan="2">
                                              <div class="answer_box clearfix" style="padding-left:300px;">
                                                  <span class="ico_answer fl-l">답변</span> 
                                                  <div class="answer_txt">
													${listAnswer.get(7) }
                                                  </div>
                                              </div>
                                          </td>
                                      </tr>
                                  
                                      <tr>
<!-- 교환/반품/환불>오프라인 교환/환불   -->             <td class="pl60" id="pay_back">${listCategory1.get(7) }>${listCategory2.get(23) }</td>
                                          <td class="align-left qna_btn"><span class="ico_quest">질문</span><a href="javascript:void(0)">${listTitle.get(24) }</a></td>
                                      </tr>
                                      <tr class="qna_answer_box">
                                          <td colspan="2">
                                              <div class="answer_box clearfix" style="padding-left:300px;">
                                                  <span class="ico_answer fl-l">답변</span> 
                                                  <div class="answer_txt">
               										${listAnswer.get(24) }
                                                  </div>
                                              </div>
                                          </td>
                                      </tr>
                                            
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
                <div class="bottom_box clearfix">
                    <section class="notice_area fl-l">
                        <h2 class="tit_type1 fs16 ml10">공지사항</h2>
                        <div class="cont">
                            <ul>
                                
                                    <li>
                                        <a href='#'>
                                            5월 무이자 할부안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href='#'>
                                            4월 무이자 할부안내 
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href='#'>
                                            ABC마트 개인정보 처리방침 변경 안내
                                        </a>
                                    </li>
                                
                                    <li>
                                        <a href='#'>
                                            스케쳐스 키즈 리콜조치 안내
                                        </a>
                                    </li>
                                
                            </ul>
                            <a href='#' class="btn_more hide_text">더보기</a>
                        </div>
                    </section>
                    <section class="cutomer_area fl-l">
                        <h2 class="tit_type1 fs16 ml10">고객의 소리</h2>
                        <div class="cont clearfix">
                            <section class="box1 fl-l">
                                <p class="t">ABC-MART 서비스에 대한 칭찬이나<br/>불편사항을 작성해주세요.</p>
                                <p class="mt10"><a href='#' class="btn_sType3"><strong class="ico_arrow">고객의 소리 작성하기</strong></a></p>
                            </section>
                            <section class="box2 fl-l">
                                <p class="t">ABC-MART 통합고객센터</p>
                                <p class="b mt15">080-701-7770 / 1588-9667</p>
                                <p class="b mt10">월~금 09:00~18:00(주말, 공휴일 휴무)</p>
                            </section>
                        </div>
                    </section>
                </div>
            </section>
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
<script type="text/javascript" src="../js/user/service.js"></script>

</html>