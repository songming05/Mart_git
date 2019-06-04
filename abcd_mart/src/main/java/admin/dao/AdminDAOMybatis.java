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

}
