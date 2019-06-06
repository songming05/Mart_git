package advertise.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdvertiseController {

	@RequestMapping(value = "/advertisement/mainAd2", method = RequestMethod.GET)
	public String mainAd2() {
		return "/advertisement/mainAd2";
	}
	@RequestMapping(value = "/advertisement/mainAd1", method = RequestMethod.GET)
	public String mainAd1() {
		return "/advertisement/mainAd1";
	}
	@RequestMapping(value = "/advertisement/mainAd6", method = RequestMethod.GET)
	public String mainAd6() {
		return "/advertisement/mainAd6";
	}
	@RequestMapping(value = "/advertisement/mainAd3", method = RequestMethod.GET)
	public String mainAd3() {
		return "/advertisement/mainAd3";
	}
	@RequestMapping(value = "/advertisement/midAd1", method = RequestMethod.GET)
	public String midAd1() {
		return "/advertisement/midAd1";
	}
	@RequestMapping(value = "/advertisement/midAd1_1", method = RequestMethod.GET)
	public String midAd1_1() {
		return "/advertisement/midAd1_1";
	}
	@RequestMapping(value = "/advertisement/mainAd5", method = RequestMethod.GET)
	public String mainAd5() {
		return "/advertisement/mainAd5";
	}
	@RequestMapping(value = "/advertisement/mainAd4", method = RequestMethod.GET)
	public String mainAd4() {
		return "/advertisement/mainAd4";
	}
	@RequestMapping(value = "/advertisement/mainAd6_1", method = RequestMethod.GET)
	public String mainAd6_1() {
		return "/advertisement/mainAd6_1";
	}
	@RequestMapping(value = "/advertisement/mainAd6_2", method = RequestMethod.GET)
	public String mainAd6_2() {
		return "/advertisement/mainAd6_2";
	}
	@RequestMapping(value = "/advertisement/mainAd6_3", method = RequestMethod.GET)
	public String mainAd6_3() {
		return "/advertisement/mainAd6_3";
	}
	@RequestMapping(value = "/advertisement/mainAd6_4", method = RequestMethod.GET)
	public String mainAd6_4() {
		return "/advertisement/mainAd6_4";
	}
	@RequestMapping(value = "/advertisement/mainAd6_5", method = RequestMethod.GET)
	public String mainAd6_5() {
		return "/advertisement/mainAd6_5";
	}
	@RequestMapping(value = "/advertisement/mainAd6_6", method = RequestMethod.GET)
	public String mainAd6_6() {
		return "/advertisement/mainAd6_6";
	}
	@RequestMapping(value = "/advertisement/minAd2", method = RequestMethod.GET)
	public String minAd2() {
		return "/advertisement/minAd2";
	}
}
