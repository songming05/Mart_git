package category.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.PrdtManagementDTO;
import category.dao.CategoryDAO;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/category/categoryPage", method=RequestMethod.GET)
	public ModelAndView categoryPage(@RequestParam String category) {
		List<PrdtManagementDTO> hotList = categoryDAO.getSoldqty(category);
		
		List<PrdtManagementDTO> shoesList = categoryDAO.getShoesList(category);
		int shoesListSize = shoesList.size();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("category", category);
		modelAndView.addObject("hotList", hotList);
		modelAndView.addObject("shoesList", shoesList);
		modelAndView.addObject("shoesListSize", shoesListSize);
		modelAndView.setViewName("/category/categoryPage");
		return modelAndView;
	}
	
	@RequestMapping(value="/category/getPrdtcode_size", method=RequestMethod.POST)
	public ModelAndView getPrdtcode_size(@RequestParam String prdtcode) {
		List<PrdtManagementDTO> list = categoryDAO.getSize(prdtcode);

		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getPrdtQty() == 0) {
				list.get(i).setPrdtGender("X");
			} else {
				list.get(i).setPrdtGender("O");
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/category/categoryPage2", method=RequestMethod.GET)
	public ModelAndView categoryPage2(@RequestParam String category1, @RequestParam String category2) {
		List<PrdtManagementDTO> shoesList = categoryDAO.getShoesList2(category2);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("category1", category1);
		modelAndView.addObject("category2", category2);
		modelAndView.addObject("shoesList", shoesList);
		modelAndView.addObject("listCount", shoesList.size());
		modelAndView.setViewName("/category/categoryPage2");
		return modelAndView;
	}
}

















