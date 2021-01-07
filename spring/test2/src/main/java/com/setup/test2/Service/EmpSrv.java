package com.setup.test2.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Repository.EmpDao;



@Service
public class EmpSrv {

	@Autowired
	EmpDao eDao;
	
	public List<EmpVO> getEmpList(int start, int end, String searchOpt, String words) {
		return eDao.getEmpList(start, end, searchOpt, words);
	}
	
	public int getEmpCount(String searchOpt, String words) {
		return eDao.getEmpCount(searchOpt, words);
	}
	
	public void setEmpDelete(int eid) {
		eDao.setEmpDelete(eid);
	}
	
	public void setEmpDeleteAll(int eid) {
		eDao.setEmpDeleteAll(eid);
	}
	
	
	public void setEmpConfirmChange(String empConfirm, int empID) {
		eDao.setEmpConfirmChange(empConfirm, empID);
	}
	
	public void setEmpAuthChange(int empAuth, int empID) {
		eDao.setEmpAuthChange(empAuth, empID);
	}
	
	public EmpVO getEmpOne(String sessionNum) {
		return eDao.getEmpOne(sessionNum);
	}
	
	public void setEmpRegOthers(EmpVO evo) {
		eDao.setEmpRegOthers(evo);
	}
	
	
	public List<TeamVO> grpGetTeam() {
		return eDao.grpGetTeam();
	}
	
	public List<GradeVO> grpGetGrade() {
		return eDao.grpGetGrade();
	}
	
	
}
