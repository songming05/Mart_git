package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	@RequestMapping(value="/main/index.do", method=RequestMethod.GET)
	public ModelAndView indexDo() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/main/index");
		return  modelAndView;
	}
	@RequestMapping(value="/main/index", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/main/index");
		return  modelAndView;
	}
}
