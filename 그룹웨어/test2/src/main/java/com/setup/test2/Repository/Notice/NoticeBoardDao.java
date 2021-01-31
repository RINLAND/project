package com.setup.test2.Repository.Notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.PostVO;
import com.setup.test2.Model.Notice.NoticeBoardVO;


@Repository
public class NoticeBoardDao {
	@Autowired 
	SqlSession sql;
	
	public void setBoard(NoticeBoardVO fvo) {
		sql.insert("notice.setBoard", fvo);
	}
	
	
	public void createArticleTbl(String boardCode) {
		String str = "CREATE TABLE gat_noticeArticle_" + boardCode;
		str += "(aid int not null auto_increment primary key,";
		str += "division char(1),";
		str += "subject varchar(300),";
		str += "writer varchar(20) not null,";
		str += "content text,";
		str += "regdate datetime,";
		str += "hit int default 0,";
		str += "fileName varchar(300),";
		str += "fileOriName varchar(300),";
		str += "fileUrl varchar(500),";
		str += "ref int,";
		str += "re_step int,";
		str += "re_level int);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.update("notice.createArticleTbl", map);

	}
	
	public void createCommentTbl(String boardCode) {
		String str = "CREATE TABLE gat_noticeComment_" + boardCode;
		str += "(cid int not null auto_increment primary key,";
		str += "aid int not null,";
		str += "comment text,";
		str += "who varchar(20),";
		str += "regdate datetime);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.update("notice.createCommentTbl", map);
	}
	
	
	public List<NoticeBoardVO> getBoardList(int start, int end) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sql.selectList("notice.getBoardList", map);
		
	}
	
	
	
	public void setBoardDel(String boardCode) {
		sql.delete("notice.setBoardDel", boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		String str = "drop TABLE gat_noticeArticle_" + boardCode;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.insert("notice.dropArticleTbl", map);
	}

	public void dropCommentTbl(String boardCode) {
		String str = "drop TABLE gat_noticeComment_" + boardCode;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.insert("notice.dropCommentTbl", map);
	}
	
	public void setBoardModify(NoticeBoardVO nvo) {
		sql.update("notice.setBoardModify", nvo);
		
	}
	
	public int getBoardCount() {
		return sql.selectOne("notice.getBoardCount");
	}
	
	public List<PostVO> getPostList() {
		return sql.selectList("notice.getPostList");
	}
}
