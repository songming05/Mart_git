package myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import myPage.bean.MypageDTO;

@Controller
public class MyPageController {
	@Autowired
	private MypageDTO mypageDTO;
	
	@RequestMapping(value = "/mypage/myPage", method = RequestMethod.GET)
	public String myPage(Model model) {
		int state=mypageDTO.getLoginState();
		String result="";
		if(state==1)
			result= "/mypage/myPage";
		else if(state==0)
			result= "/user/loginPage";
		
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return result;
	}
	
	
	@RequestMapping(value = "/mypage/myAsPage", method = RequestMethod.GET)
	public String myAsPage(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myAsPage";
	}
	@RequestMapping(value = "/mypage/myReceiptPage", method = RequestMethod.GET)
	public String myReceiptPage(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myReceiptPage";
	}
	@RequestMapping(value = "/mypage/myGiftCardPage", method = RequestMethod.GET)
	public String myGiftCardPage(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myGiftCardPage";
	}
	@RequestMapping(value = "/mypage/myCouponList", method = RequestMethod.GET)
	public String myCouponList(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myCouponList";
	}
	@RequestMapping(value = "/mypage/myFootStamp", method = RequestMethod.GET)
	public String myFootStamp(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myFootStamp";
	}
	@RequestMapping(value = "/mypage/myRating", method = RequestMethod.GET)
	public String myRating(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myRating";
	}
	@RequestMapping(value = "/mypage/myNotice", method = RequestMethod.GET)
	public String myNotice(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myNotice";
	}
	@RequestMapping(value = "/mypage/myReview", method = RequestMethod.GET)
	public String myReview(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myReview";
	}
	@RequestMapping(value = "/mypage/myConsulting", method = RequestMethod.GET)
	public String myConsulting(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myConsulting";
	}
	@RequestMapping(value = "/mypage/myStore", method = RequestMethod.GET)
	public String myStore(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myStore";
	}
	@RequestMapping(value = "/mypage/myAddress", method = RequestMethod.GET)
	public String myAddress(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myAddress";
	}
	@RequestMapping(value = "/mypage/myPrivate", method = RequestMethod.GET)
	public String myPrivate(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myPrivate";
	}
	@RequestMapping(value = "/mypage/myAddInfo", method = RequestMethod.GET)
	public String myAddInfo(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myAddInfo";
	}
	@RequestMapping(value = "/mypage/myRePwd", method = RequestMethod.GET)
	public String myRePwd(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myRePwd";
	}
	@RequestMapping(value = "/mypage/myDeleteInfo", method = RequestMethod.GET)
	public String myDeleteInfo(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/myDeleteInfo";
	}
	@RequestMapping(value = "/mypage/mySNS", method = RequestMethod.GET)
	public String mySNS(Model model) {
		model.addAttribute("myPageEmail",mypageDTO.getMypageEmail());
		model.addAttribute("myPageName",mypageDTO.getMypageName());
		model.addAttribute("myPageId",mypageDTO.getMypageId());
		return "/mypage/mySNS";
	}
	
}
