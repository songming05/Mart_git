package cart.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cart.bean.CartDTO;

@Repository
@Transactional
public class CartDAOMybatis implements CartDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CartDTO> shoesList() {
		return sqlSession.selectList("cartSQL.shoesList");
	}

	@Override
	public void shoesQtyText(Map<String, String> map) {
		sqlSession.update("cartSQL.shoesQtyText", map);
	}

	@Override
	public void deleteList(Map<String, String> map) {
		sqlSession.delete("cartSQL.deleteList", map);
	}
	
}
