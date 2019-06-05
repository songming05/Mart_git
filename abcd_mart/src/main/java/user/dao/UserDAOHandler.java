package user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.UserDTO;

@Repository
@Transactional
public class UserDAOHandler implements UserDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public String signUp(Map<String, String> map) {
		int insert = sqlSession.insert("userSQL.signUp", map);
		String result="";
		if(insert==1) {
			result="success";
		} else {
			result="fail";
		}
		return result;
	}

	@Override
	public UserDTO checkUserId(String id) {		
		return sqlSession.selectOne("userSQL.checkUserId", id);
	}
	@Override
	public UserDTO checkUserEmail(String email) {
		return sqlSession.selectOne("userSQL.checkUserEmail", email);
	}

	@Override
	public UserDTO getUserInfo(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.getUserInfo", map);
	}

	@Override
	public String getIdByEmail(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.getIdByEmail", map);
	}
	@Override
	public String getJoinDate(String id) {
		return sqlSession.selectOne("userSQL.getJoinDate", id);
	}
	@Override
	public UserDTO getInfoByEmail(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.getInfoByEmail", map);
	}

	
}
