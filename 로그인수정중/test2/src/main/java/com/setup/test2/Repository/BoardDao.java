package com.setup.test2.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.BoardVO;



@Repository
public class BoardDao {
	
	@Autowired 
	SqlSession sql;
	
	public void setBoard(BoardVO bvo) {
		sql.insert("board.setBoard", bvo);
	}
	
	public int getBoardChk(String boardCode) {
		return sql.selectOne("board.getBoardChk", boardCode);
	}
	
	
	public List<BoardVO> getBoardList(int start, int end) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sql.selectList("board.getBoardList", map);
		
	}
	
	
	
	public void setBoardDel(String boardCode) {
		sql.delete("board.setBoardDel", boardCode);
	}
	
	public void setBoardModify(BoardVO bvo) {
		sql.update("board.setBoardModify", bvo);
		
	}
	
	public int getBoardCount() {
		return sql.selectOne("board.getBoardCount");
	}

}
