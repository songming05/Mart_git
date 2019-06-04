package center.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class CenterDTO {
	private int seq;
	private String sido;
	private String sigungu;
	private String yubmyundong;
	private String ri;
	private String roadname;
	private String buildingname;
	private Date openDay;
	private String openTime;
	private String tel;
	private String longitude;
	private String latitude;
}
