package order.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
import order.dao.OrderDAO;

@Controller
public class OrderController {
	@Autowired
	private OrderDAO orderDAO;
	
	@RequestMapping(value="/order_pay/orderPageEnd.do",method=RequestMethod.POST)
	public String orderPageEnd(@ModelAttribute OrderDTO orderDTO ,
							Model model) {
		//DB
		System.out.println("orderDTO2 "+orderDTO.getBuyerTel2());
		System.out.println("orderDTO1  "+orderDTO.getDlvyTel1());
		orderDTO.setId("ABCD");
		orderDTO.setAbcdCode("1");
		orderDAO.writeOrder(orderDTO);
		
		OrderDTO pDTO = orderDAO.oneOrder(orderDTO.getBuyerName());
		
		model.addAttribute("pDTO", pDTO);
		
		//넘겨줄 데이터
		//리스트면 좋구, 상품코드, 개수, 
		
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
		if(id==null) {
			id="guest";
		}
		session.getAttribute("memId");
		
		//임시로 DB에서 가져오기 
		List<CartDTO> list = orderDAO.getOrderList(id);
	
		
		model.addAttribute("orderList", list);
		model.addAttribute("id", id);
		
		return "/order_pay/orderPage";
	}
	//aJsonArray
	
	@RequestMapping(value="/order_pay/orderDirect1.do",method=RequestMethod.POST)
	public String orderDirect1(@RequestBody Map<String,Object>map,HttpSession session,Model model) {
	//public ModelAndView  orderDirect1(@RequestBody List<CartDTO>list) {
		//장바구니 가져온걸 DB에 insert
		
		String id = (String) session.getAttribute("memId");
		if(id ==null) {
			id="guest";
		}
		
		//이전에 있던 데이터 테이블에서 삭제
		if(map.get("count"+"").equals("0")) {
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
