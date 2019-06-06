package order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cart.bean.CartDTO;
import order.bean.OrderDTO;
import order.dao.OrderDAO;

@Controller
public class OrderController {
	@Autowired
	private OrderDAO orderDAO;
	
	@RequestMapping(value="/order_pay/orderPageEnd.do",method=RequestMethod.POST)
	public String orderPageEnd(@RequestParam List<OrderDTO> list ,Model model) {
		//DB
		System.out.println("orderDTO2 "+list.get(0).getDlvyName());
		System.out.println("orderDTO1  "+list.get(0).getAbcdCode());
		orderDTO.setId("ABCD");
		orderDTO.setAbcdCode("1");
		orderDAO.writeOrder(orderDTO);
		
		OrderDTO pDTO = orderDAO.oneOrder(orderDTO.getBuyerName());
		
		model.addAttribute("pDTO", pDTO);
		
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
	
	@RequestMapping(value="/order_pay/orderDirect.do",method=RequestMethod.POST)
	public String  orderDirect(@RequestParam String id ,  @RequestParam List<CartDTO> list , Model model) {
		
		System.out.println(list.get(0).getShoessize()+" 2222 " +list.get(1).getShoessize());
		/*
		//중복체크
		List<CartDTO> list = orderDAO.getOrderList(id);
		
		if(list.size()!=Integer.parseInt(cartDTO.getShoesqty())) {
			//장바구니 가져온걸 DB에 insert
			orderDAO.directWrite(cartDTO);
		}
			
	

		//임시로 DB에서 가져오기 
		list = orderDAO.getOrderList(id);
			
		model.addAttribute("orderList", list);
		model.addAttribute("id", id);
		*/
		return "/order_pay/orderPage";
	}
	
	
	
	
}
