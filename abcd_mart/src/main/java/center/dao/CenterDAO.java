package center.dao;

import java.util.List;
import java.util.Map;

import center.bean.CenterDTO;

public interface CenterDAO {

	public List<CenterDTO> checkArea(String sido);

	public List<CenterDTO> findeAbcd(Map<String, String> map);

	public CenterDTO whereAbcd(String seq);

}
