package admin.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.PaymentDTO;
import admin.dao.AdminDAO;
import product.dao.ProductDAO;

@Controller
public class AdminController {
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private AdminDAO adminDAO;
	
	
//	ModelAndView modelAndView = new ModelAndView();
//	modelAndView.setViewName("/main/index");
//	return  modelAndView;
	
	@RequestMapping(value="/admin/index", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/admin/main.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/applyFormPdt", method=RequestMethod.GET)
	public ModelAndView applyFormPdt() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/admin/applyFormPdt.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Pdt.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/applyPdt", method=RequestMethod.POST)//상품등록
	public @ResponseBody void applyPdt(@RequestParam Map<String,String> map) {
		productDAO.applyPdt(map);
	}
	
	@RequestMapping(value="/admin/applyFormImg", method=RequestMethod.GET)
	public ModelAndView applyFormImg2(@RequestParam String prdtCode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("prdtCode",prdtCode);//상품코드넘김

		mav.addObject("display", "/admin/applyFormImg.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Pdt.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	
	@RequestMapping(value="/admin/orderForm", method=RequestMethod.GET)
	public ModelAndView orderForm() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/admin/orderForm.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Order.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/orderDelivaryForm", method=RequestMethod.GET)
	public ModelAndView orderDelivaryForm() {
		System.out.println("히힣ㅇ");
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/admin/orderDelivaryForm.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Order.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/orderPaymentForm", method=RequestMethod.GET)
	public ModelAndView orderPaymentForm() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/admin/orderPaymentForm.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Order.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/orderPayment", method=RequestMethod.POST)
	public ModelAndView orderPayment(@RequestParam Map<String,String> map) {
		ModelAndView mav = new ModelAndView();
		System.out.println("시작일 : "+map.get("fromDate"));
		System.out.println("마지막일 : "+map.get("toDate"));
		System.out.println(map.get("orderSelect")+" : "+map.get("orderResult"));

		
		
		List<PaymentDTO> list = adminDAO.paymentList(map);
		mav.addObject("list",list);
		mav.setViewName("jsonView");
		System.out.println(list);
		return mav;
	}
	
	
}
