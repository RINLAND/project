package com.setup.test2.Repository.freeBoard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.PostVO;
import com.setup.test2.Model.freeBoard.freeBoardVO;

@Repository
public class freeBoardDao {
	@Autowired 
	SqlSession sql;
	
	public void setBoard(freeBoardVO fvo) {
		sql.insert("freeboard.setBoard", fvo);
	}
	
	
	public void createArticleTbl(String boardCode) {
		String str = "CREATE TABLE gat_freearticle_" + boardCode;
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
		sql.update("freeboard.createArticleTbl", map);

	}
	
	public void createCommentTbl(String boardCode) {
		String str = "CREATE TABLE gat_freecomment_" + boardCode;
		str += "(cid int not null auto_increment primary key,";
		str += "aid int not null,";
		str += "comment text,";
		str += "who varchar(20),";
		str += "regdate datetime);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.update("freeboard.createCommentTbl", map);
	}
	
	
	public List<freeBoardVO> getBoardList(int start, int end) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sql.selectList("freeboard.getBoardList", map);
		
	}
	
	
	
	public void setBoardDel(String boardCode) {
		sql.delete("freeboard.setBoardDel", boardCode);
	}
	
	public void dropArticleTbl(String boardCode) {
		String str = "drop TABLE gat_freeArticle_" + boardCode;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.insert("freeboard.dropArticleTbl", map);
	}

	public void dropCommentTbl(String boardCode) {
		String str = "drop TABLE gat_freeComment_" + boardCode;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sql.insert("freeboard.dropCommentTbl", map);
	}
	
	public void setBoardModify(freeBoardVO fvo) {
		sql.update("freeboard.setBoardModify", fvo);
		
	}
	
	public int getBoardCount() {
		return sql.selectOne("freeboard.getBoardCount");
	}
	
	public List<PostVO> getPostList() {
		return sql.selectList("freeboard.getPostList");
	}
}
