package category.dao;

import java.util.List;

import admin.bean.PrdtManagementDTO;

public interface CategoryDAO {

	List<PrdtManagementDTO> getSize(String prdtcode);
	List<PrdtManagementDTO> getSoldqty(String category);
	List<PrdtManagementDTO> getShoesList(String category);
	List<PrdtManagementDTO> getShoesList2(String category2);

}
