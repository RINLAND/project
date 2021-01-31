package com.setup.test2.Service.teamBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.BoardVO;
import com.setup.test2.Model.PostVO;
import com.setup.test2.Repository.teamBoard.BoardDao;




@Service
public class BoardSrv {

	@Autowired
	BoardDao bDao;
	
	public void setBoard(BoardVO bvo) {
		bDao.setBoard(bvo);
	}
	
	public List<BoardVO> getBoardList(int start, int end) {
		return bDao.getBoardList(start, end);
		
	}
	
	public void createArticleTbl(String boardCode) {
		bDao.createArticleTbl(boardCode);
	}

	
	public void createCommentTbl(String boardCode) {
		bDao.createCommentTbl(boardCode);
	}
	
	
	public void setBoardDel(String boardCode) {
		bDao.setBoardDel(boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		bDao.dropArticleTbl(boardCode);
	}

	
	public void dropCommentTbl(String boardCode) {
		bDao.dropCommentTbl(boardCode);
	}
	
	public BoardVO getBoardOne(String boardCode) {
		return bDao.getBoardOne(boardCode);
	}
	
	public BoardVO getBoardSelectOne(BoardVO bv) {
		return bDao.getBoardSelectOne(bv);
	}
	
	public int setBoardModify(BoardVO bvo) {
		return bDao.setBoardModify(bvo);
	}
	
	public int getBoardCount() {
		return bDao.getBoardCount();
	}
	
	public List<PostVO> getPostList() {
		return bDao.getPostList();
	}
}
