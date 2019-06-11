package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class StatsSalesDTO {
	private String prdtCode;
	private int prdSize;
	private String orderDate;
	private String prdtMiniName;
	private int soldQty;
	private int prdtQty;
	private int prdtPrice;
	private String prdtBrand;
	private String prdtSize;
	private int sumTotal;
	
}
