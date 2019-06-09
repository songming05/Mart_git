package service.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ServiceDTO {
	private int article_No;
	private String category1;
	private String category2;
	private String title;
	private String answer;

}
