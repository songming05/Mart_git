package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class PrdtManagementDTO {
	
	private String prdtCode;
	private int prdtQty;
	private String prdtBrand;
	private String prdtColor;
	private String prdtGender;
	private int prdtPrice;
	private int prdtSize;
	
}
