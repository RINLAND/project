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
	private SqlSession sql;
	
	
	public List<ArticleVO> getArticleList(
			int start, int end,
			String words, 
			String searchOpt,
			String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		return sql.selectList("article.getArticleList", map);
	}

	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		return sql.selectOne("article.getArticleTotalCount", map);
	}

	
	public int setArticle(ArticleVO vo) {
		return sql.insert("article.setArticle", vo);
	}

	
	public ArticleVO getArticleOne(ArticleVO avo) {
		return sql.selectOne("article.getArticleOne", avo);
	}

	
	public void hitUp(ArticleVO avo) {
		sql.update("article.hitUp", avo);
	}
	
	
	public int setArticleModify(ArticleVO vo) {
	System.out.println(vo.getAid());
	System.out.println(vo.getBoardCode());
		return sql.update("article.setArticleModify", vo);
	}

	
	public int setArticleDelete(int aid, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("boardCode", boardCode);
		return sql.delete("article.setArticleDelete", map);
	}

	
	public BoardVO getBoardOne(String boardCode) {
		return sql.selectOne("article.getBoardOne", boardCode);
	}

	
	public int setArticleDeleteAll(int aid, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("boardCode", boardCode);
		return sql.delete("article.setArticleDeleteAll", map);
	}
	
	/** 게시판 - 답글 정보  조회 */
	public ArticleVO getArticleReplyInfo(ArticleVO avo) throws Exception {
		return sql.selectOne("article.getArticleReplyInfo", avo);
	}
	
	/** 게시판 - 답글의 순서 수정 */
	public int setArticleRef(ArticleVO avo) throws Exception {

		return sql.update("article.setArticleRef", avo);
	}
	
	/** 게시판 - 답글 등록 */
	public int setArticleReply(ArticleVO avo) throws Exception {
		return sql.insert("article.setArticleReply", avo);
	}
	
}
