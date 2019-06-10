package myPage.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class MypageDTO {
	private int loginState;
	private String mypageEmail;
	private String mypageName;
	private String mypageId;
	
	private String id;
	private int coupon_seq;
	private String coupon_name;
	private int coupon_price;
	private String coupon_date;
	private String coupon_end;
	private String coupon_check;
	
	private int mypoint;
	
	private int return_seq;
	private int returnNum;
	private String returnPrdt;
	private int returnQty;
	private int returnPrice;
	private String returnSts;
}




