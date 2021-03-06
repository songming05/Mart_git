package admin.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.PaymentDTO;
import admin.bean.PrdtManagementDTO;
import admin.bean.ReturnDTO;
import admin.bean.StatsPrdtDTO;
import admin.bean.StatsSalesDTO;
import admin.dao.AdminDAO;
import product.bean.ProductDTO;
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
	public ModelAndView index(HttpSession session) {
		String id = "";
		id = (String) session.getAttribute("memId");

		ModelAndView mav = new ModelAndView();
		
		if(id==null || !id.equals("admin")) {
			mav.addObject("display", "/admin/not_admin.jsp");
			mav.addObject("leftMenu", "/admin/leftMenu.jsp");
			mav.setViewName("/admin/index");
			return mav;
		}
		
		mav.addObject("display", "/admin/main.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu.jsp");
		mav.setViewName("/admin/index");
		
		return mav;
		
	}
	
	///////////////////////////// 상품 메뉴
	@RequestMapping(value="/admin/applyFormPdt", method=RequestMethod.GET)
	public ModelAndView applyFormPdt() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/admin/applyFormPdt.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Pdt.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/applyPdt", method=RequestMethod.POST)//상품등록
	public @ResponseBody void applyPdt(@RequestParam Map<String,Object> map) {
		//상품등록???
		
		System.out.println(map);
		productDAO.applyPdt(map);
		
		//prdtmanagement에 사이즈 220~250까지 등록해야함...
		if( ((String) map.get("prdtSize")).equals(250) ) {
			int sizeInit = Integer.parseInt((String) map.get("prdtSize"));
			for(int i=0; i<7; i++) {
				map.remove("prdtSize");
				int inputSize = sizeInit+(i*5);
				map.put("prdtSize", inputSize+"");
				adminDAO.insertMan(map);
				System.out.println("map "+i+"    ="+map);
			}
		}else {
			int sizeInit = Integer.parseInt((String) map.get("prdtSize"));
			for(int i=0; i<7; i++) {
				map.remove("prdtSize");
				int inputSize = sizeInit+(i*5);
				map.put("prdtSize", inputSize+"");
				adminDAO.insertWoman(map);
			}
		}
		
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
	
	@ResponseBody
	@RequestMapping(value="/admin/applyImg", method=RequestMethod.POST)
	public void applyImg(@RequestParam("fileArray1") List<String> fileArray1 , 
						@RequestParam("fileArray2") List<String> fileArray2,
						@RequestParam("prdtCode") String prdtCode) {
		
		System.out.println(fileArray1);
		System.out.println(fileArray2);
		

		Map<String,String> map = new HashMap<String,String>();
		map.put("prdtCode",prdtCode);
		System.out.println(map.get("prdtCode"));

		
		int i=1;
		for( String namedata :  fileArray1) {
			map.put("prdtImage"+i, namedata);
			System.out.println(map.get("prdtImage"+i));
			i+=1;
		}
		
		int k=1;
		for( String namedata :  fileArray2) {
			map.put("prdtDetailImage"+k, namedata);
			System.out.println(map.get("prdtDetailImage"+k));
			k+=1;
		}
		
		
		adminDAO.applyImg(map);
	}
	
	@RequestMapping(value="/admin/prdtManagementForm", method=RequestMethod.GET)
	public ModelAndView prdtManagementForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display","/admin/prdtManagementForm.jsp");
		mav.addObject("leftMenu","/admin/leftMenu_Pdt.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/prdtManagement", method=RequestMethod.POST)
	public ModelAndView prdtManagement(@RequestParam Map<String,String> map) { //2개 담김
		
		List<ProductDTO> list = adminDAO.prdtManagement(map);
		if(list==null) {
			list = new ArrayList<ProductDTO>();
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		mav.addObject("list",list);
		return mav;
	}
	
	
	@RequestMapping(value="/admin/managementModifyForm", method=RequestMethod.GET)
	public ModelAndView managementModifyForm(@RequestParam String prdtCode) { //2개 담김
		
		List<PrdtManagementDTO> list = adminDAO.managementModify(prdtCode);
		
		if(list==null) {
			list = new ArrayList<PrdtManagementDTO>();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("/admin/managementModifyForm");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/updateQty", method=RequestMethod.POST)
	public String updateQty(@RequestParam Map<String,String> map) { //2개 담김

		adminDAO.updateQty(map);

		return "/abcd_mart/admin/managementModifyForm?prdtCode="+map.get("prdtCode");	
	}
	
	
	//그안에 수량변경버튼
	@ResponseBody
	@RequestMapping(value="/admin/prdtChange", method=RequestMethod.POST)
	public void prdtChange(@RequestParam Map<String,Object> map) {
//		System.out.println(map.get("changePrdt"));
//		System.out.println(map.get("changeSize"));
//		System.out.println(map.get("changeQty"));
		adminDAO.prdtChange(map);
	}
	
	
	////////////////////////// 주문 메뉴
	@RequestMapping(value="/admin/orderForm", method=RequestMethod.GET)
	public ModelAndView orderForm() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/admin/orderForm.jsp");
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
		
		List<PaymentDTO> list = adminDAO.paymentList(map);

		mav.addObject("list",list);
		mav.setViewName("jsonView");
		System.out.println(list);
		return mav;
	}
	
	@RequestMapping(value="/admin/orderReturnForm", method=RequestMethod.GET)
	public ModelAndView orderReturnForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display","/admin/orderReturnForm.jsp");
		mav.addObject("leftMenu","/admin/leftMenu_Order.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/orderReturn", method=RequestMethod.POST)
	public ModelAndView orderReturn(@RequestParam Map<String,String> map) {
		//System.out.println(map.get("returnSts"));
		List<ReturnDTO> list = adminDAO.orderReturn(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/admin/returnChange", method=RequestMethod.POST)
	public ModelAndView returnChange(@RequestParam Map<String,String> map) {
		System.out.println(map.get("returnSts"));
		adminDAO.returnChange(map);
		
		ModelAndView mav = new ModelAndView();

		mav.setViewName("jsonView");
		return mav;
	}
	
	
	@RequestMapping(value="/admin/orderDelivaryForm", method=RequestMethod.GET)
	public ModelAndView orderDelivaryForm() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/admin/orderDelivaryForm.jsp");
		mav.addObject("leftMenu", "/admin/leftMenu_Order.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	@RequestMapping(value="/admin/statsSalesForm", method=RequestMethod.GET)
	public ModelAndView statsSalesForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display","/admin/statsSalesForm.jsp");
		mav.addObject("leftMenu","/admin/leftMenu_Stats.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	
	@RequestMapping(value="/admin/statsSales", method=RequestMethod.POST)
	public ModelAndView statsSales(@RequestParam Map<String,String> map) {
		List<StatsSalesDTO> list = adminDAO.statsSales(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	
	@RequestMapping(value="/admin/statsPrdt", method=RequestMethod.POST)
	public ModelAndView statsPrdt(@RequestParam Map<String,String> map) {
		System.out.println(map.get("fromDate"));
		System.out.println(map.get("toDate")); 
		List<StatsPrdtDTO> list = adminDAO.statsPrdt(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	
	@RequestMapping(value="/admin/statsPrdtForm", method=RequestMethod.GET)
	public ModelAndView statsPrdtForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display","/admin/statsPrdtForm.jsp");
		mav.addObject("leftMenu","/admin/leftMenu_Stats.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}
	
	
	///운영  - 쿠폰리스트
	@RequestMapping(value="/admin/couponListForm", method=RequestMethod.GET)
	public ModelAndView couponListForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display","/admin/couponListForm.jsp");
		mav.addObject("leftMenu","/admin/leftMenu_Management.jsp");
		mav.setViewName("/admin/index");
		return mav;
	}

	//쿠폰 json
	@RequestMapping(value="/admin/couponList", method=RequestMethod.POST)
	public ModelAndView couponList(@RequestParam Map<String,String> map) {
		System.out.println(map.get("fromDate"));
		System.out.println(map.get("toDate")); 
		List<StatsPrdtDTO> list = adminDAO.couponList(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("jsonView");
		return mav;
	}
	
}
