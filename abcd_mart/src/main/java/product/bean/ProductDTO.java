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
	private String prdtdeliveryPrice ;
	private int sizeMin;
	private int sizeMax;
	private int good;
}
