package cart.dao;

import java.util.List;
import java.util.Map;

import cart.bean.CartDTO;

public interface CartDAO {

	public List<CartDTO> shoesList();
	public void shoesQtyText(Map<String, String> map);
	public void deleteList(Map<String, String> map);

}
