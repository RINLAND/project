package com.setup.test2.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;
import com.setup.test2.Repository.EmpDao;

@Service
public class EmpSrvImpl implements EmpSrv {

	@Autowired
	EmpDao EmpDao;
	
	@Override
	public void setEmpDeleteOne(int eid) {
		EmpDao.setEmpDeleteOne(eid);
	}
	
	@Override
	public void setEmpDeleteAll(int eid) {
		EmpDao.setEmpDeleteAll(eid);
	}

	@Override
	public List<EmpVO> getEmpListAll(int start, int end, String words, String searchOpt) {
		
		return EmpDao.getEmpListAll(start, end, words, searchOpt);
	}

	@Override
	public int getEmpCount(String searchOpt, String words) {
	
		return EmpDao.getEmpCount(searchOpt, words);
	}

	@Override
	public EmpVO getEmpNeedOne(EmpVO evo) {
		return EmpDao.getEmpNeedOne(evo);
	}

	@Override
	public void setEmpConfirmChange(String empConfirm, int empID) {
	
		
		EmpDao.setEmpConfirmChange(empConfirm, empID);
		
	}

	@Override
	public void setEmpAuthChange(int empAuth, int empID) {
		
		EmpDao.setEmpAuthChange(empAuth, empID);
		
	}

	@Override
	public void setEmpRegOthers(EmpVO evo) {
		EmpDao.setEmpRegOthers(evo);
	}

	@Override
	public List<TeamVO> grpGetTeam() {
		return EmpDao.grpGetTeam();
	}

	@Override
	public List<GradeVO> grpGetGrade() {
		return EmpDao.grpGetGrade();
	}
}
