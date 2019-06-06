package cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cart.bean.CartDTO;
import cart.dao.CartDAO;

@Controller
public class ShoppingBasketController {
	
	@Autowired
	private CartDAO cartDAO;
	
	//��ٱ��� ����
	@RequestMapping(value="/order_pay/shoppingBasket", method=RequestMethod.GET)
	public ModelAndView shoppingBasket() {
		List<CartDTO> list = cartDAO.orderAllList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/order_pay/shoppingBasket");
		return modelAndView;
	}

	//��������
	@RequestMapping(value="/order_pay/updateQtyText", method=RequestMethod.POST)
	public @ResponseBody String updateQtyText(@RequestParam Map<String, String> map) {
		cartDAO.shoesQtyText(map);
		return "/abcd_mart/order_pay/shoppingBasket";
	}
	
	//�ٷα���
	@RequestMapping(value="/order_pay/orderChoice", method=RequestMethod.POST)
	public @ResponseBody String orderChoice(@RequestParam Map<String, String> map) {
		cartDAO.insert_temporary_cartlist(map);
		return "/abcd_mart/order_pay/goOrderChoice";
	}
	
	//�ٷα��� -> order.jsp �̵�
	@RequestMapping(value="/order_pay/goOrderChoice", method=RequestMethod.GET)
	public ModelAndView goOrderChoice() {
		List<CartDTO> list = cartDAO.temporary_cartlist();
		cartDAO.delete_temporary_cartlist();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/order_pay/order");
		return modelAndView;
	}
	
	//ǰ�����
	@RequestMapping(value="/order_pay/deleteList", method=RequestMethod.POST)
	public @ResponseBody String deleteList(@RequestParam Map<String, String> map) {
		cartDAO.deleteList(map);
		return "/abcd_mart/order_pay/shoppingBasket";
	}
	
	//���û�ǰ ����
	@RequestMapping(value="/order_pay/select_deleteList", method=RequestMethod.POST)
	public @ResponseBody String select_deleteList(@RequestParam String[] id, @RequestParam String[] prdtcode, @RequestParam String[] shoesimage,
												  @RequestParam String[] shoesbrand, @RequestParam String[] shoesname, @RequestParam String[] shoescolor,
												  @RequestParam String[] shoessize, @RequestParam String[] shoesprice, @RequestParam String[] shoesqty,
												  @RequestParam String[] shoesdiscount, @RequestParam String[] shoespoint, @RequestParam String size) {
		Map<String, String> map = new HashMap<String, String>();
		
		for(int i = 0; i < Integer.parseInt(size); i++) {
			map.put("id", id[i]);
			map.put("prdtcode", prdtcode[i]);
			map.put("shoesimage", shoesimage[i]);
			map.put("shoesbrand", shoesbrand[i]);
			map.put("shoesname", shoesname[i]);
			map.put("shoescolor", shoescolor[i]);
			map.put("shoessize", shoessize[i]);
			map.put("shoesprice", shoesprice[i]);
			map.put("shoesqty", shoesqty[i]);
			map.put("shoesdiscount", shoesdiscount[i]);
			map.put("shoespoint", shoespoint[i]);

			cartDAO.select_deleteList(map);
			
			map.clear();
		}
		return "/abcd_mart/order_pay/shoppingBasket";
	}
	
	//���û�ǰ �ֹ��ϱ�
	@RequestMapping(value="/order_pay/orderSelect", method=RequestMethod.POST)
	public @ResponseBody String orderSelect(@RequestParam String[] id, @RequestParam String[] prdtcode, @RequestParam String[] shoesimage,
											@RequestParam String[] shoesbrand, @RequestParam String[] shoesname, @RequestParam String[] shoescolor,
											@RequestParam String[] shoessize, @RequestParam String[] shoesprice, @RequestParam String[] shoesqty,
											@RequestParam String[] shoesdiscount, @RequestParam String[] shoespoint, @RequestParam String size) {
		Map<String, String> map = new HashMap<String, String>();
		
		for(int i = 0; i < Integer.parseInt(size); i++) {
			map.put("id", id[i]);
			map.put("prdtcode", prdtcode[i]);
			map.put("shoesimage", shoesimage[i]);
			map.put("shoesbrand", shoesbrand[i]);
			map.put("shoesname", shoesname[i]);
			map.put("shoescolor", shoescolor[i]);
			map.put("shoessize", shoessize[i]);
			map.put("shoesprice", shoesprice[i]);
			map.put("shoesqty", shoesqty[i]);
			map.put("shoesdiscount", shoesdiscount[i]);
			map.put("shoespoint", shoespoint[i]);

			cartDAO.insert_temporary_cartlist(map);
			
			map.clear();
		}
		return "/abcd_mart/order_pay/goOrderSelect";
	}
	
	//���û�ǰ �ֹ��ϱ� -> order.jsp �̵�
	@RequestMapping(value="/order_pay/goOrderSelect", method=RequestMethod.GET)
	public ModelAndView goOrderSelect() {
		List<CartDTO> list = cartDAO.temporary_cartlist();
		cartDAO.delete_temporary_cartlist();
			
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/order_pay/order");
		return modelAndView;
	}
	
	//��ü��ǰ �ֹ��ϱ�
	@RequestMapping(value="/order_pay/orderAll", method=RequestMethod.GET)
	public ModelAndView orderAll() {	
		List<CartDTO> list = cartDAO.orderAllList();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/order_pay/order");
		return modelAndView;
	}
	
	
		
}






















