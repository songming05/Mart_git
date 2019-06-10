package myPage.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class MyPageDTO {	
	private String id;
	private int coupon_seq;
	private String coupon_name;
	private int coupon_price;
	//@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date coupon_date;
	//@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date coupon_end;
	private String coupon_check;
	
	private int mypoint;
	
	private int return_seq;
	private int returnNum;
	private String returnPrdt;
	private int returnQty;
	private int returnPrice;
	private String returnDate;
	private String returnSts;
}




