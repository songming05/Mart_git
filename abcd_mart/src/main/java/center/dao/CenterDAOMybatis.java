package center.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import center.bean.CenterDTO;

@Repository
@Transactional
public class CenterDAOMybatis implements CenterDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CenterDTO> checkArea(String sido) {
		return sqlSession.selectList("centerSQL.checkArea", sido);
	}

	@Override
	public List<CenterDTO> findeAbcd(Map<String, String> map) {
		return sqlSession.selectList("centerSQL.findAbcd", map);
	}

	@Override
	public CenterDTO whereAbcd(String seq) {
		return sqlSession.selectOne("centerSQL.whereAbcd", seq);
	}
	

}
