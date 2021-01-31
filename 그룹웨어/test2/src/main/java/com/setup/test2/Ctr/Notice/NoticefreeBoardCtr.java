package com.setup.test2.Ctr.Notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.setup.test2.Model.PostVO;
import com.setup.test2.Model.freeBoard.freeBoardVO;
import com.setup.test2.Service.freeBoard.freeBoardSrv;

import pager.Pager;

@Controller
@RequestMapping("/freeboard")
public class NoticefreeBoardCtr {
	@Autowired
	freeBoardSrv fSrv;

	
	@RequestMapping("")
	public ModelAndView getBoardHome(
			
			//paging
			@RequestParam(defaultValue = "1") int curPage) { 
		
		ModelAndView mav = new ModelAndView();
		
		
		 int count = fSrv.getBoardCount();
		 
		//*************************************************************************************		
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
		//*******************************************************************************************
		 
		 mav.addObject("count", count);
		
		 
		
		mav.addObject("list", fSrv.getBoardList(start, end));
		
		
		
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
				
				
				
		
		
		mav.setViewName("grp_freeboard/grp_freeboard");
		
		return mav;
	}
	
	@RequestMapping("/grp_freeboard_insert")
	@ResponseBody  
	public String setBoard(@ModelAttribute freeBoardVO fvo) {
		fSrv.setBoard(fvo);
		fSrv.createArticleTbl(fvo.getBoardCode());
		fSrv.createCommentTbl(fvo.getBoardCode());
		return "success";
	}
	
	
	
	@RequestMapping("/grp_freeboard_delete") 
	@ResponseBody  
	public String setBoardDel(@RequestParam String boardCode) {
		
		fSrv.setBoardDel(boardCode);
		fSrv.dropArticleTbl(boardCode);
		fSrv.dropCommentTbl(boardCode);
		return "success";
		
	}
	
	
	@RequestMapping(value = "/grp_get_post", method = RequestMethod.POST)
	@ResponseBody
	public List<PostVO> getPost() {
		fSrv.getPostList();
		List<PostVO> list = fSrv.getPostList();
		//System.out.println(list);
		return list;
	}
	
	@RequestMapping("/grp_freeboard_modify")
	@ResponseBody 
	 public String setModify(@ModelAttribute freeBoardVO fvo) { 
	 fSrv.setBoardModify(fvo); fSrv.createArticleTbl(fvo.getBoardCode());
	 fSrv.createCommentTbl(fvo.getBoardCode()); return "success"; }
	

}
