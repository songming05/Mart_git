package search.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import detailPage.bean.DetailPageDTO;
import detailPage.dao.DetailPageDAO;

@Controller
@RequestMapping("/search")
public class SearchController {
	@Autowired
	private DetailPageDAO detailPageDAO;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam String searchText) {
		
		List<DetailPageDTO> searchList = detailPageDAO.searchList(searchText);
		String totalProduct="";
		
		if(searchList==null||searchText.equals("")) {
			searchList=new ArrayList<DetailPageDTO>();
		}
		ModelAndView modelAndView = new ModelAndView();
		
		totalProduct = searchList.size()+"";
		
		modelAndView.addObject("totalProduct", totalProduct);
		modelAndView.addObject("searchList", searchList);
		modelAndView.setViewName("/search/search");		
		return modelAndView;
	}
}
