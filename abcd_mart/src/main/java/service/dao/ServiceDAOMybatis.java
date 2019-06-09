package service.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import service.bean.ServiceDTO;

@Repository
@Transactional
public class ServiceDAOMybatis implements ServiceDAO {
	@Autowired
	private SqlSession sqlSession;

	
	 @Override 
	 public List<String> getCategory1() { 
		return sqlSession.selectList("serviceSQL.getCategory1"); 
	  }
	  
	 @Override 
	 public List<String> getCategory2() { 
		return sqlSession.selectList("serviceSQL.getCategory2"); 
	 }
	  
	 @Override 
	 public List<String> getTitle() { 
		return sqlSession.selectList("serviceSQL.getTitle"); 
	 }
	  
	 @Override 
	 public List<String> getAnswer() { 
		return sqlSession.selectList("serviceSQL.getAnswer"); 
	}
	 
	 @Override
	 public List<ServiceDTO> getProductInfo(Map<String, String> categoryMap) {
		return sqlSession.selectList("serviceSQL.getProductInfo", categoryMap);
	}

	@Override
	public List<ServiceDTO> getExchange(Map<String, String> exchangeMap) {
		
		return sqlSession.selectList("serviceSQL.getExchange", exchangeMap);
	}

	@Override
	public List<ServiceDTO> getDelivery(Map<String, String> deliveryMap) {
		return sqlSession.selectList("serviceSQL.getDelivery", deliveryMap);
	}

	@Override
	public List<ServiceDTO> getOrderRelation(Map<String, String> orderMap) {
		return sqlSession.selectList("serviceSQL.getOrderRelation", orderMap);
	}

	@Override
	public List<ServiceDTO> getAS(Map<String, String> asMap) {
		return sqlSession.selectList("serviceSQL.getAS", asMap);
	}

	@Override
	public List<ServiceDTO> getMemberInfo(Map<String, String> memberInfoMap) {
		return sqlSession.selectList("serviceSQL.getMemberInfo", memberInfoMap);
	}

	@Override
	public List<ServiceDTO> getAllPageList(Map<String, Object> pageMap) {
		return sqlSession.selectList("serviceSQL.getAllPageList", pageMap);
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("serviceSQL.getTotalA");
	}


	
	
}
