package com.setup.test2.Service.Notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.PostVO;
import com.setup.test2.Model.Notice.NoticeBoardVO;
import com.setup.test2.Repository.Notice.NoticeBoardDao;

@Service
public class NoticeBoardSrv {
	@Autowired
	NoticeBoardDao nDao;
	
	public void setBoard(NoticeBoardVO nvo) {
		nDao.setBoard(nvo);
	}
	
	public List<NoticeBoardVO> getBoardList(int start, int end) {
		return nDao.getBoardList(start, end);
		
	}
	
	public void createArticleTbl(String boardCode) {
		nDao.createArticleTbl(boardCode);
	}

	
	public void createCommentTbl(String boardCode) {
		nDao.createCommentTbl(boardCode);
	}
	
	
	public void setBoardDel(String boardCode) {
		nDao.setBoardDel(boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		nDao.dropArticleTbl(boardCode);
	}

	
	public void dropCommentTbl(String boardCode) {
		nDao.dropCommentTbl(boardCode);
	}
	
	public void setBoardModify(NoticeBoardVO nvo) {
		nDao.setBoardModify(nvo);
	}
	
	public int getBoardCount() {
		return nDao.getBoardCount();
	}
	
	public List<PostVO> getPostList() {
		return nDao.getPostList();
	}
}
