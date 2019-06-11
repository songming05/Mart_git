package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class CouponListDTO {
	private int coupon_seq;
	private String id;
	private String coupon_name;
	private int coupon_price;
	private String coupon_end;
	private String coupon_date;
	private String coupon_check;
}
