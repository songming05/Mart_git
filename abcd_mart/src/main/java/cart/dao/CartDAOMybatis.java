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
	public List<CartDTO> orderAllList() {
		return sqlSession.selectList("cartSQL.orderAllList");
	}

	@Override
	public void shoesQtyText(Map<String, String> map) {
		sqlSession.update("cartSQL.shoesQtyText", map);
	}

	@Override
	public void deleteList(Map<String, String> map) {
		sqlSession.delete("cartSQL.deleteList", map);
	}

	@Override
	public void insert_temporary_cartlist(Map<String, String> map) {
		sqlSession.insert("cartSQL.insert_temporary_cartlist", map);
	}

	@Override
	public List<CartDTO> temporary_cartlist() {
		return sqlSession.selectList("cartSQL.temporary_cartlist");
	}

	@Override
	public void delete_temporary_cartlist() {
		sqlSession.delete("cartSQL.delete_temporary_cartlist");
	}

	@Override
	public void select_deleteList(Map<String, String> map) {
		sqlSession.delete("cartSQL.select_deleteList", map);
	}
	
}
