package com.setup.test2.Repository.teamBoard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.ArticleVO;
import com.setup.test2.Model.BoardVO;

@Repository
public class ArticleDao {
	
	@Autowired
	SqlSession sql;
	
	public BoardVO getBoardInfo(String boardCode) {
		return sql.selectOne("article.getBoardInfo", boardCode);
	}
	
	public List<ArticleVO> getArticleList(String boardCode, int start, int end ){
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("boardCode", boardCode);
		return sql.selectList("article.getArticleList", map);
	}
	
	public void setArticle(ArticleVO avo) {
		sql.insert("article.setArticle", avo);
	}
	
	public int getArticleCount(String boardCode) {
		return sql.selectOne("article.getArticleCount", boardCode);
	}
	
	public void hitUp(String boardCode, int aid) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		sql.update("article.hitUp", map);
	}
	
	public ArticleVO getArticleView(String boardCode, int aid) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return sql.selectOne("article.getArticleView", map);
	}
	
	
	
	public ArticleVO getArticleReplyInfo(String boardCode, int aid) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("boardCode", boardCode);
		map.put("aid", aid);
		return sql.selectOne("article.getArticleReplyInfo", map);
	}
	
	public void setArticleReplyOrder(ArticleVO avo) {
		sql.update("article.setArticleReplyOrder", avo);
	}
	
	public void setArticleReply(ArticleVO avo) {
		sql.insert("article.setArticleReply", avo);
	}
	
	
	
	
}
