package com.setup.test2.Service.teamBoard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.ArticleVO;
import com.setup.test2.Model.BoardVO;
import com.setup.test2.Repository.teamBoard.ArticleDao;

@Service
public class ArticleSrv {

	@Autowired
	ArticleDao articleDao;
	
	
	public List<ArticleVO> getArticleList(
			int start, int end,
			String words, 
			String searchOpt,
			String boardCode) {
		
		return articleDao.getArticleList(start, end, words, searchOpt, boardCode);
	}

	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		return articleDao.getArticleTotalCount(words, searchOpt, boardCode);
	}

	
	public int setArticle(ArticleVO vo) {
		String subject 	= vo.getSubject();
		String writer 	= vo.getWriter();
		String content 	= vo.getContent();
		
		subject 	= subject.replace("<", "&lt;");
		subject 	= subject.replace("<", "&gt;");
		writer 		= writer.replace("<", "&lt;");
		writer 		= writer.replace("<", "&gt;");
		content 	= content.replace("<", "&lt;");
		content 	= content.replace("<", "&gt;");
		
		subject		= subject.replace(" ", "&nbsp;");
		writer		= writer.replace(" ", "&nbsp;");
		
		content 	= content.replace("\n", "<br />");
		
		vo.setSubject(subject);
		vo.setWriter(writer);
		vo.setContent(content);
		
		return articleDao.setArticle(vo);
	}

	
	public ArticleVO getArticleOne(ArticleVO avo) {
		return articleDao.getArticleOne(avo);
	}

	
	public void hitUp(ArticleVO avo) {
		articleDao.hitUp(avo);
	}

	
	public int setArticleDelete(int aid, String boardCode) {
		return articleDao.setArticleDelete(aid, boardCode);
	}

	
	public int setArticleModify(ArticleVO vo) {
		return articleDao.setArticleModify(vo);
	}

	
	public BoardVO getBoardOne(String boardCode) {
		return articleDao.getBoardOne(boardCode);
	}

	
	public int setArticleDeleteAll(int aid, String boardCode) {
		return articleDao.setArticleDeleteAll(aid, boardCode);
	}

	
	
	
}
