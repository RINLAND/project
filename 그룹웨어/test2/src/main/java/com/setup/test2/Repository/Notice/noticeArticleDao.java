package com.setup.test2.Repository.Notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import com.setup.test2.Model.Notice.noticeArticleVO;

@Repository
public class noticeArticleDao {
	
	@Autowired
	private SqlSession sql;
	
	
	public List<noticeArticleVO> getArticleList(
			int start, int end,
			String words, 
			String searchOpt
			) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		
		return sql.selectList("notice.getArticleList", map);
	}

	
	public int getArticleTotalCount(String words, String searchOpt) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		
		return sql.selectOne("notice.getArticleTotalCount", map);
	}

	
	public int setArticle(noticeArticleVO vo) {
		return sql.insert("notice.setArticle", vo);
	}

	
	public noticeArticleVO getArticleOne(noticeArticleVO avo) {
		return sql.selectOne("notice.getArticleOne", avo);
	}

	
	public void hitUp(noticeArticleVO avo) {
		sql.update("notice.hitUp", avo);
	}
	
	
	public int setArticleModify(noticeArticleVO vo) {
	
		return sql.update("notice.setArticleModify", vo);
	}

	
	public int setArticleDelete(int aid) {
		
	
		return sql.delete("notice.setArticleDelete", aid);
	}

	
	
	
	public int setArticleDeleteAll(int aid) {
		
		return sql.delete("notice.setArticleDeleteAll", aid);
	}
	
	
	
}
