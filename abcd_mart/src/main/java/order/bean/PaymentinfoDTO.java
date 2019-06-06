package order.bean;


import lombok.Data;

@Data
public class PaymentinfoDTO {
	private int orderNum;
	private String orderDate; 
	private String orderId ;
	private String orderPrdt ;
	private String orderPrice ;
	private String orderDelivery ;
	private String orderPayment ;
	private String orderSize;
	

}
