package center.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import center.bean.CenterDTO;
import center.dao.CenterDAO;

@Controller
public class CenterController {
	@Autowired
	private CenterDAO centerDAO;
	
	
	@RequestMapping(value="/center/abcd_StoreList", method=RequestMethod.GET)
	public String abcd_StoreList() {
		return "/userCenter/abcd_StoreList";
	}
	
	@RequestMapping(value="/center/checkArea.do",method = RequestMethod.POST)
	public ModelAndView checkArea(@RequestParam String sido) {
		ModelAndView mav = new ModelAndView();
		List<CenterDTO>list = centerDAO.checkArea(sido);
		mav.addObject("areaList", list);
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value="/center/findAbcd.do",method = RequestMethod.POST)
	public ModelAndView findAbcd(@RequestParam Map<String,String>map) {
		ModelAndView mav = new ModelAndView();
		List<CenterDTO>list = centerDAO.findeAbcd(map);
		mav.addObject("areaList", list);
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value="/center/whereAbcdForm.do",method = RequestMethod.GET)
	public String whereAbcd(@RequestParam String seq, Model model) {
		CenterDTO centerDTO =centerDAO.whereAbcd(seq);
		model.addAttribute("centerDTO", centerDTO);
		
		return "/userCenter/whereAbcdForm";
		
	}
	
	
}
