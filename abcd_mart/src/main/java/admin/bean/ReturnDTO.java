package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReturnDTO {
	private int returnNum;
	private String orderDate;
	private String returnDate;
	private String returnId;
	private String returnPrdt;
	private int returnQty;
	private int returnPrice;
	private String returnSts;
	
}
