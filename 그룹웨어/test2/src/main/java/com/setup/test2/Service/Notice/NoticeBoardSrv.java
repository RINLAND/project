package com.setup.test2.Service.Notice;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.Notice.NoticeBoardVO;
import com.setup.test2.Model.Notice.PageVO;

@Service
public class NoticeBoardSrv {
	@Autowired
	private SqlSessionTemplate sqlSession;	
		
    public List<?> selectBoardList() throws Exception {
		return sqlSession.selectList("notice.selectBoard1List");
    }
    
    
    public Integer selectBoardCount() throws Exception {
  		return sqlSession.selectOne("selectBoard2Count");
      }
      public List<?> selectBoardList(PageVO param) throws Exception {
  		return sqlSession.selectList("selectBoard2List", param);
      }
      
      public void insertBoard(NoticeBoardVO nvo) throws Exception {
  		sqlSession.insert("insertBoard2", nvo);
      }
      public void updateBoard(NoticeBoardVO nvo) throws Exception {
  		sqlSession.insert("updateBoard2", nvo);
      }
   
      public NoticeBoardVO selectBoardOne(String param) throws Exception {
  		return sqlSession.selectOne("selectBoard2One", param);
      }
      
      public void updateBoard2Read(String param) throws Exception {
  		sqlSession.insert("updateBoard2Read", param);
      }
      
      public void deleteBoardOne(String param) throws Exception {
  		sqlSession.delete("deleteBoard2One", param);
      }
    
}
