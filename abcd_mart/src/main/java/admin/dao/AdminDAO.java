package admin.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import admin.bean.PaymentDTO;
import admin.bean.PrdtManagementDTO;
import admin.bean.ReturnDTO;

public interface AdminDAO {

	public List<PaymentDTO> paymentList(Map<String, String> map);

	public void applyImg(Map<String, String> map);

	public List<PrdtManagementDTO> prdtManagement(Map<String, String> map);

	public void prdtChange(Map<String, Object> map);

	public List<ReturnDTO> orderReturn(Map<String, String> map);

}
