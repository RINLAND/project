package com.setup.test2.Ctr.freeBoard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setup.test2.Model.freeBoard.freeCommentVO;
import com.setup.test2.Service.freeBoard.freeCommentSrv;

@Controller
@RequestMapping("/freeComment")
public class freeCommentCtr {
	@Autowired
	freeCommentSrv cSrv;
	
	@RequestMapping("/grp_comment_register")
	@ResponseBody 
	public void setComment(@ModelAttribute freeCommentVO cvo) {
		//System.out.println(cvo);
		cSrv.setComment(cvo);
		
	}
	
	@RequestMapping("/grp_comment_list")
	@ResponseBody //ajax쓰기 위해서 필요
	public Map<String, Object> getCommentList(@ModelAttribute freeCommentVO cvo) {
		//System.out.println(cvo);
		List<freeCommentVO> list = cSrv.getCommentList(cvo); //내용가져오기
		int count = cSrv.getCommentCount(cvo); //게시물 개수
		
		System.out.println(list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("count", count);
		
		return map;
	}
	
	@RequestMapping("/grp_comment_delete")
	@ResponseBody
	public void setDelete(@ModelAttribute freeCommentVO cvo) {
		//System.out.println(cvo.getCid());
		//System.out.println(cvo.getBoardCode());
		cSrv.setCommentDelete(cvo);
	}
	
	@RequestMapping("/grp_comment_modify")
	@ResponseBody
	public void setModify(@ModelAttribute freeCommentVO cvo) {
		//System.out.println(cvo.getCid());
		//System.out.println(cvo.getBoardCode());
		//System.out.println(cvo.getComment());
		cSrv.setCommentModify(cvo);
		
	}
	

}
