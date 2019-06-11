package order.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;

import cart.bean.CartDTO;
import order.bean.OrderDTO;
import order.bean.PaymentinfoDTO;
import order.bean.cpDTO;
import order.dao.OrderDAO;

@Controller
public class OrderController {
	@Autowired
	private OrderDAO orderDAO;
	private static int num=1;
	
	@RequestMapping(value="/order_pay/orderPageEnd.do",method=RequestMethod.POST)
	public String orderPageEnd(@ModelAttribute OrderDTO orderDTO ,
							Model model,
							HttpSession  session) {
		
		/*
		 * Cookie[] cookies = request.getCookies();
		 * 
		 * if(cookies == null || cookies.length == 0){
		 * 
		 * 
		 * }
		 */
		
		if(session.getAttribute("orderOk")==null) {
			
			String id = (String) session.getAttribute("memId");
			
			//DB
			orderDAO.writeOrder(orderDTO);
			
			OrderDTO pDTO = orderDAO.oneOrder(orderDTO.getBuyerName());
			List<CartDTO> list1 = orderDAO.getOrderDirect(pDTO.getId());
			List<CartDTO> list2 = orderDAO.getOrderList(pDTO.getId());
			PaymentinfoDTO paymentinfoDTO = new PaymentinfoDTO();
	
			DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date nowDate = new Date();
			nowDate = pDTO.getLogtime();
			String orderDate = sdFormat.format(nowDate);
			
			// 다이렉스 주문시 - > getOrderDirect cartList에서 가져오고
			// 장바구니 주문시 -> getOrderList mycartList에서 가져오는걸 구분하는 if
			
			if(list1!=null) {
				
				
				for(int i=0; i<list1.size();i++) {
					paymentinfoDTO.setOrderNum(num);
					paymentinfoDTO.setOrderDate(orderDate);
					paymentinfoDTO.setOrderId(pDTO.getId());
					paymentinfoDTO.setPrdtcode(list1.get(i).getPrdtcode());
					paymentinfoDTO.setOrderPrice(list1.get(i).getShoesprice());
					
					if(i==0) {
						paymentinfoDTO.setOrderDelivery("2500");
					}else {
						paymentinfoDTO.setOrderDelivery("0");
					}
					paymentinfoDTO.setOrderPayment(pDTO.getPayChoice());
					paymentinfoDTO.setOrderSize(list1.get(i).getShoessize());
					
					orderDAO.paymentInfo(paymentinfoDTO);
					
					//상품재고 테이블 들어가서 재고 -1 list.get(i).getPrdtcode()
					for(int j=0; j< Integer.parseInt(list1.get(i).getShoesqty());j++) {
						Map<String,String > map = new HashMap<String,String>();
						map.put("prdtcode", list1.get(i).getPrdtcode());
						map.put("shoessize", list1.get(i).getShoessize());
						orderDAO.prdtManagement(map);
						
					}
	
				}
				//cartlist 비워주기
				orderDAO.deleteCart(id);
				Map<String,String > map = new HashMap<String,String>();
				map.put("couponNum",orderDTO.getCouponNum() );
				map.put("id", id);
				orderDAO.couponUpdate(map);
				session.setAttribute("orderOk", "ok");
				
				
			}else {
				
				//paymentinfo INSERT 
				for(int i=0; i<list2.size();i++) {
					paymentinfoDTO.setOrderNum(num);
					paymentinfoDTO.setOrderDate(orderDate);
					paymentinfoDTO.setOrderId(pDTO.getId());
					paymentinfoDTO.setPrdtcode(list2.get(i).getPrdtcode());
					paymentinfoDTO.setOrderPrice(list2.get(i).getShoesprice());
					
					if(i==0) {
						paymentinfoDTO.setOrderDelivery("2500");
					}else {
						paymentinfoDTO.setOrderDelivery("0");
					}
					paymentinfoDTO.setOrderPayment(pDTO.getPayChoice());
					paymentinfoDTO.setOrderSize(list2.get(i).getShoessize());
					
					orderDAO.paymentInfo(paymentinfoDTO);
					
					//상품재고 테이블 들어가서 재고 -1 , QTY +1 FOR문
					for(int j=0; j< Integer.parseInt(list2.get(i).getShoesqty());j++) {
						Map<String,String > map = new HashMap<String,String>();
						map.put("prdtcode", list2.get(i).getPrdtcode());
						map.put("shoessize", list2.get(i).getShoessize());
						orderDAO.prdtManagement(map);
						
					}
	
				}
				//mycartlist 비워주기
				orderDAO.deleteMyCart(id);
				
				session.setAttribute("orderOk", "ok");
				
			}
		
			
			model.addAttribute("pDTO", pDTO);
			
			num++;
		}
		
		return "/order_pay/orderPageEnd";  
	}
	
	@RequestMapping(value="/order_pay/orderAddressList.do",method=RequestMethod.GET)
	public String orderAddressList(HttpSession session, Model model) {
		String id = (String) session.getAttribute("memId");
		
		List<OrderDTO> list = orderDAO.orderAddressList(id);
		
		model.addAttribute("homeList", list);
		
		return "/order_pay/orderAddressList";
	}

	@RequestMapping(value="/order_pay/orderList.do",method=RequestMethod.POST)
	public String  orderList( HttpSession session, Model model) {
		String id = (String) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");
		
		Map<String,String>map = orderDAO.getUserMailPhone(id);
		String email = map.get("EMAIL");
		String [] email1 = email.split("@");
		String tel = map.get("PHONE");
		String tel1 = tel.substring(0, 2);
		String tel2 = tel.substring(3, 5);
		String tel3 = tel.substring(6);
		System.out.println("list"+email+" pppppp "+tel);
		System.out.println(tel1+" "+tel2+" "+tel3);
		
		int couponCount =orderDAO.getCouponCount(id);
		
		List<CartDTO> list = orderDAO.getOrderList(id);
		System.out.println("list");
		model.addAttribute("buttonType", "cart");
		model.addAttribute("cartList", list);
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		model.addAttribute("email1", email1[0]);
		model.addAttribute("email2", email1[1]);
		model.addAttribute("tel1", tel1);
		model.addAttribute("tel2", tel2);
		model.addAttribute("tel3", tel3);
		model.addAttribute("couponCount", couponCount);
		
		return "/order_pay/orderPage";
	}
	
