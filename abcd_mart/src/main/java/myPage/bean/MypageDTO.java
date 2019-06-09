package myPage.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class MypageDTO {
	private int loginState;
	private String mypageEmail;
	private String mypageName;
	private String mypageId;
}




