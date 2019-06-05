package user.dao;

import java.util.List;
import java.util.Map;

import user.bean.UserDTO;

public interface UserDAO {

	public String signUp(Map<String, String> map);

	public UserDTO checkUserId(String id);

	public UserDTO getUserInfo(Map<String, String> map);

	public UserDTO checkUserEmail(String email);	

	public String getIdByEmail(Map<String, String> map);

	public String getJoinDate(String userId);

	public UserDTO getInfoByEmail(Map<String, String> map);

}
