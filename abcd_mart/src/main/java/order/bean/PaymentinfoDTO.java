package order.bean;


import lombok.Data;

@Data
public class PaymentinfoDTO {
	
	private int orderNum;
	private String orderDate; 
	private String orderId ;
	private String prdtcode ;
	
	private String orderPrice ;
	private String orderDelivery ;
	private String orderPayment ;
	private String orderSize;
	

}
