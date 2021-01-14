package com.setup.test2.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;




@Repository
public class LoginDaoImpl  implements LoginDao{

	@Autowired
	SqlSession sql;

	@Override
	public EmpVO LoginCheck(EmpVO evo) {
		System.out.println("Repository");
		System.out.println("mappers");
		return sql.selectOne("login.LoginCheck", evo);
	}

	@Override
	public void logout(HttpSession httpSession) {}
	
	public List<TeamVO> grpGetTeam() {
		return sql.selectList("register.grpGetTeam");
	}
	
	public List<GradeVO> grpGetGrade() {
		return sql.selectList("register.grpGetGrade");
	}
	
	public void setEmpRegister(EmpVO evo) {
		sql.insert("register.setEmpRegister", evo);
	}
	
	public int getEmpNumCheck(EmpVO evo) {
		Map<String, String> map = new HashMap<String, String>();  
		map.put("empNum", evo.getEmpNum());
		map.put("empPwd", evo.getEmpPwd());
		return sql.selectOne("register.getEmpNumCheck", map);
	}
	
	public EmpVO getEmpInfo(EmpVO evo) {
		Map<String, String> map = new HashMap<String, String>(); 
		map.put("empNum", evo.getEmpNum() );
		map.put("empPwd", evo.getEmpPwd());
		return sql.selectOne("register.getEmpInfo", map);
	}
}
