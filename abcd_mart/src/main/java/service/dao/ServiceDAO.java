package service.dao;

import java.util.List;
import java.util.Map;

import service.bean.ServiceDTO;

public interface ServiceDAO {

	//카테고리1
	public List<String> getCategory1();

	//카테고리2
	public List<String> getCategory2();

	//메인질문
	public List<String> getTitle();

	//메인답변
	public List<String> getAnswer();

	//상품정보 카테고리
	public List<ServiceDTO> getProductInfo(Map<String, String> categoryMap);

	//교환/반품/환불 카테고리
	public List<ServiceDTO> getExchange(Map<String, String> exchangeMap);
	
	//배송현황 카테고리
	public List<ServiceDTO> getDelivery(Map<String, String> deliveryMap);

	//주문/결제/취소 카테고리
	public List<ServiceDTO> getOrderRelation(Map<String, String> orderMap);

	//AS 카테고리
	public List<ServiceDTO> getAS(Map<String, String> asMap);

	//회원정보 카테고리
	public List<ServiceDTO> getMemberInfo(Map<String, String> memberInfoMap);

	//전체 페이지
	public List<ServiceDTO> getAllPageList(Map<String, Object> pageMap);
	
	//총 글 수
	public int getTotalA();
	
}
