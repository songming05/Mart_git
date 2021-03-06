package admin.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.PaymentDTO;
import admin.bean.PrdtManagementDTO;
import admin.bean.ReturnDTO;
import admin.bean.StatsPrdtDTO;
import admin.bean.StatsSalesDTO;
import product.bean.ProductDTO;

@Repository
@Transactional
public class AdminDAOMybatis implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PaymentDTO> paymentList(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.paymentList", map);
//		System.out.println(paymentDTO+"\t"+paymentDTO.getOrderdate()+"\t"+paymentDTO.getOrdername());
//		List<PaymentDTO> list = new ArrayList<PaymentDTO>();
//		return list;
	}

	@Override
	public void applyImg(Map<String, String> map) {
		sqlSession.insert("adminSQL.applyImg", map);
		
	}

	@Override
	public List<ProductDTO> prdtManagement(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.prdtManagement", map);
	}

	@Override
	public void prdtChange(Map<String, Object> map) {
		sqlSession.update("adminSQL.prdtChange", map);
	}

	@Override
	public List<ReturnDTO> orderReturn(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.orderReturn",map);
	}
	
	@Override
	public void returnChange(Map<String, String> map) {
		sqlSession.update("adminSQL.returnChange",map);
		
	}

	@Override
	public List<StatsSalesDTO> statsSales(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.statsSales",map);
	}

	@Override
	public List<StatsPrdtDTO> statsPrdt(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.statsPrdt",map);
	}

	@Override
	public List<StatsPrdtDTO> couponList(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.couponList",map);
	}

	//새창띄우기
	@Override
	public List<PrdtManagementDTO> managementModify(String prdtCode) {
		return sqlSession.selectList("adminSQL.managementModify", prdtCode);
	}

	@Override
	public void updateQty(Map<String, String> map) {
		sqlSession.update("adminSQL.updateQty",map);
	}

	//남자 신발사이즈 250~280등록
	@Override
	public void insertMan(Map<String, Object> map) {
		sqlSession.insert("adminSQL.insertMan",map);		
	}

	@Override
	public void insertWoman(Map<String, Object> map) {
		sqlSession.insert("adminSQL.insertWoman",map);
	}

	

}
