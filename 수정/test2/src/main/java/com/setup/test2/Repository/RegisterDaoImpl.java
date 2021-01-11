package com.setup.test2.Repository;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;



@Repository
public class RegisterDaoImpl implements RegisterDao{
	@Autowired
	SqlSession sql;
	
	
	@Override
	public List<TeamVO> getTeamList() {
		return sql.selectList("buseo.getBuseoList");
	}


	@Override
	public List<GradeVO> getGradeList() {
		return sql.selectList("grade.getGradeList");
	}


	@Override
	public int getEmpNumCheck(String empNum) {
		return sql.selectOne("register.getEmpNumCheck", empNum);
	}


	@Override
	public void setRegisterOne(EmpVO evo) {
		sql.insert("register.setRegisterOne", evo);
	}


	@Override
	public void setRegisterOthersOne(EmpVO evo) {
		sql.insert("register.setRegisterOthersOne", evo);
	}

	@Override
	public void setEmployeeAuthChange(HashMap<String, String> map) {
		sql.update("register.setEmployeeAuthChange", map);
	}


	

}
