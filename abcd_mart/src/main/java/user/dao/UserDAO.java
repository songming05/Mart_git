package user.dao;

import java.util.Map;

import user.bean.UserDTO;

public interface UserDAO {

	String signUp(Map<String, String> map);

	UserDTO checkUserId(String id);


	UserDTO getUserInfo(Map<String, String> map);

	UserDTO checkUserEmail(String email);

}
