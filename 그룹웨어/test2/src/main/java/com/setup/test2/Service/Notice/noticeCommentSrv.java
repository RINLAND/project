package com.setup.test2.Service.Notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.CommentVO;
import com.setup.test2.Repository.teamBoard.CommentDao;

@Service
public class noticeCommentSrv {
	
	@Autowired
	CommentDao cDao;
	
	public void setComment(CommentVO cvo) {
		cDao.setComment(cvo);
	}
	
	public List<CommentVO> getCommentList(CommentVO cvo){
		return cDao.getCommentList(cvo);
	}
	
	public int getCommentCount(CommentVO cvo) {
		return cDao.getCommentCount(cvo);
	}
	
	public void setCommentDelete(CommentVO cvo) {
		cDao.setCommentDelete(cvo);
	}
	
	public void setCommentModify(CommentVO cvo) {
		cDao.setCommentModify(cvo);
	}

}
