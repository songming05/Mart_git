package user.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import myPage.bean.MyPageDTO;
import user.bean.UserDTO;
import user.dao.UserDAO;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private MyPageDTO mypageDTO;

	
	@RequestMapping(value = "/signUpStep_01", method = RequestMethod.GET)
	public String signUpStep_01() {
		return "/user/signUpStep_01";
	}
	
	@RequestMapping(value = "/signUpStep_02", method = RequestMethod.POST)
	public String signUpStep_02(@RequestParam Map<String,String> map) {
		//System.out.println("map:  "+map);
		return "/user/signUpStep_02";
	}
	
	@RequestMapping(value = "/checkUserId", method = RequestMethod.POST)
	@ResponseBody
	public String checkUserId(@RequestParam String id) {
		UserDTO userDTO = userDAO.checkUserId(id);
		String result="";
		if(userDTO==null) {
			result="not_exist";
		} else {
			result="exist";
		}
		
		return result;
	}
	
	@RequestMapping(value = "/checkUserEmail", method = RequestMethod.POST)
	@ResponseBody
	public String checkUserEmail(@RequestParam String email) {
		UserDTO userDTO = userDAO.checkUserEmail(email);
		String result="";
		if(userDTO==null) {
			result="not_exist";
		} else {
			result="exist";
		}
		
		return result;
	}
	
	
	
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	@ResponseBody
	public String signUp(@RequestParam Map<String,String> map) {
		//�븫�샇�솕 吏꾪뻾�븯硫� �맂�떎
		String EncodedPassword = passwordEncoder.encode(map.get("password"));
		map.remove("password");
		map.put("password", EncodedPassword);
		String result  = userDAO.signUp(map);
		return result;
	}
	
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public String loginPage() {
		return "/user/loginPage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam Map<String, String> map, HttpSession session) {
		String loginResult="";
		UserDTO userDTO = userDAO.getUserInfo(map);
		if(passwordEncoder.matches(map.get("password"), userDTO.getPassword())) {
			loginResult="loginOk";
			session.setAttribute("memId", userDTO.getId());
			session.setAttribute("memName", userDTO.getName());
			session.setAttribute("memEmail", userDTO.getEmail());
			session.setAttribute("memPhone", userDTO.getPhone());
			
		} else {
			loginResult="loginFail";
		}
		
		return loginResult;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "/main/index";
	}

	@RequestMapping(value ="/idFound", method = RequestMethod.GET)
	public String idFind() {
		return "/user/idFound";
	}
	
	@RequestMapping(value ="/pwdFind", method = RequestMethod.GET)
	public String pwdFind() {
		return "/user/pwdFind";
	}
	
	
	@RequestMapping(value ="/findMyId", 
					method = RequestMethod.POST,
					produces = "application/text; charset=utf8")
	@ResponseBody
	public String findMyId(@RequestParam Map<String,String> map) {
		String way = map.get("way");
		String resultId="";
		String resultJoin="";
		if(way.equals("email")) {
			UserDTO userDTO = userDAO.getInfoByEmail(map);
			if(userDTO==null) {
				return "일치하는 정보가 없습니다";
			}
			String sourceId = userDTO.getId();
			resultId=sourceId.substring(0, 3);
			for(int i=3; i<sourceId.length(); i++) {
				resultId=resultId+"*";
			}
			Date sourceJoin = userDTO.getJoin_date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
			simpleDateFormat = new SimpleDateFormat("YYYY.MM.dd");
			resultJoin = simpleDateFormat.format(sourceJoin).toString();
			
			System.out.println(userDTO.getId()+userDTO.getJoin_date());
			System.out.println(resultId+resultJoin);
		} else if(way.equals("phone")) {
			
		}
		
		String result = "회원님의 아이디는 <br>"
						+ resultId+" 입니다.<br>"
						+"가입연도 : "+resultJoin;
		return result;		
	}
	
	@RequestMapping(value ="/findMyPwd", method = RequestMethod.POST)
	@ResponseBody
	public String findMyPwd(@RequestParam Map<String,String> map) {
		UserDTO userDTO = userDAO.findUserInfo(map);
		if(userDTO==null) {
			return "not_exist";
		} else
			return "exist";
	}
	
	@RequestMapping(value ="/pwdReset", method = RequestMethod.POST)
	@ResponseBody
	public void pwdReset(@RequestParam Map<String,String> map) {
		System.out.println(map.get("password"));
		String EncodedPassword = passwordEncoder.encode(map.get("password"));
		map.remove("password");
		map.put("password", EncodedPassword);
		System.out.println("변경했다맵 "+map.get("password"));
		userDAO.pwdReset(map);
	}
	
	
	@RequestMapping(value ="/myCouponList", method = RequestMethod.POST)
	public ModelAndView myCouponList(HttpSession session) {
		String id = (String)session.getAttribute("memId");
		if(id==null) {
			id="guest";
		}
		List<MyPageDTO> myPageList = userDAO.getMyPageList(id);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("myPageList", myPageList);
		modelAndView.setViewName("jsonView");
		return modelAndView;
	}
	
	
}
