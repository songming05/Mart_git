package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class StatsPrdtDTO {
	private String prdtCode;
	private int prdtSize;
	private String prdtMiniName;
	private String prdtBrand;
	private int soldQty;
	private int prdtQty;
	private int prdtPrice;
	
}
