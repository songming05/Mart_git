package board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import board.bean.AfterBoardDTO;

public interface AfterBoardDAO {

	public List<AfterBoardDTO> getAfterBoardList(Map<String, String> map);

	public int getTotalA();

	public void afterBoardWrite(AfterBoardDTO afterBoardDTO);

	public AfterBoardDTO afterBoardView(String seq);

}