	@RequestMapping(value="/order_pay/orderDirect",method=RequestMethod.GET)
	public String  orderDirect(@RequestParam String buttonType,
								HttpSession session,
								Model model) {
		session.removeAttribute("orderOk");
		
		//장바구니 가져온걸 DB에 insert
		//orderDAO.directWrite(cartDTO);
		System.out.println("buttonType="+buttonType);
		
			
		
		String id = (String) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");
		
		Map<String,String>map = orderDAO.getUserMailPhone(id);
		
		String email = map.get("EMAIL");
		String[] email1 = email.split("@");
		String tel = map.get("PHONE");
		String tel1 = tel.substring(0, 3);
		String tel2 = tel.substring(3, 7);
		String tel3 = tel.substring(7);
		//System.out.println("direct"+email+" pppppp "+tel);
		//System.out.println(email1[0]+" pppppp "+email1[1]);
		//System.out.println(tel1+" "+tel2+" "+tel3);
		
		
		if(id==null) {
			id="guest";
		}
		//session.getAttribute("memId");
		
		//임시로 DB에서 가져오기 
		List<CartDTO> list = orderDAO.getOrderDirect(id);
		int couponCount =orderDAO.getCouponCount(id);
		model.addAttribute("couponCount", couponCount);
	
		model.addAttribute("buttonType",buttonType);
		model.addAttribute("cartList", list);
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		
		model.addAttribute("email1", email1[0]);
		model.addAttribute("email2", email1[1]);
		model.addAttribute("tel1", tel1);
		model.addAttribute("tel2", tel2);
		model.addAttribute("tel3", tel3);
		
		String resultPage = "";
		if(buttonType.equals("now")) {
			resultPage="/order_pay/orderPage";
		} else if(buttonType.equals("cart")) {
			resultPage="/order_pay/shoppingBasket";
		}
		return resultPage;
		//return "/order_pay/orderPage";

	}
	//aJsonArray
	
	@RequestMapping(value="/order_pay/orderDirect1.do",method=RequestMethod.POST)
	public String orderDirect1(@RequestBody Map<String,Object>map,HttpSession session,Model model) {
	//public ModelAndView  orderDirect1(@RequestBody List<CartDTO>list) {
		//장바구니 가져온걸 DB에 insert
		//System.out.println("iiiii"+map.get("count"));
			String id = (String) session.getAttribute("memId");
			if(id ==null) {
				id="guest";
			}
			
			//이전에 있던 데이터 테이블에서 삭제
			if(map.get("count").equals("0")) {
				orderDAO.deleteCart(id);
			}
	
			
			CartDTO cartDTO = new CartDTO();
			cartDTO.setId(id);
			cartDTO.setPrdtcode((String) map.get("prdtcode"));
			cartDTO.setShoesname((String) map.get("shoesname"));
			cartDTO.setShoesimage((String) map.get("shoesimage"));
			cartDTO.setShoesbrand((String) map.get("shoesbrand"));
			cartDTO.setShoescolor((String) map.get("shoescolor"));
			cartDTO.setShoessize((String) map.get("shoessize"));
			cartDTO.setShoesprice((String) map.get("shoesprice"));
			cartDTO.setShoesqty((String) map.get("shoesqty"));
			cartDTO.setShoesdiscount((String) map.get("shoesdiscount"));
			cartDTO.setShoespoint((String) map.get("shoespoint"));
			
			orderDAO.directWrite(cartDTO);
			session.removeAttribute("orderOk");
			
			Map<String,String>map1 = orderDAO.getUserMailPhone(id);
			String email = map1.get("EMAIL");
			String [] email1 = email.split("@");
			String tel = map1.get("PHONE");
			String tel1 = tel.substring(0, 2);
			String tel2 = tel.substring(3, 5);
			String tel3 = tel.substring(6);
			System.out.println("direct1"+email+" pppppp "+tel);
			System.out.println(tel1+" "+tel2+" "+tel3);
			
			int couponCount =orderDAO.getCouponCount(id);
			
			model.addAttribute("email1", email1[0]);
			model.addAttribute("email2", email1[1]);
			model.addAttribute("tel1", tel1);
			model.addAttribute("tel2", tel2);
			model.addAttribute("tel3", tel3);
			model.addAttribute("couponCount", couponCount);
			model.addAttribute("qty",map.get("qty"));
			System.out.println("========="+map.get("qty"));
			return "/order_pay/orderPage";
		
	}
	
	@RequestMapping(value="/order_pay/orderHistory.do",method=RequestMethod.POST)
    public ModelAndView orderHistory(@RequestParam String id) {
       ModelAndView mav = new ModelAndView();
       
       List<OrderDTO>list = orderDAO.orderHistory(id);
       
       mav.addObject("history", list);
       mav.setViewName("jsonView");
       
       return mav;
    }
	

	@RequestMapping(value="/order_pay/order_CouponPage.do",method=RequestMethod.GET)
	public String orderCouponPage(HttpSession session, Model model) {
		String id = (String) session.getAttribute("memId");
		List<cpDTO> list = orderDAO.orderCouponPage(id);
		model.addAttribute("homeList", list);

		
		return "/order_pay/orderCouponList";
	}
	
}
