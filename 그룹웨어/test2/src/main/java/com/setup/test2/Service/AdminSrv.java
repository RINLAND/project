package com.setup.test2.Service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminSrv {
	
	 @Autowired
	    private SqlSessionTemplate sqlSession;    
	        

	    public List<?> selectTeamBoard() {
	        return sqlSession.selectList("selectTeamBoard");
	    }
	    
	    public List<?> selectTimeLine() {
	        return sqlSession.selectList("main.selectTimeLine");
	    }
	    
	    public List<?> selectNoticeListTop5() {
	        return sqlSession.selectList("selectNoticeListTop5");
	    }
	    
	   
	    
}
