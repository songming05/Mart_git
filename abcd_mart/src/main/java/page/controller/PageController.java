package page.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import detailPage.dao.DetailPageDAO;
import order.dao.OrderDAO;
import detailPage.bean.DetailPageDTO;

@Controller
@RequestMapping("product")
public class PageController {
	@Autowired
	private DetailPageDAO detailPageDAO;
	@Autowired
	private OrderDAO orderDAO;
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public ModelAndView detailPage(@RequestParam String prdtCode,
									HttpSession session ,
									Model model) {
		System.out.println("prdt 코드"+prdtCode);
		DetailPageDTO detailPageDTO = detailPageDAO.getProduct(prdtCode);
		//System.out.println("꺼낸후 값"+detailPageDTO.getPrdtCode());
		String id = (String) session.getAttribute("memId");
		if(id ==null) {
			id="guest";
		}
		orderDAO.deleteCart(id);
		
		
		//최근 본 상품 5개까지 저장
		recent:for(int i=0; i<5; i++) {
			String recentCheck = (String) session.getAttribute("recentPrdt"+i);
			if(recentCheck==null||recentCheck.equals("")) {
				//같은 상품 눌렀을 경우
				for(int j=0; j<i; j++) {
					String recentPrev = (String) session.getAttribute("recentPrdt"+j);
					if(recentPrev.equals(prdtCode)) break recent;
				}
				session.setAttribute("recentPrdt"+i, prdtCode);
				session.setAttribute("recentNumber", i+1);
				break;
			}
			//5개가 다찼을 경우
			if(i==4 && recentCheck!=null) {
				for(int j=0; j<=i; j++) {
					String recentPrev = (String) session.getAttribute("recentPrdt"+j);
					if(recentPrev.equals(prdtCode)) break recent;
				}
				session.removeAttribute("recentPrdt0");
				for(int j=1; j<=4; j++) {
					String recentPrev = (String) session.getAttribute("recentPrdt"+j);
					session.setAttribute("recentPrdt"+(j-1), recentPrev);
					session.removeAttribute("recentPrdt"+j);
				}
				session.setAttribute("recentPrdt"+i, prdtCode);
				session.setAttribute("recentNumber", i+1);
			}
		}// for : recent
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("detailPageDTO",detailPageDTO);
		mav.setViewName("/product/detailPage");
		
		
		
		
		System.out.println(session.getAttribute("recentPrdt0"));
		System.out.println(session.getAttribute("recentPrdt1"));
		System.out.println(session.getAttribute("recentPrdt2"));
		System.out.println(session.getAttribute("recentPrdt3"));
		System.out.println(session.getAttribute("recentPrdt4"));
		return mav;
	}
	
	
}
