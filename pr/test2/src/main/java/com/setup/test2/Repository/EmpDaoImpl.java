package com.setup.test2.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;

@Repository
public class EmpDaoImpl implements EmpDao {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void setEmpDeleteOne(int eid) {
		 sqlSession.delete("employee.setEmpDelete", eid);		
	}
	
	@Override
	public void setEmpDeleteAll(int eid) {
		 sqlSession.delete("employee.setEmpDeleteAll", eid);
	}

	@Override
	public List<EmpVO> getEmpListAll(int start, int end, String words, String searchOpt) {
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("employee.getEmpList", map);
	}

	@Override
	public int getEmpCount(String searchOpt, String words) {
		Map<String,Object> map =new HashMap<String, Object>();
		
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sqlSession.selectOne("employee.getEmpCount", map);
	}

	@Override
	public EmpVO getEmpNeedOne(EmpVO evo) {
		return sqlSession.selectOne("employee.getEmpNeedOne", evo);
	}

	@Override
	public void setEmpConfirmChange(String empConfirm, int empID) {
	
		Map<String,Object> map =new HashMap<String, Object>();
		map.put("empConfirm", empConfirm);
		map.put("empID", empID);
		sqlSession.update("employee.setEmpConfirmChange", map);
		
	}

	@Override
	public void setEmpAuthChange(int empAuth, int empID) {
		Map<Object,Object> map =new HashMap<Object, Object>();
		map.put("empAuth", empAuth);
		map.put("empID", empID);
		sqlSession.update("employee.setEmpAuthChange", map);
		
	}

	@Override
	public void setEmpRegOthers(EmpVO evo) {
		sqlSession.insert("register.setEmpRegOthers", evo);		
	}

	@Override
	public List<TeamVO> grpGetTeam() {
		return sqlSession.selectList("register.grpGetTeam");
	}

	@Override
	public List<GradeVO> grpGetGrade() {
		return sqlSession.selectList("register.grpGetGrade");
	}
	
	

}
