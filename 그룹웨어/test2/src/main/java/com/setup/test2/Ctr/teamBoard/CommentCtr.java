package com.setup.test2.Ctr.teamBoard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setup.test2.Model.CommentVO;
import com.setup.test2.Service.teamBoard.CommentSrv;



@Controller
@RequestMapping("/comment")
public class CommentCtr {
	@Autowired
	CommentSrv cSrv;
	
	
	@RequestMapping("/grp_comment_register")
	@ResponseBody 
	public void setComment(@ModelAttribute CommentVO cvo) {
		
		cSrv.setComment(cvo);
		
	}
	
	@RequestMapping("/grp_comment_list")
	@ResponseBody 
	public Map<String, Object> getCommentList(@ModelAttribute CommentVO cvo) {
		
		List<CommentVO> list = cSrv.getCommentList(cvo); //내용가져오기
		int count = cSrv.getCommentCount(cvo); //게시물 개수
		
		System.out.println(list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		
		return map;
	}
	
	@RequestMapping("/grp_comment_delete")
	@ResponseBody
	public void setDelete(@ModelAttribute CommentVO cvo) {
		//System.out.println(cvo.getCid());
		//System.out.println(cvo.getBoardCode());
		cSrv.setCommentDelete(cvo);
	}
	
	@RequestMapping("/grp_comment_modify")
	@ResponseBody
	public void setModify(@ModelAttribute CommentVO cvo) {
		//System.out.println(cvo.getCid());
		//System.out.println(cvo.getBoardCode());
		//System.out.println(cvo.getComment());
		cSrv.setCommentModify(cvo);
		
	}

}
