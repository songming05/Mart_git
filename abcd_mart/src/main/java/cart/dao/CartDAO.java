package cart.dao;

import java.util.List;
import java.util.Map;

import cart.bean.CartDTO;

public interface CartDAO {

	public void shoesQtyText(Map<String, String> map);
	
	public void deleteList(Map<String, String> map);
	
	public List<CartDTO> orderAllList();
	
	public void insert_temporary_cartlist(Map<String, String> map);
	
	public List<CartDTO> temporary_cartlist();
	
	public void delete_temporary_cartlist();
	
	public void select_deleteList(Map<String, String> map);
	
	public List<CartDTO> getCartList(String id);

	public void addMyCart(CartDTO cartDTO);

}
