package com.setup.test2.Repository.Trainee;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.TraineeVO;

@Repository
public class TraineeDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void setTraDeleteOne(int traID) {
		 sqlSession.delete("trainee.setTraDeleteOne", traID);		
	}
	
	public List<TraineeVO> getTraListAll(int start, int end, String words, String searchOpt, String traName) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("words", words);
		map.put("searchOpt", searchOpt);
		map.put("traName", traName);
	
		return sqlSession.selectList("trainee.getTraListAll", map);
	}
	
	public int getTraCount(String searchOpt, String words) {
		Map<String, String> map =new HashMap<String, String>();
		
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sqlSession.selectOne("trainee.getTraCount", map);
	}
	
	public TraineeVO getTraNeedOne(String traName) {
		return sqlSession.selectOne("trainee.getTraNeedOne", traName);
	}
	
	public void setTraRegister(TraineeVO tvo) {
		sqlSession.insert("trainee.setTraRegister", tvo);		
	}

}
