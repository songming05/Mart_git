package category.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.PrdtManagementDTO;

@Repository
@Transactional
public class CategoryDAOMybatis implements CategoryDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PrdtManagementDTO> getSize(String prdtcode) {
		return sqlSession.selectList("categorySQL.getSize", prdtcode);
	}

	@Override
	public List<PrdtManagementDTO> getSoldqty(String category) {
		return sqlSession.selectList("categorySQL.getSoldqty", category.toLowerCase()); 
	}

	@Override
	public List<PrdtManagementDTO> getShoesList(String category) {
		return sqlSession.selectList("categorySQL.getShoesList", category.toLowerCase()); 
	}

	@Override
	public List<PrdtManagementDTO> getShoesList2(String category2) {
		return sqlSession.selectList("categorySQL.getShoesList2", category2.toLowerCase()); 
	}
	
	@Override
	public List<PrdtManagementDTO> categortPage2_hotlist(String category2) {
		return sqlSession.selectList("categorySQL.categortPage2_hotlist", category2.toLowerCase()); 
	}
	
}
