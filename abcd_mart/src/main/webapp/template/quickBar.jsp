<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div id="quickbar" style="top: 680px; position: fixed;">
		<div class="quickbar_area">
		    <section class="quick_product">
		        <header class="quick_list_header">
		            <p style="margin: 0px;">최근본상품</p>
		            <span>(<em>${ sessionScope.recentNumber}</em>)</span>
		        </header>
		        <div class="quick_list">
		            <ul style="overflow: hidden;">
	            		<c:if test="${ sessionScope.recentPrdt4 ne null }"> 
	            			<li>
	            				<a href="../product/detail?prdtCode=${ sessionScope.recentPrdt4}">
	            					<img src="../image/page/product/${ sessionScope.recentPrdt4 }/${sessionScope.recentPrdt4 }_title.jpg" style="width: 70px;">	            					
	            				</a> 
	            			</li>
	            		</c:if>
	            		<c:if test="${ sessionScope.recentPrdt3 ne null }">
	            			<li>
	            				<a href="../product/detail?prdtCode=${ sessionScope.recentPrdt3}">
	            					<img src="../image/page/product/${ sessionScope.recentPrdt3 }/${sessionScope.recentPrdt3 }_title.jpg" style="width: 70px;">	            					
	            				</a> 
	            			</li>
	            		</c:if> 
	            		<c:if test="${ sessionScope.recentPrdt2 ne null }">
	            			<li>
	            				<a href="../product/detail?prdtCode=${ sessionScope.recentPrdt2}">
	            					<img src="../image/page/product/${ sessionScope.recentPrdt2 }/${sessionScope.recentPrdt2 }_title.jpg" style="width: 70px;">	            					
	            				</a> 
	            			</li> 
	            		</c:if> 
	            		<c:if test="${ sessionScope.recentPrdt1 ne null }">
	            			<li>
	            				<a href="../product/detail?prdtCode=${ sessionScope.recentPrdt1}">
	            					<img src="../image/page/product/${ sessionScope.recentPrdt1 }/${sessionScope.recentPrdt1 }_title.jpg" style="width: 70px;">	            					
	            				</a> 
	            			</li> 
	            		</c:if> 
	            		<c:if test="${ sessionScope.recentPrdt0 ne null }">
	            			<li>
	            				<a href="../product/detail?prdtCode=${ sessionScope.recentPrdt0}">
	            					<img src="../image/page/product/${ sessionScope.recentPrdt0 }/${sessionScope.recentPrdt0 }_title.jpg" style="width: 70px;">	            					
	            				</a> 
	            			</li>
	            		</c:if>
		            </ul>
		        </div>
		        
		    </section>
		    <p class="align-center"><a href="javascript:quickViewAll()">[펼쳐보기]</a></p>
		</div>
		
		<section class="add_quick_menu">
		    <ul>
		        
		        <li><a href="" id="ico_quick4" class="ico_quick4">
		        <span class="mouseControll" id="mouseControll"></span>
		        <span class="">매장전용<br />상품존</span></a></li>
		        <li><a href="../mypage/myCouponList" id="ico_quick2" class="ico_quick2">
		        <span class="mouseControll2" id="mouseControll2"></span>
		        	쿠폰</a></li>
		    </ul>
		    
		    
		    <a href="#" class="ico_quick3" id="toTop" style="display: inline-block;">
		    <span id="toTopHover" style="opacity: 0;">
		    </span>TOP</a>
		    
		    
		    
		    
		</section>
</div>