package com.setup.test2.Repository.freeBoard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.freeBoard.freeCommentVO;


@Repository
public class freeCommentDao {
	@Autowired
	SqlSession sql;
	
	public void setComment(freeCommentVO cvo) {
		sql.insert("freeComment.setComment", cvo);
	}
	
	//boardCode, aid가 필요
	public List<freeCommentVO> getCommentList(freeCommentVO cvo){
		return sql.selectList("freeComment.getCommentList", cvo);
	}
	
	public int getCommentCount(freeCommentVO cvo) {
		return sql.selectOne("freeComment.getCommentCount", cvo);
	}
	
	public void setCommentDelete(freeCommentVO cvo) {
		sql.delete("freeComment.setCommentDelete", cvo);
	}
	
	public void setCommentModify(freeCommentVO cvo) {
		sql.update("freeComment.setCommentModify", cvo);
	}
	
	
}
