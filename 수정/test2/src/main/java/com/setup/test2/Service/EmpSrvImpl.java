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
	public void setEmpDeleteOne(String empNum) {
		EmpDao.setEmpDeleteOne(empNum);
	}
	
	@Override
	public void setEmpDeleteAll(int empId) {
		EmpDao.setEmpDeleteAll(empId);
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
	public void setEmpConfirmChange(String empConfirm, int empId) {
	
		
		EmpDao.setEmpConfirmChange(empConfirm, empId);
		
	}

	@Override
	public void setEmpAuthChange(int empAuth, int empId) {
		
		EmpDao.setEmpAuthChange(empAuth, empId);
		
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
