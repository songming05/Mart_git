package order.dao;

import java.util.List;

import org.springframework.ui.Model;

import cart.bean.CartDTO;
import order.bean.OrderDTO;

public interface OrderDAO {

	public void writeOrder(OrderDTO orderDTO);

	public OrderDTO oneOrder(String buyerName);

	public List<OrderDTO> orderAddressList(String id);

	public List<CartDTO> getOrderList(String id);

	public void directWrite(CartDTO cartDTO);

	public void deleteCart(String id);

}
