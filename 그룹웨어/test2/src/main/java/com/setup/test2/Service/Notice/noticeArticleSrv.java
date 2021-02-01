package com.setup.test2.Service.Notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.Notice.NoticeArticleVO;
import com.setup.test2.Model.Notice.NoticeBoardVO;
import com.setup.test2.Repository.Notice.NoticeArticleDao;

@Service
public class NoticeArticleSrv {
	@Autowired
	NoticeArticleDao naDao;
	
	
	public List<NoticeArticleVO> getArticleList(
			int start, int end,
			String words, 
			String searchOpt,
			String boardCode) {
		
		return naDao.getArticleList(start, end, words, searchOpt, boardCode);
	}

	
	public int getArticleTotalCount(String words, String searchOpt, String boardCode) {
		return naDao.getArticleTotalCount(words, searchOpt, boardCode);
	}

	
	public int setArticle(NoticeArticleVO vo) {
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
		
		return naDao.setArticle(vo);
	}

	
	public NoticeArticleVO getArticleOne(NoticeArticleVO navo) {
		return naDao.getArticleOne(navo);
	}

	
	public void hitUp(NoticeArticleVO navo) {
		naDao.hitUp(navo);
	}

	
	public int setArticleDelete(int aid, String boardCode) {
		return naDao.setArticleDelete(aid, boardCode);
	}

	
	public int setArticleModify(NoticeArticleVO vo) {
		return naDao.setArticleModify(vo);
	}

	
	public NoticeBoardVO getBoardOne(String boardCode) {
		return naDao.getBoardOne(boardCode);
	}

	
	public int setArticleDeleteAll(int aid, String boardCode) {
		return naDao.setArticleDeleteAll(aid, boardCode);
	}

	
	
	
	public int setArticleReply(NoticeArticleVO navo) throws Exception {
		
		NoticeArticleVO dto = naDao.getArticleReplyInfo(navo);
		navo.setRef(dto.getRef()); //update
		navo.setRe_step(dto.getRe_step());
		navo.setRe_level(dto.getRe_level());
		
		int result = 0;
		
		result += naDao.setArticleRef(navo);
		result += naDao.setArticleReply(navo);
		
		return result;
	}
	

}
