package com.setup.test2.Repository.Notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.CommentVO;

@Repository
public class noticeCommentDao {
	@Autowired
	SqlSession sql;
	
	public void setComment(CommentVO cvo) {
		sql.insert("comment.setComment", cvo);
	}
	
	//boardCode, aid가 필요
	public List<CommentVO> getCommentList(CommentVO cvo){
		return sql.selectList("comment.getCommentList", cvo);
	}
	
	public int getCommentCount(CommentVO cvo) {
		return sql.selectOne("comment.getCommentCount", cvo);
	}
	
	public void setCommentDelete(CommentVO cvo) {
		sql.delete("comment.setCommentDelete", cvo);
	}
	
	public void setCommentModify(CommentVO cvo) {
		sql.update("comment.setCommentModify", cvo);
	}
	
	
	

}
