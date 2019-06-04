package admin.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import admin.bean.PaymentDTO;

public interface AdminDAO {

	public List<PaymentDTO> paymentList(Map<String, String> map);

}
