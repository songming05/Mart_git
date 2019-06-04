package admin.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data
public class PaymentDTO {
	private int ordernum;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date orderdate;
	
	private String orderid;
	private String ordername;
	private String orderpdt;
	private String orderpayment;
	private String orderprice;
	
	
	
}
