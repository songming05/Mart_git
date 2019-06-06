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
import order.dao.OrderDAO;

@Controller
public class OrderController {
	@Autowired
	private OrderDAO orderDAO;
	private static int num=1;
	
	@RequestMapping(value="/order_pay/orderPageEnd.do",method=RequestMethod.POST)
	public String orderPageEnd(@ModelAttribute OrderDTO orderDTO ,
							Model model,
							HttpServletRequest  request) {
		/*
		 * Cookie[] cookies = request.getCookies();
		 * 
		 * if(cookies == null || cookies.length == 0){
		 * 
		 * 
		 * }
		 */

		
		
		//DB
		orderDAO.writeOrder(orderDTO);
		
		OrderDTO pDTO = orderDAO.oneOrder(orderDTO.getBuyerName());
		List<CartDTO> list = orderDAO.getOrderList(pDTO.getId());
		PaymentinfoDTO paymentinfoDTO = new PaymentinfoDTO();

		DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date nowDate = new Date();
		nowDate = pDTO.getLogtime();
		String orderDate = sdFormat.format(nowDate);


		for(int i=0; i<list.size();i++) {
			paymentinfoDTO.setOrderNum(num);
			paymentinfoDTO.setOrderDate(orderDate);
			paymentinfoDTO.setOrderId(pDTO.getId());
			paymentinfoDTO.setOrderPrdt(list.get(i).getPrdtcode());
			paymentinfoDTO.setOrderPrice(list.get(i).getShoesprice());
			if(i==0) {
				paymentinfoDTO.setOrderDelivery("2500");
			}else {
				paymentinfoDTO.setOrderDelivery("0");
			}
			paymentinfoDTO.setOrderPayment(pDTO.getPayChoice());
			paymentinfoDTO.setOrderSize(list.get(i).getShoessize());
			
			orderDAO.paymentInfo(paymentinfoDTO);
			
			//상품재고 테이블 들어가서 재고 -1 list.get(i).getPrdtcode()
			for(int j=0; j< Integer.parseInt(list.get(i).getShoesqty());j++) {
				Map<String,String > map = new HashMap<String,String>();
				map.put("prdtcode", list.get(i).getPrdtcode());
				map.put("shoessize", list.get(i).getShoessize());
				orderDAO.prdtManagement(map);
				
			}
			
			
		}
	
		
		model.addAttribute("pDTO", pDTO);
		num++;

		
		return "/order_pay/orderPageEnd";
	}
	
	@RequestMapping(value="/order_pay/orderAddressList.do",method=RequestMethod.GET)
	public String orderAddressList(@RequestParam String id , Model model) {
		List<OrderDTO> list = orderDAO.orderAddressList(id);
		
		model.addAttribute("homeList", list);
		
		return "/order_pay/orderAddressList";
	}

	@RequestMapping(value="/order_pay/orderList.do",method=RequestMethod.POST)
	public String  orderList(@RequestParam String id , Model model) {
		List<CartDTO> list = orderDAO.getOrderList(id);
		
		model.addAttribute("orderList", list);
		model.addAttribute("id", id);
		
		return "/order_pay/orderPage";
	}
	
	@RequestMapping(value="/order_pay/orderDirect",method=RequestMethod.GET)
	public String  orderDirect(
								HttpSession session,
								Model model) {
		//장바구니 가져온걸 DB에 insert
		//orderDAO.directWrite(cartDTO);
		String id = (String) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");
		if(id==null) {
			id="guest";
		}
		session.getAttribute("memId");
		
		//임시로 DB에서 가져오기 
		List<CartDTO> list = orderDAO.getOrderList(id);
	
		
		model.addAttribute("orderList", list);
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		
		return "/order_pay/orderPage";
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

		//model.addAttribute("id", map.get("id")+"");
		//return model;
		//임시로 DB에서 가져오기 
		//List<CartDTO> list = orderDAO.getOrderList(id);
	
		
		//model.addAttribute("orderList", list);
		//model.addAttribute("id", id);
		
		return "/order_pay/orderPage";
	}
	
	
	
	
}
