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
public class EmpDao {
	

		@Autowired
		SqlSession sql;
		
		public List<EmpVO> getEmpList(int start, int end,String searchOpt, String words ) {
			Map<String,Object> map =new HashMap<String, Object>();
			map.put("searchOpt", searchOpt);
			map.put("words", words);
			map.put("start", start);
			map.put("end", end);
			return sql.selectList("employee.getEmpList", map);
		}
		
		//dao -> map
		public int getEmpCount( String searchOpt, String words) {
			Map<String,Object> map =new HashMap<String, Object>();
			
			map.put("searchOpt", searchOpt);
			map.put("words", words);
			return sql.selectOne("employee.getEmpCount", map);
		}
		
		public void setEmpDelete(int eid) {
			sql.delete("employee.setEmpDelete", eid);
		}
		
		public void setEmpDeleteAll(int eid) {
			sql.delete("employee.setEmpDeleteAll", eid);
		}
		
		
		
		public void setEmpConfirmChange(String empConfirm, int empID) {
			Map<String,Object> map =new HashMap<String, Object>();
			map.put("empConfirm", empConfirm);
			map.put("empID", empID);
			sql.update("employee.setEmpConfirmChange", map);
		}
		
		public void setEmpAuthChange(int empAuth, int empID) {
			Map<Object,Object> map =new HashMap<Object, Object>();
			map.put("empAuth", empAuth);
			map.put("empID", empID);
			sql.update("employee.setEmpAuthChange", map);
		}
		
		public EmpVO getEmpOne(String sessionNum) {
			return sql.selectOne("employee.getEmpOne", sessionNum);
			
		}
		
		public void setEmpRegOthers(EmpVO evo) {
			sql.insert("register.setEmpRegOthers", evo);
		}
		
		
		public List<TeamVO> grpGetTeam() {
			return sql.selectList("register.grpGetTeam");
		}
		
		public List<GradeVO> grpGetGrade() {
			return sql.selectList("register.grpGetGrade");
		}
		

}
