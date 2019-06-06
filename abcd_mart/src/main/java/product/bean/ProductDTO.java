package product.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductDTO {

	private String prdtMainName;
	private String prdtMiniName;
	private String prdtStyleCode ;
	private String prdtCode;
	private int prdtPrice ;
	private String prdtDeliveryPrice;
	private String prdtBrand;
	private String prdtColor;
	private String prdtGender;
	private int prdtSize;
	private int prdtGood ;
}
