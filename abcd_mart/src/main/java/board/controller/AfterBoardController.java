package board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import board.bean.AfterBoardDTO;
import board.bean.BoardPaging;
import board.dao.AfterBoardDAO;

@Controller
@RequestMapping("/board")
public class AfterBoardController {
	@Autowired
	private AfterBoardDAO afterBoardDAO;
	@Autowired
	private BoardPaging boardPaging;
	
	@RequestMapping(value="/getAfterBoardList",method=RequestMethod.GET)
	public ModelAndView getAfterBoardList(@RequestParam(required=false) int pg, 
								@RequestParam String prdtCode, HttpSession session) {
		//DB
		int endNum = pg*5;
		int startNum = endNum-4;
	
		Map<String,String>map = new HashMap();
		map.put("startNum",startNum+"");
		map.put("endNum",endNum+"");
		map.put("prdtCode", prdtCode);
		//map.put("memId", memId);
		
		List<AfterBoardDTO>list = afterBoardDAO.getAfterBoardList(map);
		
		
		//페이징 처리
		int totalA = afterBoardDAO.getTotalA();//총글수
		boardPaging.setCurrentPage(pg);
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.setTotalA(totalA);
		boardPaging.setPrdtCode(prdtCode);
		boardPaging.makePagingHTML();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("totalA",totalA);
		mav.addObject("list",list);
		mav.addObject("boardPaging",boardPaging);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/afterBoardWrite",method=RequestMethod.POST)
	public ModelAndView afterBoardWrite(@ModelAttribute AfterBoardDTO afterBoardDTO) {
		afterBoardDAO.afterBoardWrite(afterBoardDTO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/afterBoardView",method=RequestMethod.POST)
	public @ResponseBody AfterBoardDTO afterBoardView(@RequestParam String seq) {
		AfterBoardDTO afterBoardDTO = afterBoardDAO.afterBoardView(seq);
		return afterBoardDTO;
	}
	
	@RequestMapping(value="/afterBoardImage", method=RequestMethod.POST)
	public @ResponseBody void afterBoardImage(@RequestParam("img1[]") List<MultipartFile> list) {
		String filePath = "D:\\1_MH\\Git\\github\\web_project\\collabo\\abcd_mart\\src\\main\\webapp\\storage";
		for(MultipartFile img: list) {
			String fileName = img.getOriginalFilename();
			File file = new File(filePath,fileName);
			
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	
}//class
