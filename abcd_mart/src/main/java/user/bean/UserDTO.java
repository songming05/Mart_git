package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class UserDTO {
	private int user_number; //기본키-col.1
	private String id; //기본키-col.2
	private String password, name, email, phone, birthday, post_number, address;
	private Date join_date;
}
