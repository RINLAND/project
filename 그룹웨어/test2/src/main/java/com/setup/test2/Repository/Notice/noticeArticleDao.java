package com.setup.test2.Repository.Notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.Notice.NoticeArticleVO;
import com.setup.test2.Model.Notice.NoticeBoardVO;


@Repository
public class NoticeArticleDao {
	@Autowired
	private SqlSession sql;
	
	
	public List<NoticeArticleVO> getArticleList(
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
		return sql.selectList("noticeArticle.getArticleList", map);
	}

	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("boardCode", boardCode);
		return sql.selectOne("noticeArticle.getArticleTotalCount", map);
	}

	
	public int setArticle(NoticeArticleVO navo) {
		return sql.insert("noticeArticle.setArticle", navo);
	}

	
	public NoticeArticleVO getArticleOne(NoticeArticleVO navo) {
		return sql.selectOne("noticeArticle.getArticleOne", navo);
	}

	
	public void hitUp(NoticeArticleVO navo) {
		sql.update("noticeArticle.hitUp", navo);
	}
	
	
	public int setArticleModify(NoticeArticleVO vo) {
	System.out.println(vo.getAid());
	System.out.println(vo.getBoardCode());
		return sql.update("noticeArticle.setArticleModify", vo);
	}

	
	public int setArticleDelete(int aid, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("boardCode", boardCode);
		return sql.delete("noticeArticle.setArticleDelete", map);
	}

	
	public NoticeBoardVO getBoardOne(String boardCode) {
		return sql.selectOne("noticeArticle.getBoardOne", boardCode);
	}

	
	public int setArticleDeleteAll(int aid, String boardCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("boardCode", boardCode);
		return sql.delete("noticeArticle.setArticleDeleteAll", map);
	}
	
	/** 게시판 - 답글 정보  조회 */
	public NoticeArticleVO getArticleReplyInfo(NoticeArticleVO navo) throws Exception {
		return sql.selectOne("noticeArticle.getArticleReplyInfo", navo);
	}
	
	/** 게시판 - 답글의 순서 수정 */
	public int setArticleRef(NoticeArticleVO navo) throws Exception {

		return sql.update("noticeArticle.setArticleRef", navo);
	}
	
	/** 게시판 - 답글 등록 */
	public int setArticleReply(NoticeArticleVO navo) throws Exception {
		return sql.insert("noticeArticle.setArticleReply", navo);
	}

}
