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
import com.setup.test2.Model.Notice.NoticeBoardVO;
import com.setup.test2.Service.Notice.NoticeBoardSrv;

import pager.Pager;

@Controller
@RequestMapping("/notice")
public class NoticeBoardCtr {
	@Autowired
	NoticeBoardSrv nSrv;

	
	@RequestMapping("")
	public ModelAndView getBoardHome(
			
			//paging
			@RequestParam(defaultValue = "1") int curPage) { 
		
		ModelAndView mav = new ModelAndView();
		
		
		 int count = nSrv.getBoardCount();
		 
		//*************************************************************************************		
			Pager pager = new Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
		//*******************************************************************************************
		 
		 mav.addObject("count", count);
		
		 
		
		mav.addObject("list", nSrv.getBoardList(start, end));
		
		
		
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
				
				
				
		
		
		mav.setViewName("grp_notice/grp_teamboard");
		
		return mav;
	}
	
	@RequestMapping("/grp_notice_insert")
	@ResponseBody  
	public String setBoard(@ModelAttribute NoticeBoardVO nvo) {
		nSrv.setBoard(nvo);
		nSrv.createArticleTbl(nvo.getBoardCode());
		nSrv.createCommentTbl(nvo.getBoardCode());
		return "success";
	}
	
	
	
	@RequestMapping("/grp_notice_delete") 
	@ResponseBody  
	public String setBoardDel(@RequestParam String boardCode) {
		
		nSrv.setBoardDel(boardCode);
		nSrv.dropArticleTbl(boardCode);
		nSrv.dropCommentTbl(boardCode);
		return "success";
		
	}
	
	
	@RequestMapping(value = "/grp_get_post", method = RequestMethod.POST)
	@ResponseBody
	public List<PostVO> getPost() {
		nSrv.getPostList();
		List<PostVO> list = nSrv.getPostList();
		//System.out.println(list);
		return list;
	}
	
	@RequestMapping("/grp_freeboard_modify")
	@ResponseBody 
	 public String setModify(@ModelAttribute NoticeBoardVO nvo) { 
	 nSrv.setBoardModify(nvo); nSrv.createArticleTbl(nvo.getBoardCode());
	 nSrv.createCommentTbl(nvo.getBoardCode()); return "success"; }
	

}
