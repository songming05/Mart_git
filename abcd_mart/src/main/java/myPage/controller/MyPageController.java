package myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	@RequestMapping(value = "/mypage/myPage", method = RequestMethod.GET)
	public String myPage() {
		return "/mypage/myPage";
	}
	
	@RequestMapping(value = "/mypage/myAsPage", method = RequestMethod.GET)
	public String myAsPage() {
		return "/mypage/myAsPage";
	}
	@RequestMapping(value = "/mypage/myReceiptPage", method = RequestMethod.GET)
	public String myReceiptPage() {
		return "/mypage/myReceiptPage";
	}
	@RequestMapping(value = "/mypage/myGiftCardPage", method = RequestMethod.GET)
	public String myGiftCardPage() {
		return "/mypage/myGiftCardPage";
	}
	@RequestMapping(value = "/mypage/myCouponList", method = RequestMethod.GET)
	public String myCouponList() {
		return "/mypage/myCouponList";
	}
	@RequestMapping(value = "/mypage/myFootStamp", method = RequestMethod.GET)
	public String myFootStamp() {
		return "/mypage/myFootStamp";
	}
	@RequestMapping(value = "/mypage/myRating", method = RequestMethod.GET)
	public String myRating() {
		return "/mypage/myRating";
	}
	@RequestMapping(value = "/mypage/myNotice", method = RequestMethod.GET)
	public String myNotice() {
		return "/mypage/myNotice";
	}
	@RequestMapping(value = "/mypage/myReview", method = RequestMethod.GET)
	public String myReview() {
		return "/mypage/myReview";
	}
	@RequestMapping(value = "/mypage/myConsulting", method = RequestMethod.GET)
	public String myConsulting() {
		return "/mypage/myConsulting";
	}
	@RequestMapping(value = "/mypage/myStore", method = RequestMethod.GET)
	public String myStore() {
		return "/mypage/myStore";
	}
	@RequestMapping(value = "/mypage/myAddress", method = RequestMethod.GET)
	public String myAddress() {
		return "/mypage/myAddress";
	}
	@RequestMapping(value = "/mypage/myPrivate", method = RequestMethod.GET)
	public String myPrivate() {
		return "/mypage/myPrivate";
	}
	@RequestMapping(value = "/mypage/myAddInfo", method = RequestMethod.GET)
	public String myAddInfo() {
		return "/mypage/myAddInfo";
	}
	@RequestMapping(value = "/mypage/myRePwd", method = RequestMethod.GET)
	public String myRePwd() {
		return "/mypage/myRePwd";
	}
	@RequestMapping(value = "/mypage/myDeleteInfo", method = RequestMethod.GET)
	public String myDeleteInfo() {
		return "/mypage/myDeleteInfo";
	}
	@RequestMapping(value = "/mypage/mySNS", method = RequestMethod.GET)
	public String mySNS() {
		return "/mypage/mySNS";
	}
	
}
