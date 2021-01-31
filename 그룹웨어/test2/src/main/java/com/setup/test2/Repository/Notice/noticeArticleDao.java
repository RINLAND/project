package com.setup.test2.Repository.Notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.freeBoard.freeArticleVO;
import com.setup.test2.Model.freeBoard.freeBoardVO;

@Repository
public class NoticeArticleDao {
	@Autowired
	private SqlSession sql;
	
	
	public List<freeArticleVO> getArticleList(
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
		return sql.selectList("freeArticle.getArticleList", map);
	}

	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		return sql.selectOne("freeArticle.getArticleTotalCount", map);
	}

	
	public int setArticle(freeArticleVO favo) {
		return sql.insert("freeArticle.setArticle", favo);
	}

	
	public freeArticleVO getArticleOne(freeArticleVO favo) {
		return sql.selectOne("freeArticle.getArticleOne", favo);
	}

	
	public void hitUp(freeArticleVO favo) {
		sql.update("freeArticle.hitUp", favo);
	}
	
	
	public int setArticleModify(freeArticleVO vo) {
	System.out.println(vo.getAid());
	System.out.println(vo.getBoardCode());
		return sql.update("freeArticle.setArticleModify", vo);
	}

	
	public int setArticleDelete(int aid, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("boardCode", boardCode);
		return sql.delete("freeArticle.setArticleDelete", map);
	}

	
	public freeBoardVO getBoardOne(String boardCode) {
		return sql.selectOne("freeArticle.getBoardOne", boardCode);
	}

	
	public int setArticleDeleteAll(int aid, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("boardCode", boardCode);
		return sql.delete("freeArticle.setArticleDeleteAll", map);
	}
	
	/** 게시판 - 답글 정보  조회 */
	public freeArticleVO getArticleReplyInfo(freeArticleVO favo) throws Exception {
		return sql.selectOne("freeArticle.getArticleReplyInfo", favo);
	}
	
	/** 게시판 - 답글의 순서 수정 */
	public int setArticleRef(freeArticleVO favo) throws Exception {

		return sql.update("freeArticle.setArticleRef", favo);
	}
	
	/** 게시판 - 답글 등록 */
	public int setArticleReply(freeArticleVO favo) throws Exception {
		return sql.insert("freeArticle.setArticleReply", favo);
	}

}
