package com.setup.test2.Service.Notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.freeBoard.freeArticleVO;
import com.setup.test2.Model.freeBoard.freeBoardVO;
import com.setup.test2.Repository.freeBoard.freeArticleDao;

@Service
public class NoticeArticleSrv {
	@Autowired
	freeArticleDao faDao;
	
	
	public List<freeArticleVO> getArticleList(
			int start, int end,
			String words, 
			String searchOpt,
			String boardCode) {
		
		return faDao.getArticleList(start, end, words, searchOpt, boardCode);
	}

	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		return faDao.getArticleTotalCount(words, searchOpt, boardCode);
	}

	
	public int setArticle(freeArticleVO vo) {
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
		
		return faDao.setArticle(vo);
	}

	
	public freeArticleVO getArticleOne(freeArticleVO favo) {
		return faDao.getArticleOne(favo);
	}

	
	public void hitUp(freeArticleVO favo) {
		faDao.hitUp(favo);
	}

	
	public int setArticleDelete(int aid, String boardCode) {
		return faDao.setArticleDelete(aid, boardCode);
	}

	
	public int setArticleModify(freeArticleVO vo) {
		return faDao.setArticleModify(vo);
	}

	
	public freeBoardVO getBoardOne(String boardCode) {
		return faDao.getBoardOne(boardCode);
	}

	
	public int setArticleDeleteAll(int aid, String boardCode) {
		return faDao.setArticleDeleteAll(aid, boardCode);
	}

	
	public freeArticleVO getArticleReplyInfo(freeArticleVO favo) throws Exception {
		return null;
	}

	
	public int setArticleRef(freeArticleVO favo) throws Exception {
		return 0;
	}

	
	public int setArticleReply(freeArticleVO favo) throws Exception {
		
		freeArticleVO dto = faDao.getArticleReplyInfo(favo);
		favo.setRef(dto.getRef()); //update
		favo.setRe_step(dto.getRe_step());
		favo.setRe_level(dto.getRe_level());
		
		int result = 0;
		
		result += faDao.setArticleRef(favo);
		result += faDao.setArticleReply(favo);
		
		return result;
	}
	

}
