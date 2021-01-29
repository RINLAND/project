package com.setup.test2.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Repository.EmpDao;

@Service
public class EmpSrvImpl implements EmpSrv {

	@Autowired
	EmpDao empdao;
	
	@Override
	public void setEmpDeleteOne(String empNum) {
		empdao.setEmpDeleteOne(empNum);
	}
	
	@Override
	public void setEmpDeleteAll(int empId) {
		empdao.setEmpDeleteAll(empId);
	}

	@Override
	public List<EmpVO> getEmpListAll(int start, int end, String words, String searchOpt) {
		
		return empdao.getEmpListAll(start, end, words, searchOpt);
	}

	@Override
	public int getEmpCount(String searchOpt, String words) {
	
		return empdao.getEmpCount(searchOpt, words);
	}

	@Override
	public EmpVO getEmpNeedOne(String sessionNum) {
		return empdao.getEmpNeedOne(sessionNum);
	}

	@Override
	public void setEmpConfirmChange(String empConfirm, int empId) {
	
		
		empdao.setEmpConfirmChange(empConfirm, empId);
		
	}

	@Override
	public void setEmpAuthChange(int empAuth, int empId) {
		
		empdao.setEmpAuthChange(empAuth, empId);
		
	}

	@Override
	public void setEmpRegOthers(EmpVO evo) {
		empdao.setEmpRegOthers(evo);
	}

	@Override
	public EmpVO getEmployeeNeedOne(EmpVO evo) {
		return empdao.getEmployeeNeedOne(evo);
	}

	
}
