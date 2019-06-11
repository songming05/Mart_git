package category.dao;

import java.util.List;

import admin.bean.PrdtManagementDTO;

public interface CategoryDAO {

	public List<PrdtManagementDTO> getSize(String prdtcode);
	public List<PrdtManagementDTO> getSoldqty(String category);
	public List<PrdtManagementDTO> getShoesList(String category);
	public List<PrdtManagementDTO> getShoesList2(String category2);

}
