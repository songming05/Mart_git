package board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import board.bean.AfterBoardDTO;

@Repository
@Transactional
public class AfterBoardDAOMybatis implements AfterBoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AfterBoardDTO> getAfterBoardList(Map<String, String> map) {
		return sqlSession.selectList("afterBoardSQL.getAfterBoardList", map);
	}
	
	@Override
	public int getTotalA() {
		return sqlSession.selectOne("afterBoardSQL.getTotalA");
	}
	
	@Override
	public void afterBoardWrite(AfterBoardDTO afterBoardDTO) {
		sqlSession.insert("afterBoardSQL.afterBoardWrite",afterBoardDTO);
	}
	
	@Override
	public AfterBoardDTO afterBoardView(String seq) {
		return sqlSession.selectOne("afterBoardSQL.afterBoardView",seq);
		
	}
}
