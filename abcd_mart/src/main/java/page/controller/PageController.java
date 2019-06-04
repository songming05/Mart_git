package page.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import detailPage.dao.DetailPageDAO;
import detailPage.bean.DetailPageDTO;

@Controller
@RequestMapping("product")
public class PageController {
	@Autowired
	private DetailPageDAO detailPageDAO;
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public ModelAndView detailPage(@RequestParam String prdtCode, Model model) {
	
		DetailPageDTO detailPageDTO = detailPageDAO.getProduct(prdtCode);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("detailPageDTO",detailPageDTO);
		mav.setViewName("/product/detailPage");
		return mav;
	}
	
	
}
