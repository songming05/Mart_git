package admin.bean;

import java.util.Date;

import org.springframework.stereotype.Component;


import lombok.Data;

@Component
@Data
public class PaymentDTO {	
	   private int orderNum;
	   
	  // @JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy.MM.dd")
	   private String orderDate; 
	   private String orderId ;
	   private String prdtCode ;
	   private String orderPrice ;
	   private String orderDelivery ;
	   private String orderPayment ;
	   private String orderSize ;
	   
	
	
}
