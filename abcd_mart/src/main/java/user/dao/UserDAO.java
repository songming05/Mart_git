package user.dao;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageDTO;
import user.bean.UserDTO;

public interface UserDAO {

	public String signUp(Map<String, String> map);

	public UserDTO checkUserId(String id);

	public UserDTO getUserInfo(Map<String, String> map);

	public UserDTO checkUserEmail(String email);	

	public UserDTO getInfoByEmail(Map<String, String> map);

	public UserDTO findUserInfo(Map<String, String> map);

	public void pwdReset(Map<String, String> map);

	public List<MyPageDTO> getMyPageList(String id);

}
