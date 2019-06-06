package order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cart.bean.CartDTO;
import order.bean.OrderDTO;

@Repository
@Transactional
class OrderDAOMybatis implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void writeOrder(OrderDTO orderDTO) {
		sqlSession.insert("orderSQL.writeOrder", orderDTO);
		System.out.println("MYBATIS orderDTO  "+orderDTO.getBuyerName());
		
	}

	@Override
	public OrderDTO oneOrder(String buyerName) {
		return sqlSession.selectOne("orderSQL.oneOrder", buyerName);
	}

	@Override
	public List<OrderDTO> orderAddressList(String id) {
		return sqlSession.selectList("orderSQL.orderAddressList", id);
	}

	@Override
	public List<CartDTO> getOrderList(String id) {
		return sqlSession.selectList("orderSQL.getOrderList", id);
	}


	@Override
	public void directWrite(CartDTO cartDTO) {
		sqlSession.insert("orderSQL.directWrite", cartDTO);
		
	}

}