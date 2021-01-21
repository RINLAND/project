package com.setup.test2.Service.freeBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.PostVO;
import com.setup.test2.Model.freeBoard.freeBoardVO;
import com.setup.test2.Repository.freeBoard.freeBoardDao;

@Service
public class freeBoardSrv {
	@Autowired
	freeBoardDao fDao;
	
	public void setBoard(freeBoardVO fvo) {
		fDao.setBoard(fvo);
	}
	
	public List<freeBoardVO> getBoardList(int start, int end) {
		return fDao.getBoardList(start, end);
		
	}
	
	public void createArticleTbl(String boardCode) {
		fDao.createArticleTbl(boardCode);
	}

	
	public void createCommentTbl(String boardCode) {
		fDao.createCommentTbl(boardCode);
	}
	
	
	public void setBoardDel(String boardCode) {
		fDao.setBoardDel(boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		fDao.dropArticleTbl(boardCode);
	}

	
	public void dropCommentTbl(String boardCode) {
		fDao.dropCommentTbl(boardCode);
	}
	
	public void setBoardModify(freeBoardVO fvo) {
		fDao.setBoardModify(fvo);
	}
	
	public int getBoardCount() {
		return fDao.getBoardCount();
	}
	
	public List<PostVO> getPostList() {
		return fDao.getPostList();
	}
}
