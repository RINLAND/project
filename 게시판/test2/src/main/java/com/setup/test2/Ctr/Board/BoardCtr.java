package com.setup.test2.Ctr.Board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.BoardVO;
import com.setup.test2.Model.PostVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Service.BoardSrv;

import pager.Pager;


@Controller
@RequestMapping("/board")
public class BoardCtr {
	
	@Autowired
	BoardSrv bSrv;

	
	@RequestMapping("")
	public ModelAndView getBoardHome(
			
			//paging
			@RequestParam(defaultValue = "1") int curPage) { 
		
		ModelAndView mav = new ModelAndView();
		
		
		 int count = bSrv.getBoardCount();
		 
		//*************************************************************************************		
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
		//*******************************************************************************************
		 
		 mav.addObject("count", count);
		
		 
		
		mav.addObject("list", bSrv.getBoardList(start, end));
		
		
		
				mav.addObject("start", start);
				mav.addObject("end", end);  
				
				mav.addObject("blockBegin", pager.getBlockBegin());
				mav.addObject("blockEnd", pager.getBlockEnd());
				mav.addObject("curBlock", pager.getCurBlock());
				mav.addObject("totalBlock", pager.getTotBlock());
				
				mav.addObject("prevPage", pager.getPrevPage());
				mav.addObject("nextPage", pager.getNextPage());
				mav.addObject("curPage", pager.getCurPage());
				mav.addObject("totalPage", pager.getTotPage());
				
				
				mav.addObject("selected", pager.getCurPage());
				
				
				
		
		
		mav.setViewName("grp_teamboard/grp_teamboard");
		
		return mav;
	}
	
	@RequestMapping("/grp_teamboard_insert")
	@ResponseBody  
	public String setBoard(@ModelAttribute BoardVO bvo) {
		bSrv.setBoard(bvo);
		
		return "success";
	}
	
	
	
	@RequestMapping("/grp_teamboard_delete") 
	@ResponseBody  
	public String setBoardDel(@RequestParam String boardCode) {
		
		bSrv.setBoardDel(boardCode);
		
		return "success";
		
	}
	
	
	@RequestMapping(value = "/grp_get_post", method = RequestMethod.POST)
	@ResponseBody
	public List<PostVO> getPost() {
		bSrv.getPostList();
		List<PostVO> list = bSrv.getPostList();
		//System.out.println(list);
		return list;
	}
	
	
}
