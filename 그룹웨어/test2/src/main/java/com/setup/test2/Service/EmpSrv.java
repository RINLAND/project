package com.setup.test2.Service;

import java.util.List;



import com.setup.test2.Model.EmpVO;


public interface EmpSrv {
	
	
	public void setEmpDeleteOne(int empId);
	
	public void setEmpDeleteAll(int empId);
	
	public List<EmpVO> getEmpListAll(int start, int end, String words, String searchOpt);
	
	public int getEmpCount(String searchOpt, String words);
	
	public EmpVO getEmpNeedOne(String sessionNum);

	public void setEmpConfirmChange(String empConfirm, int empId);
	
	public void setEmpAuthChange(int empAuth, int empId);
	
	public void setEmpRegOthers(EmpVO evo);
	
	public EmpVO getEmployeeNeedOne(EmpVO evo) ;

	
}
