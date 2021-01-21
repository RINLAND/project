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
	ArticleDao aDao;
	
	public BoardVO getBoardInfo(String boardCode) {
		return aDao.getBoardInfo(boardCode);
	}
	
	public List<ArticleVO> getArticleList(String boardCode, int start, int end){
		return aDao.getArticleList(boardCode, start, end);
	}
	
	public void setArticle(ArticleVO avo) {
		
		String subject = avo.getSubject(); 
		subject.replace("<", "&lt;"); 
		subject.replace(">", "&gt;");
		subject.replace(" ", "&nbsp;");
		subject.replace("\n", "<br />");
		
		avo.setSubject(subject); 
		
		aDao.setArticle(avo);
	}
	
	public int getArticleCount(String boardCode) {
		return aDao.getArticleCount(boardCode);
	}
	
	public void hitUp(String boardCode, int aid) {
		aDao.hitUp(boardCode, aid);
	}
	
	public ArticleVO getArticleView(String boardCode, int aid) {
		return aDao.getArticleView(boardCode, aid);
	}
	
	
	
	public ArticleVO getArticleReplyInfo(String boardCode, int aid) {
		return aDao.getArticleReplyInfo(boardCode, aid);
	}
	
	public void setArticleReplyOrder(ArticleVO avo) {
		aDao.setArticleReplyOrder(avo);
	}
	
	public void setArticleReply(ArticleVO avo) {
		ArticleVO vo = aDao.getArticleReplyInfo(avo.getBoardCode(), avo.getAid());
		avo.setRef(vo.getRef());
		avo.setRe_step(vo.getRe_step());
		avo.setRe_level(vo.getRe_level());
		
		aDao.setArticleReplyOrder(avo);
		aDao.setArticleReply(avo);
	}
}
