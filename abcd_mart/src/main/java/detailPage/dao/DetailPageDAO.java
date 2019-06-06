package detailPage.dao;

import java.util.List;

import detailPage.bean.DetailPageDTO;

public interface DetailPageDAO {

	DetailPageDTO getProduct(String prdtCode);

	List<DetailPageDTO> searchList(String searchText);

}
