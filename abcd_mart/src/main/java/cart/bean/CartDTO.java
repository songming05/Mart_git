package cart.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class CartDTO {
	
	private String id, 
	prdtcode,
	shoesimage, 
	shoesbrand, 
	shoesname, 
	shoescolor, 
	shoessize, 
	shoesprice, 
	shoesqty, 
	shoesdiscount, 
	shoespoint;
	
}
