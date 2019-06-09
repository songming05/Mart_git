package service.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.bean.ServiceDTO;
import service.bean.ServicePaging;
import service.dao.ServiceDAO;

@Controller
public class ServiceController {
	@Autowired
	private ServiceDAO serviceDAO;
	@Autowired
	private ServicePaging servicePaging;
	
	//고객센터 메인
	@RequestMapping(value="/service/serviceMain", method=RequestMethod.GET)
	public ModelAndView serviceMain() {
		
		List<String> listCategory1 = serviceDAO.getCategory1();
		List<String> listCategory2 = serviceDAO.getCategory2();
		List<String> listTitle = serviceDAO.getTitle();
		List<String> listAnswer = serviceDAO.getAnswer();
		
		if(!listCategory1.isEmpty() && !listCategory2.isEmpty() && !listTitle.isEmpty() && !listAnswer.isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("listCategory1", listCategory1);
			modelAndView.addObject("listCategory2", listCategory2);
			modelAndView.addObject("listTitle", listTitle);
			modelAndView.addObject("listAnswer", listAnswer);
			modelAndView.setViewName("/service/serviceMain");
			
			return modelAndView;

		}else {
			return null;
		}
		
	}
	
	//FAQ
	@RequestMapping(value="/service/faqList", method=RequestMethod.GET)
	public ModelAndView faqList(@RequestParam(value ="category", defaultValue="all") String category,
			@RequestParam(value ="select", defaultValue="all") String select,
			@RequestParam(value ="page", defaultValue="1", required=false) int page) {
				
		ModelAndView modelAndView = new ModelAndView();
		List<ServiceDTO> faqLists = null;
		
		//전체 페이징
		int endNum = page*10;
		int startNum = endNum-9;
		
		Map<String,Object> pageMap = new HashMap<String,Object>();
		pageMap.put("startNum",startNum);
		pageMap.put("endNum",endNum);
		
		faqLists =  serviceDAO.getAllPageList(pageMap);
		
		//페이징 처리
		int totalA = serviceDAO.getTotalA();//총 글수
		servicePaging.setCurrentPage(page);
		servicePaging.setPageBlock(5);
		servicePaging.setPageSize(10);
		servicePaging.setTotalA(totalA);
		servicePaging.makePagingHTML(category);
		
		
		//////////////////////////////////////////////////////////////////////

		//카테고리2 상품정보
		if(category.equals("productInfo")) {
			Map<String, String> categoryMap = new HashMap<String, String>();
			categoryMap = new HashMap<String, String>();
			//DB				
			categoryMap.put("category", "상품정보");
			categoryMap.put("select", select);				
			faqLists = serviceDAO.getProductInfo(categoryMap);
			

			modelAndView.addObject("productInfoDisplay", "<div id='productInfoDiv'>" + 
									" <p class='tit'>상품정보</p>" + 
									" <ul class='list_type1_1 clearfix'>" + 
									"<li><a href='/abcd_mart/service/faqList?category=productInfo&select=all'>전체</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=productInfo&select=search'>상품검색</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=productInfo&select=price'>가격</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=productInfo&select=ask'>입고문의</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=productInfo&select=management'>신발관리법</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=productInfo&select=size'>사이즈</a></li>" + 
									"</ul>" + 
									"</div> ");
			
			//상품정보 페이징
			endNum = page*7;
			startNum = endNum-6;
			
			pageMap = new HashMap<String,Object>();
			pageMap.put("startNum",startNum);
			pageMap.put("endNum",endNum);
			pageMap.put("category", "상품정보");
			pageMap.put("select", select);
			
			if(select.equals("search")) {
				pageMap.put("category", "상품검색");
				
			}else if(select.equals("price")) {
				pageMap.put("category", "가격");
			}else if(select.equals("ask")) {
				pageMap.put("category", "입고문의");
			}else if(select.equals("management")) {
				pageMap.put("category", "신발관리법");
			}else if(select.equals("size")) {
				pageMap.put("category", "사이즈");
			}
			
			faqLists =  serviceDAO.getAllPageList(pageMap);
			
			//페이징 처리
			totalA = serviceDAO.getTotalA();//총 글수
			servicePaging.setCurrentPage(page);
			servicePaging.setPageBlock(1);
			servicePaging.setPageSize(1);
			servicePaging.setTotalA(totalA);
			servicePaging.makePagingHTML(category);
			
			
		//카테고리2 교환/반품/환불
		} else if(category.equals("exchange")) {
			Map<String,String> exchangeMap = new HashMap<String,String>();
			
			exchangeMap.put("category", "교환/반품/환불");
			exchangeMap.put("select", select);
			
			faqLists = serviceDAO.getExchange(exchangeMap);
			
			modelAndView.addObject("exchangeDisplay", "<div id='exchangeDiv'>" + 
									" <p class='tit'>교환/반품/환불</p>" + 
									" <ul class='list_type1_1 clearfix'>" + 
									"<li><a href='/abcd_mart/service/faqList?category=exchange&select=all'>전체</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=exchange&select=trade'>교환</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=exchange&select=payback'>반품(환불)</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=exchange&select=offline'>오프라인 교환/환불</a></li>" + 
									"</ul>" + 
									"</div> ");
			
			//교환/반품/환불 페이징
			endNum = page*10;
			startNum = endNum-9;
			
			pageMap = new HashMap<String,Object>();
			pageMap.put("startNum",startNum);
			pageMap.put("endNum",endNum);
			pageMap.put("category", "교환/반품/환불");
			pageMap.put("select", select);
			
			
			if(select.equals("trade")) {
				pageMap.put("category", "교환");
			}else if(select.equals("payback")) {
				pageMap.put("category", "반품(환불)");
			}else if(select.equals("offline")) {
				pageMap.put("category", "오프라인 교환/환불");
			}
			
			faqLists =  serviceDAO.getAllPageList(pageMap);
			
			//페이징 처리
			totalA = serviceDAO.getTotalA();//총 글수
			servicePaging.setCurrentPage(page);
			servicePaging.setPageBlock(2);
			servicePaging.setPageSize(10);
			servicePaging.setTotalA(totalA);
			servicePaging.makePagingHTML(category);
			
		//카테고리2 배송현황
		}else if(category.equals("delivery")) {
			Map<String,String> deliveryMap = new HashMap<String,String>();
			deliveryMap.put("category","배송현황");
			deliveryMap.put("select",select);
			
			faqLists = serviceDAO.getDelivery(deliveryMap);
			
			modelAndView.addObject("deliveryDisplay", "<div id='deliveryDiv'>" + 
									" <p class='tit'>배송현황</p>" + 
									" <ul class='list_type1_1 clearfix'>" + 
									"<li><a href='/abcd_mart/service/faqList?category=delivery&select=all'>전체</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=delivery&select=check'>배송조회</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=delivery&select=delay'>배송지연</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=delivery&select=problem'>배송오류</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=delivery&select=cost'>배송비</a></li>" + 
									"</ul>" + 
									"</div> ");
			
			
			//배송현황 페이징
			endNum = page*10;
			startNum = endNum-9;
			
			pageMap = new HashMap<String,Object>();
			pageMap.put("startNum",startNum);
			pageMap.put("endNum",endNum);
			pageMap.put("category", "배송현황");
			pageMap.put("select", select);
			
			
			if(select.equals("check")) {
				pageMap.put("category", "배송조회");
			}else if(select.equals("delay")) {
				pageMap.put("category", "배송지연");
			}else if(select.equals("problem")) {
				pageMap.put("category", "배송오류");
			}else if(select.equals("cost")) {
				pageMap.put("category", "배송비");
			}
			
			faqLists =  serviceDAO.getAllPageList(pageMap);
			
			//페이징 처리
			totalA = serviceDAO.getTotalA();//총 글수
			servicePaging.setCurrentPage(page);
			servicePaging.setPageBlock(2);
			servicePaging.setPageSize(10);
			servicePaging.setTotalA(totalA);
			servicePaging.makePagingHTML(category);
			
		//카테고리2 주문/결제/취소
		}else if(category.equals("orderRelation")) {
			Map<String,String> orderMap = new HashMap<String,String>();
			orderMap.put("category","주문/결제/취소");
			orderMap.put("select",select);
			
			faqLists = serviceDAO.getOrderRelation(orderMap);
			
			modelAndView.addObject("orderDisplay", "<div id='orderDiv'>" + 
									" <p class='tit'>주문/결제/취소</p>" + 
									" <ul class='list_type1_1 clearfix'>" + 
									"<li><a href='/abcd_mart/service/faqList?category=orderRelation&select=all'>전체</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=orderRelation&select=order'>주문</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=orderRelation&select=payment'>결제</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=orderRelation&select=cancle'>취소</a></li>" + 
									"</ul>" + 
									"</div> ");
			
			//주문/결제/취소 페이징
			endNum = page*10;
			startNum = endNum-9;
			
			pageMap = new HashMap<String,Object>();
			pageMap.put("startNum",startNum);
			pageMap.put("endNum",endNum);
			pageMap.put("category", "주문/결제/취소");
			pageMap.put("select", select);
			
			
			if(select.equals("order")) {
				pageMap.put("category", "주문");
			}else if(select.equals("payment")) {
				pageMap.put("category", "결제");
			}else if(select.equals("cancle")) {
				pageMap.put("category", "취소");
			}
			
			faqLists =  serviceDAO.getAllPageList(pageMap);
			
			//페이징 처리
			totalA = serviceDAO.getTotalA();//총 글수
			servicePaging.setCurrentPage(page);
			servicePaging.setPageBlock(3);
			servicePaging.setPageSize(10);
			servicePaging.setTotalA(totalA);
			servicePaging.makePagingHTML(category);
			
		//카테고리2 AS
		}else if(category.equals("repair")) {
			Map<String,String> asMap = new HashMap<String,String>();
			asMap.put("category","AS");
			asMap.put("select",select);
			
			faqLists = serviceDAO.getAS(asMap);
			
			modelAndView.addObject("asDisplay", "<div id='asDiv'>" + 
									" <p class='tit'>AS</p>" + 
									" <ul class='list_type1_1 clearfix'>" + 
									"<li><a href='/abcd_mart/service/faqList?category=repair&select=all'>전체</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=repair&select=asreceive'>AS접수/현황/결과</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=repair&select=asreview'>심의접수/현황/결과</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=repair&select=ascost'>수선비단가표</a></li>" + 
									"</ul>" + 
									"</div> ");
			
			//AS 페이징
			endNum = page*10;
			startNum = endNum-9;
			
			pageMap = new HashMap<String,Object>();
			pageMap.put("startNum",startNum);
			pageMap.put("endNum",endNum);
			pageMap.put("category", "AS");
			pageMap.put("select", select);
			
			
			if(select.equals("asreceive")) {
				pageMap.put("category", "AS접수/현황/결과");
			}else if(select.equals("asreview")) {
				pageMap.put("category", "심의접수/현황/결과");
			}else if(select.equals("ascost")) {
				pageMap.put("category", "수선비단가표");
			}
			
			faqLists =  serviceDAO.getAllPageList(pageMap);
			
			//페이징 처리
			totalA = serviceDAO.getTotalA();//총 글수
			servicePaging.setCurrentPage(page);
			servicePaging.setPageBlock(3);
			servicePaging.setPageSize(10);
			servicePaging.setTotalA(totalA);
			servicePaging.makePagingHTML(category);
			

		//카테고리 회원정보
		}else if(category.equals("memberInfo")) {
			Map<String,String> memberInfoMap = new HashMap<String,String>();
			memberInfoMap.put("category","회원정보");
			memberInfoMap.put("select",select);
			
			faqLists = serviceDAO.getMemberInfo(memberInfoMap);
			
			modelAndView.addObject("memberInfoDisplay", "<div id='memberInfoDiv'>" + 
									" <p class='tit'>회원정보</p>" + 
									" <ul class='list_type1_1 clearfix'>" + 
									"<li><a href='/abcd_mart/service/faqList?category=memberInfo&select=all'>전체</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=memberInfo&select=login'>로그인</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=memberInfo&select=signup'>회원가입/탈퇴</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=memberInfo&select=lost'>ID/PW분실</a></li>" + 
									"<li><a href='/abcd_mart/service/faqList?category=memberInfo&select=infoChange'>개인정보변경</a></li>" + 
									"</ul>" + 
									"</div> ");
			
			
			//회원정보 페이징
			endNum = page*10;
			startNum = endNum-9;
			
			pageMap = new HashMap<String,Object>();
			pageMap.put("startNum",startNum);
			pageMap.put("endNum",endNum);
			pageMap.put("category", "회원정보");
			pageMap.put("select", select);
			
			
			if(select.equals("login")) {
				pageMap.put("category", "로그인");
			}else if(select.equals("signup")) {
				pageMap.put("category", "회원가입/탈퇴");
			}else if(select.equals("lost")) {
				pageMap.put("category", "ID/PW분실");
			}else if(select.equals("infoChange")) {
				pageMap.put("category", "개인정보변경");
			}
			
			faqLists =  serviceDAO.getAllPageList(pageMap);
			
			//페이징 처리
			totalA = serviceDAO.getTotalA();//총 글수
			servicePaging.setCurrentPage(page);
			servicePaging.setPageBlock(3);
			servicePaging.setPageSize(10);
			servicePaging.setTotalA(totalA);
			servicePaging.makePagingHTML(category);
			
		}
		
			modelAndView.addObject("page", page);
			modelAndView.addObject("pageMap", pageMap);
			modelAndView.addObject("faqLists", faqLists);
			modelAndView.addObject("servicePaging", servicePaging);
			modelAndView.setViewName("/service/faqList");
			
			return modelAndView;
	}

}
