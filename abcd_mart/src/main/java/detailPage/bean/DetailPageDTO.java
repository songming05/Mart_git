package detailPage.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class DetailPageDTO {
	private String prdtMainName;
	private String prdtMiniName;
	private String prdtStyleCode;
	private String prdtCode;
	private int prdtPrice;
	private String prdtDeliveryPrice;
	private String prdtColor;
	private String prdtGender;
	private String prdtSize;
	private String prdtGood;
	private String prdtImage1;
	private String prdtImage2;
	private String prdtImage3;
	private String prdtImage4;
	private String prdtDetailImage1;
	private String prdtDetailImage2;
	private String prdtDetailImage3;
	
}
