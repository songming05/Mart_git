package user.controller;

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

import user.bean.UserDTO;
import user.dao.UserDAO;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	
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
			//System.out.println(userDTO.getName());
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
	
	@RequestMapping(value ="/findMyId", method = RequestMethod.POST)
	@ResponseBody
	public String findMyId(@RequestParam Map<String,String> map) {
		String way = map.get("way");
		if(way.equals("email")) {
			UserDTO userDTO = userDAO.getInfoByEmail(map);
			String userId = userDAO.getIdByEmail(map);
			String userJoinDate = userDAO.getJoinDate(userId);
			System.out.println(userId);
			System.out.println(userJoinDate);
			System.out.println(userDTO.getId()+userDTO.getJoin_date());
		} else if(way.equals("phone")) {
			
		}
		
		return "";		
	}
	
}
