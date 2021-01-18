package com.setup.test2.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.BoardVO;
import com.setup.test2.Repository.BoardDao;



@Service
public class BoardSrv {

	@Autowired
	BoardDao bDao;
	
	public void setBoard(BoardVO bvo) {
		bDao.setBoard(bvo);
	}
	
	public int getBoardChk(String boardCode) {
		return bDao.getBoardChk(boardCode);
	}
	
	public List<BoardVO> getBoardList(int start, int end) {
		return bDao.getBoardList(start, end);
		
	}
	
	
	public void setBoardDel(String boardCode) {
		bDao.setBoardDel(boardCode);
	}
	
	public void setBoardModify(BoardVO bvo) {
		bDao.setBoardModify(bvo);
	}
	
	public int getBoardCount() {
		return bDao.getBoardCount();
	}
}
