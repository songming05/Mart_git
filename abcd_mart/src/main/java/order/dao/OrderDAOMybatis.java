package order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import cart.bean.CartDTO;
import order.bean.OrderDTO;
import order.bean.PaymentinfoDTO;
import order.bean.cpDTO;

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
	public List<CartDTO> getOrderDirect(String id) {
		return sqlSession.selectList("orderSQL.getOrderDirect", id);
	}

	@Override
	public void directWrite(CartDTO cartDTO) {
		sqlSession.insert("orderSQL.directWrite", cartDTO);
		
	}

	@Override
	public void deleteCart(String id) {
		sqlSession.delete("orderSQL.deleteCart", id);
		
	}

	@Override
	public void paymentInfo(PaymentinfoDTO paymentinfoDTO) {
		sqlSession.insert("orderSQL.paymentInfo", paymentinfoDTO);
		
	}

	@Override
	public void prdtManagement(Map<String, String> map) {
		sqlSession.update("orderSQL.prdtManagement", map);
		
	}
	@Override
	public void deleteMyCart(String id) {
		sqlSession.delete("orderSQL.deleteMyCart", id);
	}

	@Override
	public List<OrderDTO> orderHistory(String id) {
		return sqlSession.selectList("orderSQL.orderHistory", id);
	}

	@Override
	public List<cpDTO> orderCouponPage(String id) {
		return sqlSession.selectList("orderSQL.orderCouponPage", id);
	}

	@Override
	public void couponUpdate(Map<String, String> map) {
		sqlSession.update("orderSQL.couponUpdate", map);
		
	}

	@Override
	public Map<String, String> getUserMailPhone(String id) {
		return sqlSession.selectOne("orderSQL.getUserMailPhone", id);
	}

	@Override
	public int getCouponCount(String id) {
		return sqlSession.selectOne("orderSQL.getCouponCount", id);
	}



}
