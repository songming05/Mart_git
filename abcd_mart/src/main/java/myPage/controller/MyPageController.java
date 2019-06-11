package myPage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import myPage.bean.MyPageDTO;
import user.dao.UserDAO;

@Controller
public class MyPageController {
	@Autowired
	private UserDAO userDAO;
	
	
	@RequestMapping(value = "/mypage/myPage", method = RequestMethod.GET)
	public String myPage(Model model, HttpSession session ) {
		String id = (String)session.getAttribute("memId");
		String result="";
		if(id!=null)
			result= "/mypage/myPage";
		else if(id==null)
			result= "/user/loginPage";
		return result;
	}
	
	
	@RequestMapping(value = "/mypage/myAsPage", method = RequestMethod.GET)
	public String myAsPage(Model model) {
		return "/mypage/myAsPage";
	}
	@RequestMapping(value = "/mypage/myReceiptPage", method = RequestMethod.GET)
	public String myReceiptPage(Model model) {
		return "/mypage/myReceiptPage";
	}
	@RequestMapping(value = "/mypage/myGiftCardPage", method = RequestMethod.GET)
	public String myGiftCardPage(Model model) {
		return "/mypage/myGiftCardPage";
	}
	@RequestMapping(value = "/mypage/myCouponList", method = RequestMethod.GET)
	public ModelAndView myCouponList(HttpSession session) {
		String id = (String)session.getAttribute("memId");
		if(id==null) {
			id="guest";
		}
		List<MyPageDTO> myPageList = userDAO.getMyPageList(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("myPageList", myPageList);
		modelAndView.setViewName("/mypage/myCouponList");
		
		return modelAndView;
	}
	@RequestMapping(value = "/mypage/myFootStamp", method = RequestMethod.GET)
	public String myFootStamp(Model model) {
		return "/mypage/myFootStamp";
	}
	@RequestMapping(value = "/mypage/myRating", method = RequestMethod.GET)
	public String myRating(Model model) {
		return "/mypage/myRating";
	}
	@RequestMapping(value = "/mypage/myNotice", method = RequestMethod.GET)
	public String myNotice(Model model) {
		return "/mypage/myNotice";
	}
	@RequestMapping(value = "/mypage/myReview", method = RequestMethod.GET)
	public String myReview(Model model) {
		return "/mypage/myReview";
	}
	@RequestMapping(value = "/mypage/myConsulting", method = RequestMethod.GET)
	public String myConsulting(Model model) {
		return "/mypage/myConsulting";
	}
	@RequestMapping(value = "/mypage/myStore", method = RequestMethod.GET)
	public String myStore(Model model) {
		return "/mypage/myStore";
	}
	@RequestMapping(value = "/mypage/myAddress", method = RequestMethod.GET)
	public String myAddress(Model model) {
		return "/mypage/myAddress";
	}
	@RequestMapping(value = "/mypage/myPrivate", method = RequestMethod.GET)
	public String myPrivate(Model model) {
		return "/mypage/myPrivate";
	}
	@RequestMapping(value = "/mypage/myAddInfo", method = RequestMethod.GET)
	public String myAddInfo(Model model) {
		return "/mypage/myAddInfo";
	}
	@RequestMapping(value = "/mypage/myRePwd", method = RequestMethod.GET)
	public String myRePwd(Model model) {
		return "/mypage/myRePwd";
	}
	@RequestMapping(value = "/mypage/myDeleteInfo", method = RequestMethod.GET)
	public String myDeleteInfo(Model model) {
		return "/mypage/myDeleteInfo";
	}
	@RequestMapping(value = "/mypage/mySNS", method = RequestMethod.GET)
	public String mySNS(Model model) {
		return "/mypage/mySNS";
	}
	
	
	@RequestMapping(value = "/mypage/myAsPage2", method = RequestMethod.GET)
	public String myAsPage2(Model model) {
		return "/mypage/myAsPage2";
	}
	@RequestMapping(value = "/mypage/myAsPage3", method = RequestMethod.GET)
	public String myAsPage3(Model model) {
		return "/mypage/myAsPage3";
	}
	@RequestMapping(value = "/mypage/myAsPage4", method = RequestMethod.GET)
	public String myAsPage4(Model model) {
		return "/mypage/myAsPage4";
	}
	@RequestMapping(value = "/mypage/myAsPage5", method = RequestMethod.GET)
	public String myAsPage5(Model model) {
		return "/mypage/myAsPage5";
	}
	
	@RequestMapping(value = "/mypage/viewMyInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String viewMyInfo(HttpSession session, Model model) {
		String memEmail = (String)session.getAttribute("memEmail");
		String memPhone = (String)session.getAttribute("memPhone");
		
		String email[] = memEmail.split("@");
		String headPhone = memPhone.substring(0, 3);
		String middlePhone = memPhone.substring(3, 7);
		String endPhone = memPhone.substring(7, 11);
		
		model.addAttribute("firstEmail", email[0]);
		model.addAttribute("secondEmail", email[1]);
		model.addAttribute("headPhone", headPhone);
		model.addAttribute("middlePhone", middlePhone);
		model.addAttribute("endPhone", endPhone);
		
		return "/mypage/viewMyInfo";
	}
	
}
