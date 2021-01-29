package com.setup.test2.Service.freeBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.freeBoard.freeCommentVO;
import com.setup.test2.Repository.freeBoard.freeCommentDao;


@Service
public class freeCommentSrv {

	@Autowired
	freeCommentDao cDao;
	
	public void setComment(freeCommentVO cvo) {
		cDao.setComment(cvo);
	}
	
	public List<freeCommentVO> getCommentList(freeCommentVO cvo){
		return cDao.getCommentList(cvo);
	}
	
	public int getCommentCount(freeCommentVO cvo) {
		return cDao.getCommentCount(cvo);
	}
	
	public void setCommentDelete(freeCommentVO cvo) {
		cDao.setCommentDelete(cvo);
	}
	
	public void setCommentModify(freeCommentVO cvo) {
		cDao.setCommentModify(cvo);
	}
	
}
