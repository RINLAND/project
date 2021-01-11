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
public class IDnRegDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<TeamVO> grpGetTeam() {
		return sqlSession.selectList("register.grpGetTeam");
	}
	
	public List<GradeVO> grpGetGrade() {
		return sqlSession.selectList("register.grpGetGrade");
	}
	
	public void setEmpRegister(EmpVO evo) {
		sqlSession.insert("register.setEmpRegister", evo);
	}
	
	public int getEmpNumCheck(EmpVO evo) {
		Map<String, String> map = new HashMap<String, String>();  //모르겠으면 object
		map.put("emp_num", evo.getEmpNum() );
		map.put("emp_pwd", evo.getEmpPwd());
		return sqlSession.selectOne("register.getEmpNumCheck", map);
	}
	
	public EmpVO getEmpInfo(EmpVO evo) {
		Map<String, String> map = new HashMap<String, String>(); 
		map.put("emp_num", evo.getEmpNum() );
		map.put("emp_pwd", evo.getEmpPwd());
		return sqlSession.selectOne("register.getEmpInfo", map);
	}
	
	
}
