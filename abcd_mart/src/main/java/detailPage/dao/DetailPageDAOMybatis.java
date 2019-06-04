package detailPage.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import detailPage.bean.DetailPageDTO;

@Repository
@Transactional
public class DetailPageDAOMybatis implements DetailPageDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public DetailPageDTO getProduct(String prdtCode) {
		return sqlSession.selectOne("detailPageSQL.getProduct",prdtCode);
	}
	
	
}
