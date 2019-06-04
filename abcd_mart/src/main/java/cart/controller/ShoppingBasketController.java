package cart.controller;

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
import cart.dao.CartDAOMybatis;

@Controller
public class ShoppingBasketController {
	
	@Autowired
	private CartDAO cartDAO;
	
	//장바구니 메인
	@RequestMapping(value="/order_pay/shoppingBasket", method=RequestMethod.GET)
	public ModelAndView shoppingBasket() {
		List<CartDTO> list = cartDAO.shoesList();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/order_pay/shoppingBasket");
		modelAndView.addObject("list", list);
		return modelAndView;
	}

	//수량변경
	@RequestMapping(value="/order_pay/updateQtyText.do", method=RequestMethod.POST)
	public @ResponseBody void updateQtyText(@RequestParam Map<String, String> map) {
		cartDAO.shoesQtyText(map);
	}
	
	//품목삭제
	@RequestMapping(value="/cart/deleteList.do", method=RequestMethod.POST)
	public @ResponseBody void deleteList(@RequestParam Map<String, String> map) {
		cartDAO.deleteList(map);
	}
	
}






















