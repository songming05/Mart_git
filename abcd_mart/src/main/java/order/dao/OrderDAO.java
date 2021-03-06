package order.dao;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import cart.bean.CartDTO;
import order.bean.OrderDTO;
import order.bean.PaymentinfoDTO;
import order.bean.cpDTO;

public interface OrderDAO {

	public void writeOrder(OrderDTO orderDTO);

	public OrderDTO oneOrder(String buyerName);

	public List<OrderDTO> orderAddressList(String id);

	public List<CartDTO> getOrderList(String id);

	public void directWrite(CartDTO cartDTO);

	public void deleteCart(String id);

	public void paymentInfo(PaymentinfoDTO paymentinfoDTO);

	public void prdtManagement(Map<String, String> map);

	public List<CartDTO> getOrderDirect(String id);

	public void deleteMyCart(String id);

	public List<OrderDTO> orderHistory(String id);

	public List<cpDTO> orderCouponPage(String id);

	public void couponUpdate(Map<String, String> map);

	public Map<String, String> getUserMailPhone(String id);

	public int getCouponCount(String id);

}
