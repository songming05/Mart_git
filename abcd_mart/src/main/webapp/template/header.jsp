<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="main_all">
	<div id="main_top">
		<ul id="main_top_leftUl">
			<li id="like">⭐즐겨찾기</li>
			<li id="mobile">📱모바일</li>
			<li id="facebook">📘페이스북</li>
		</ul>
		
		<ul id="main_top_rightUl">
			<c:if test="${memId eq 'admin' }"> <li><a href="../admin/index "><strong>관리자 페이지로 이동&emsp;</strong></a></li> </c:if>
			<c:if test="${memId ne null }"> <li><a href="../user/logout">로그아웃</a></li> </c:if>
			<c:if test="${memId eq null }"> <li><a href="../user/loginPage">🚪로그인</a></li></c:if>
			<c:if test="${memId eq null }"> <li><a href="/abcd_mart/user/signUpStep_01">✍회원가입</a></li></c:if>
			<li><a href="../order_pay/shoppingBasket">💼장바구니</a></li>
			<li>🚚주문배송</li>
			<li>📄마이페이지</li>
			<li>📞고객센터</li>
			<li><a href="../center/abcd_StoreList">🏠매장찾기</a></li>
		</ul>
	</div>
	
	<div>
		<table id="mobileTable">
			<tr>
				<td><img src="../image/header/mobile.png"/></td>
			</tr>
		</table>
	</div>
	
	<div id="main_center">
		<img id="logo" src="../image/header/ABCD-MART.png" onclick="location.href='/abcd_mart/main/index'" style="cursor: pointer;"/>
		
		<div id="searchBox">
			<input type="text" id="searchText"/>
			<input type="button" id="searchButton" value="🔍">
		</div>
		
		<div id="hotIssue">
			<h2>인기검색어</h2>
		</div> 
		
		<ul id="main_center_rightUl">
			<li>👍TOP30</li>
			<li>📢기획전·이벤트</li>
		</ul>
	</div>
	
		<hr id="line">
	
	<div id="main_bottom">
		<div id="category">
			📚카테고리
		</div>
		
		<ul id="shoesType">
			<li id="sportsShoes">👟운동화</li>
			<li id="shoes">👞구두</li>
			<li id="sandal">👡샌들</li>
			<li id="boots">👢부츠</li>
		</ul>
		
		<ul id="bottom_contents">
			<li id="themeShop">🎪테마샾</li>
			<li id="brand">💘브랜드</li>
			<li id="smartSearch">🔍스마트서치</li> 
		</ul>
	</div>
	
	<hr id="line2">
	
	<div>
		<table id="categoryTable">
			<tr>
				<td>
					<ul>
						<li id="shoesKinds">운동화</li>
						<li>컨버스화</li>
						<li>슬립온</li>
						<li>스니커즈</li>
					</ul>
				</td>
				<td>
					<ul>
						<li id="shoesKinds">구두</li>
						<li>옥스포드</li>
						<li>로퍼</li>
						<li>데크슈즈</li>
						<li>플랫</li>
						<li>힐</li>
					</ul>
				</td>
				<td>
					<ul>
						<li id="shoesKinds">샌들</li>
						<li>플립플랍</li>
						<li>슬라이드</li>
						<li>스크랩샌들</li>
					</ul>
				</td>
				<td>
					<ul>
						<li id="shoesKinds">부츠</li>
						<li>워크부츠</li>
						<li>앵클.부티</li>
						<li>레인부츠</li>
						<li>털부츠</li>
						<li>패딩부츠</li>
					</ul>
				</td>
				<td id="categoryAd">
					<ul>
						<li id="categoryAdLi"><img src="../image/header/category.png" height="130"/></li>
					</ul>
				</td>
			</tr>
		</table>
		
		<table id="sportsShoesTable">
			<tr>
				<td colspan="2">
					<img src="../image/header/sportsShoes.png" height="130"/>
				</td>
			</tr>
			<tr>
				<td>
					<ul>
						<li id="shoesKinds">운동화</li>
					</ul>
				</td>
				<td>
					<ul>
						<li>컨버스화</li>
						<li>슬립온</li>
						<li>스니커즈</li>
					</ul>
				</td>
			</tr>
		</table>
		
		<table id="shoesTable">
			<tr>
				<td colspan="2">
					<img src="../image/header/shoes.png" height="130"/>
				</td>
			</tr>
			<tr>
				<td>
					<ul>
						<li id="shoesKinds">구두</li>
					</ul>
				</td>
				<td>
					<ul>
						<li>옥스포드</li>
						<li>로퍼</li>
						<li>데크슈즈</li>
						<li>플랫</li>
						<li>힐</li>
					</ul>
				</td>
			</tr>
		</table>
		
		<table id="sandalTable">
			<tr>
				<td colspan="2">
					<img src="../image/header/sandal.png" height="130"/>
				</td>
			</tr>
			<tr>
				<td>
					<ul>
						<li id="shoesKinds">구두</li>
					</ul>
				</td>
				<td>
					<ul>
						<li>플립플랍</li>
						<li>슬라이드</li>
						<li>스크랩샌들</li>
					</ul>
				</td>
			</tr>
		</table>
		
		<table id="bootsTable">
			<tr>
				<td colspan="2">
					<img src="../image/header/boots.png" height="130"/>
				</td>
			</tr>
			<tr>
				<td>
					<ul>
						<li id="shoesKinds">부츠</li>
					</ul>
				</td>
				<td>
					<ul>
						<li>워크부츠</li>
						<li>앵클.부티</li>
						<li>레인부츠</li>
						<li>털부츠</li>
						<li>패딩부츠</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>	
	
	<div>
		<table id="themeShopTable">
			<tr>
				<td>
					<ul>
						<li>남성</li>
						<li>여성</li>
						<li>아동</li>
					</ul>
				</td>
			</tr>
		</table>
		
		<div id="brand_div">
			<section id="brand_section1">
				<table id="brandTable1">
					<tr>
						<td rowspan="2" valign="top">
							<ul id="brandTable1_name">
								<li>BEST 브랜드</li>
							</ul>
						</td>
						<td colspan="2">
							<ul id="brandTable1_logo">
								<li><img src="../image/header/brand_nike.gif"/></li>
								<li><img src="../image/header/brand_adidas.gif"/></li>
								<li><img src="../image/header/brand_vans.gif"/></li>
								<li><img src="../image/header/brand_fila.gif"/></li>
								<li><img src="../image/header/brand_converse.gif"/></li>
								<li><img src="../image/header/brand_puma.gif"/></li>
								<li><img src="../image/header/brand_reebok.gif"/></li>
								<li><img src="../image/header/brand_newbalance.gif"/></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2">
							<ul id="brandTable1_logo">
								<li><img src="../image/header/brand_hawkins.gif"/></li>
								<li><img src="../image/header/brand_nuovo.gif"/></li>
								<li><img src="../image/header/brand_saucony.gif"/></li>
								<li><img src="../image/header/brand_sperry.gif"/></li>
								<li><img src="../image/header/brand_danner.gif"/></li>
								<li><img src="../image/header/brand_superga.gif"/></li>
								<li><img src="../image/header/brand_skechers.gif"/></li>
								<li><img src="../image/header/brand_stefanorossi.gif"/></li>
							</ul>
						</td>
					</tr>
				</table>
			</section>
			
			<hr id="brandTable_line">
			
			<section id="brand_section2">  
				<table id="brandTable2">
					<tr>
						<td colspan="2">
							<ul id="brandTable2_name">
								<li>카테고리 검색</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<ul id="brandTable2_button1">
								<li><button>운동화</button></li>
								<li><button>구두</button></li>
							</ul>
						</td>
						<td>
							<ul id="brandTable2_button2">
								<li><button>샌들</button></li>
								<li><button>부츠</button></li>
							</ul>
						</td> 
					</tr>
				</table>
				 
				<table id="brandTable3">
					<tr>
						<td>
							<ul id="brandTable3_name">
								<li>문자열 검색</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<ul id="brandTable3_korea">
								<li><button>ㄱ</button></li>
								<li><button>ㄴ</button></li>
								<li><button>ㄷ</button></li>
								<li><button>ㄹ</button></li>
								<li><button>ㅁ</button></li>
								<li><button>ㅂ</button></li>
								<li><button>ㅅ</button></li>
								<li><button>ㅇ</button></li>
								<li><button>ㅈ</button></li>
								<li><button>ㅊ</button></li>
								<li><button>ㅋ</button></li>
								<li><button>ㅌ</button></li>
								<li><button>ㅍ</button></li>
								<li><button>ㅎ</button></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<ul id="brandTable3_english">
								<li><button>A</button></li>
								<li><button>B</button></li>
								<li><button>C</button></li>
								<li><button>D</button></li>
								<li><button>E</button></li>
								<li><button>F</button></li>
								<li><button>G</button></li>
								<li><button>H</button></li>
								<li><button>I</button></li>
								<li><button>J</button></li>
								<li><button>K</button></li>
								<li><button>L</button></li>
								<li><button>M</button></li>
								<li><button>N</button></li>
								<li><button>O</button></li>
								<li><button>P</button></li>
								<li><button>Q</button></li>
								<li><button>R</button></li>
								<li><button>S</button></li>
								<li><button>T</button></li>
								<li><button>U</button></li>
								<li><button>V</button></li>
								<li><button>W</button></li>
								<li><button>X</button></li>
								<li><button>Y</button></li>
								<li><button>Z</button></li>
							</ul>
						</td>
					</tr>
				</table>
				
				<table id="brandTable4">
					<tr>
						<td>
							<ul id="brandTable4_name">
								<li>브랜드 검색</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td id="brandTable4_searchBox">
							<ul>
								<li><input type="text" id="brandTable4_text" size="20"/></li>
								<li><button id="brandTable4_button">검색</button></li>
							</ul>
						</td> 
					</tr>
				</table>
			</section>
			
			<section id="brand_section3">
				<table id="brandTable5">
					<tr>
						<td>
							<ul id="brandTable5_title">
								<li>총 ??개의 브랜드가 준비되어 있습니다.</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td id="brandTable5_brandBox">
							<ul id="brandTable5_brand_ul">
								<li>
									<img src="../image/header/brand_nike.gif"/>
									<p>나이키</p>	
								</li>
								<li>
									<img src="../image/header/brand_adidas.gif"/>
									<p>아디다스</p>	
								</li>
								<li>
									<img src="../image/header/brand_vans.gif"/>
									<p>반스</p>	
								</li>
								<li>
									<img src="../image/header/brand_fila.gif"/>
									<p>필라</p>	
								</li>
								<li>
									<img src="../image/header/brand_converse.gif"/>
									<p>컨버스</p>	
								</li>
								<li>
									<img src="../image/header/brand_puma.gif"/>
									<p>퓨마</p>	
								</li>
								<li>
									<img src="../image/header/brand_reebok.gif"/>
									<p>리복</p>
								</li>
								<li>
									<img src="../image/header/brand_newbalance.gif"/>
									<p>뉴발란스</p>
								</li>
								<li>
									<img src="../image/header/brand_nuovo.gif"/>
									<p>누오보</p>	
								</li>
								<li>
									<img src="../image/header/brand_saucony.gif"/>
									<p>써코니</p>	
								</li>
								<li>
									<img src="../image/header/brand_sperry.gif"/>
									<p>스페리</p>	
								</li>
								<li>
									<img src="../image/header/brand_danner.gif"/>
									<p>대너</p>	
								</li>
								<li>
									<img src="../image/header/brand_superga.gif"/>
									<p>수페르가</p>	
								</li>
								<li>
									<img src="../image/header/brand_skechers.gif"/>
									<p>스케쳐스</p>	
								</li>
								<li>
									<img src="../image/header/brand_stefanorossi.gif"/>
									<p>스테파노로시</p>	
								</li>
							</ul>	
						</td> 
					</tr>
				</table>
			</section>
		</div>
		
		<div id="smartSearch_div">
			<h2 id="smartSearch_title">스마트서치</h2>
			<hr id="smartSearch_line"/>
			<section id="smartSearch_brand_section">
				<h4 id="smartSearchTable1_brandTitle">브랜드</h4>
				<table id="smartSearchTable1">
					<tr>
						<td>
							<ul id="smartSearchTable1_brand_ul">
								<li><img src="../image/header/brand_nike.gif"/></li>
								<li><img src="../image/header/brand_adidas.gif"/></li>
								<li><img src="../image/header/brand_vans.gif"/></li>
								<li><img src="../image/header/brand_fila.gif"/></li>
								<li><img src="../image/header/brand_converse.gif"/></li>
								<li><img src="../image/header/brand_puma.gif"/></li>
								<li><img src="../image/header/brand_reebok.gif"/></li>
								<li><img src="../image/header/brand_newbalance.gif"/></li>
								<li><img src="../image/header/brand_hawkins.gif"/></li>
								<li><img src="../image/header/brand_nuovo.gif"/></li>
								<li><img src="../image/header/brand_saucony.gif"/></li>
								<li><img src="../image/header/brand_sperry.gif"/></li>
								<li><img src="../image/header/brand_danner.gif"/></li>
								<li><img src="../image/header/brand_superga.gif"/></li>
								<li><img src="../image/header/brand_skechers.gif"/></li>
								<li><img src="../image/header/brand_stefanorossi.gif"/></li>
								<li><img src="../image/header/brand_nike.gif"/></li>
								<li><img src="../image/header/brand_adidas.gif"/></li>
								<li><img src="../image/header/brand_vans.gif"/></li>
								<li><img src="../image/header/brand_fila.gif"/></li>
								<li><img src="../image/header/brand_converse.gif"/></li>
								<li><img src="../image/header/brand_puma.gif"/></li>
								<li><img src="../image/header/brand_reebok.gif"/></li>
								<li><img src="../image/header/brand_newbalance.gif"/></li>
								<li><img src="../image/header/brand_hawkins.gif"/></li>
								<li><img src="../image/header/brand_nuovo.gif"/></li>
								<li><img src="../image/header/brand_saucony.gif"/></li>
								<li><img src="../image/header/brand_sperry.gif"/></li>
								<li><img src="../image/header/brand_danner.gif"/></li>
								<li><img src="../image/header/brand_superga.gif"/></li>
								<li><img src="../image/header/brand_skechers.gif"/></li>
								<li><img src="../image/header/brand_stefanorossi.gif"/></li>
							</ul>
						</td>
					</tr>
				</table>
			</section>
			
			<section id="smartSearch_category_section_out">
				<h4>카테고리</h4>
				<section id="smartSearch_category_section_in">
					<table id="smartSearchTable2">
						<tr>
							<td>
								<table id="smartSearchTable2_categoryTable">
									<tr>
										<td id="smartSearchTable2_categoryTable_sportsShoes_img">
											<img src="../image/header/smartSearch_sportsShoes.jpg"/>
											<p><input type="checkbox">운동화</p>
										</td>
										<td id="smartSearchTable2_categoryTable_sportsShoes_list">
											<ul>
												<li><input type="checkbox">컨버스화</li>
												<li><input type="checkbox">슬립온</li>
												<li><input type="checkbox">스니커즈</li>
											</ul>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table id="smartSearchTable2_categoryTable">
									<tr>
										<td id="smartSearchTable2_categoryTable_shoes_img">
											<img src="../image/header/smartSearch_shoes.jpg"/>
											<p><input type="checkbox">구두</p>
										</td>
										<td id="smartSearchTable2_categoryTable_shoes_list">
											<ul>
												<li><input type="checkbox">옥스포드</li>
												<li><input type="checkbox">로퍼</li>
												<li><input type="checkbox">데크슈즈</li>
												<li><input type="checkbox">플랫</li>
												<li><input type="checkbox">힐</li>
											</ul>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table id="smartSearchTable2_categoryTable">
									<tr>
										<td id="smartSearchTable2_categoryTable_sandal_img">
											<img src="../image/header/smartSearch_sandal.jpg"/>
											<p><input type="checkbox">샌들</p>
										</td>
										<td id="smartSearchTable2_categoryTable_sandal_list">
											<ul>
												<li><input type="checkbox">플립프랇</li>
												<li><input type="checkbox">슬라이드</li>
												<li><input type="checkbox">스트랩샌들</li>
											</ul>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table id="smartSearchTable2_categoryTable">
									<tr>
										<td id="smartSearchTable2_categoryTable_shoes_img">
											<img src="../image/header/smartSearch_shoes.jpg"/>
											<p><input type="checkbox">부츠</p>
										</td>
										<td id="smartSearchTable2_categoryTable_shoes_list">
											<ul>
												<li><input type="checkbox">워크부츠</li>
												<li><input type="checkbox">앵클.부티</li>
												<li><input type="checkbox">레인부츠</li>
												<li><input type="checkbox">털부츠</li>
												<li><input type="checkbox">패딩부츠</li>
											</ul>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</section>
			</section>
			<section id="smartSearch_themeNprice_section">
				<div>
					<section id="smartSearch_theme_section">
						<h4>테마</h4>
						<button>남성</button>
						<button>여성</button>
						<button>아동</button>
					</section>
					
					<section id="smartSearch_price_section">
						<h4>가격</h4>
						<input type="text" id="startPrice" placeholder="최소가격"/>&nbsp;~
						<input type="text" id="endPrice" placeholder="최대가격"/>
					</section>
				</div>
			</section>
			
			<section id="smartSearch_size_section">
				<h4>사이즈</h4>
				<table>
					<tr>
						<td>
							<button>100</button>
							<button>110</button>
							<button>120</button>
							<button>130</button>
							<button>140</button>
							<button>150</button>
							<button>160</button>
							<button>170</button>
							<button>180</button>
							<button>190</button>
						</td>
					</tr>
					<tr>
						<td>
							<button>200</button>
							<button>210</button>
							<button>220</button>
							<button>225</button>
							<button>230</button>
							<button>235</button>
							<button>240</button>
							<button>245</button>
							<button>250</button>
							<button>255</button>
						</td>
					</tr>
					<tr>
						<td>
							<button>260</button>
							<button>265</button>
							<button>270</button>
							<button>275</button>
							<button>280</button>
							<button>285</button>
							<button>290</button>
							<button>295</button>
							<button>300</button>
							<button>310</button>
						</td>
					</tr>
				</table>
			</section>
			
			<section id="smartSearch_color_section">
				<h4 id="smartSearch_color_title">색상</h4>
				<table id="smartSearch_color_table">
					<tr>
						<td>
							<button id="color_pink"></button>
							<button id="color_red"></button>
							<button id="color_orange"></button>
							<button id="color_yellow"></button>
							<button id="color_lightgreen"></button>
							<button id="color_green"></button>
							<button id="color_skyblue"></button>
							<button id="color_blue"></button>
							<button id="color_purple"></button>
							<button id="color_white"></button>
							<button id="color_black"></button>
						</td>
					</tr>
				</table>
			</section>
			
			<section id="smartSearch_select_section">
				<h4>선택한 조건</h4>
				<div id="smartSearch_select_div">
				
				</div>
				<button id="smartSearch_select_button">전체해제</button>
			</section>
			
			<section id="smartSearch_search_section">
				<table>
					<tr>
						<td>
							<button id="smartSearch_search_searchButton">검색</button>
							<button id="smartSearch_search_cancelButton">닫기</button>
						</td>
					</tr>
				</table>
			</section>
		</div>
	</div>
</div>
<br><br>