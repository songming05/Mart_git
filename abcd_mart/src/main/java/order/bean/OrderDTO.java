package order.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data

public class OrderDTO {
	//주문번호
	private int seq;
	
	//상품 코드 앞페이지에서 받아와야함
	private String abcdCode;
	
	//주문고객 정보
	private String buyerName;
	private String buyerTel1;
	private String buyerTel2;
	private String buyerTel3;
	private String buyerEmail1;
	private String buyerEmail2;
	
	//배송지 정보
	private String dlvyName;
	private String dlvyTel1;
	private String dlvyTel2;
	private String dlvyTel3;
	
	private String dlvyZipcode;
	private String dlvyAddr1;
	private String dlvyAddr2;
	private String dlvyMsg;
	
	//포인트, 쿠폰 , 배송비 추가 적용
	private String couponNum;
	private String coupon;
	private String point;
	private String dlvyPrice;
	
	//결제 수단
	private String payChoice;
	
	//여기서 결정되는 총 가격
	private String totalPrice;
	
	//결제 날짜
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy.MM.dd")
	private Date logtime;
	
	//회원정보 아이디
	private String id;
	
	//상품 이미지
	private String shoesimage;


}
