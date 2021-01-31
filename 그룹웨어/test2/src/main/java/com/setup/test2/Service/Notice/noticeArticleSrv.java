package com.setup.test2.Service.Notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.Notice.noticeArticleVO;
import com.setup.test2.Repository.Notice.noticeArticleDao;



@Service
public class noticeArticleSrv {

	@Autowired
	noticeArticleDao articleDao;
	
	
	public List<noticeArticleVO> getArticleList(
			int start, int end,
			String words, 
			String searchOpt
			) {
		
		return articleDao.getArticleList(start, end, words, searchOpt);
	}

	
	public int getArticleTotalCount(String words, String searchOpt) {
		return articleDao.getArticleTotalCount(words, searchOpt);
	}

	
	public int setArticle(noticeArticleVO vo) {
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

	
	public noticeArticleVO getArticleOne(noticeArticleVO avo) {
		return articleDao.getArticleOne(avo);
	}

	
	public void hitUp(noticeArticleVO avo) {
		articleDao.hitUp(avo);
	}

	
	public int setArticleDelete(int aid) {
		return articleDao.setArticleDelete(aid);
	}

	
	public int setArticleModify(noticeArticleVO vo) {
		return articleDao.setArticleModify(vo);
	}

	
	

	
	public int setArticleDeleteAll(int aid) {
		return articleDao.setArticleDeleteAll(aid);
	}

	
	
	
}
