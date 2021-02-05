package com.setup.test2.Ctr.Notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.setup.test2.Model.Notice.NoticeBoardVO;
import com.setup.test2.Model.Notice.PageVO;
import com.setup.test2.Service.Notice.NoticeBoardSrv;

@Controller
@RequestMapping("/notice")
public class NoticeBoardCtr {

	 @Autowired
	    private NoticeBoardSrv boardSvc;
	    
	    // 리스트
	    @RequestMapping(value = "/List")
	   	public String boardList(PageVO pageVO, ModelMap modelMap) throws Exception {
			
	    	//카운트넣기
	    	int count = boardSvc.getBoardCount();
	    	pageVO.pageCalculate( boardSvc.selectBoardCount() ); // startRow, endRow

	    	List<?> listview   = boardSvc.selectBoardList(pageVO);
	        
	    	modelMap.addAttribute("listview", listview);
	    	modelMap.addAttribute("count", count);
			modelMap.addAttribute("pageVO", pageVO);
	        return "grp_notice/grp_notice";
	    }
	    
	    // 글 쓰기 
	    @RequestMapping(value = "/write")
	   	public String boardForm(HttpServletRequest request, ModelMap modelMap) throws Exception {
	    	String brdno = request.getParameter("brdno");
	    	if (brdno!=null) {
	    		NoticeBoardVO boardInfo = boardSvc.selectBoardOne(brdno);
	        
	    		modelMap.addAttribute("boardInfo", boardInfo);
	    	}
	    	
	        return "grp_notice/grp_notice_insert";
	    }
	    
	    @RequestMapping(value = "/boardSave")
	   	public String boardSave(NoticeBoardVO boardInfo) throws Exception {
	    	
	    	if (boardInfo.getBrdno()==null || "".equals(boardInfo.getBrdno()))
	    		 boardSvc.insertBoard(boardInfo);
	    	else boardSvc.updateBoard(boardInfo);

	        return "redirect:/notice/List";
	    }

	    // 글 읽기
	    @RequestMapping(value = "/board2Read")
	   	public String boardSave(HttpServletRequest request, ModelMap modelMap) throws Exception {
	    	
	    	String brdno = request.getParameter("brdno");
	    	
	    	
	    	boardSvc.updateBoard2Read(brdno);
	    	NoticeBoardVO boardInfo = boardSvc.selectBoardOne(brdno);
	        
	    	modelMap.addAttribute("boardInfo", boardInfo);
	    	
	        return "grp_notice/grp_notice_view";
	    }
	    
	    // 글 삭제
	    @RequestMapping(value = "/delete")
	   	public String boardDelete(HttpServletRequest request) throws Exception {
	    	
	    	String brdno = request.getParameter("brdno");
	    	
	    	boardSvc.deleteBoardOne(brdno);
	        
	        return "redirect:/notice/List";
	    }
	    
	    // 글 수정
	    @RequestMapping(value = "/modify")
	   	public String boardUpdate(HttpServletRequest request, ModelMap modelMap) throws Exception {
	    	
	    	String brdno = request.getParameter("brdno");
	    	
	    	NoticeBoardVO boardInfo = boardSvc.selectBoardOne(brdno);
	        
	    	modelMap.addAttribute("boardInfo", boardInfo);
	    	
	        return "grp_notice/grp_notice_modify";
	    }
	    
	    @RequestMapping(value = "/updateSave")
	   	public String board1UpdateSave(@ModelAttribute NoticeBoardVO boardInfo) throws Exception {
	    	
	    	boardSvc.updateBoard(boardInfo);
	    	
	        return "redirect:/notice/List";
	    }    

}
