package order.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data
public class cpDTO {
	private int seq;
	private String id;
	private String cpName;
	private String cpSale;
	private String cpOnOff;
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy.MM.dd")
	private Date logtime;

}
