package com.setup.test2.Repository;


import java.util.List;

import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;




public interface EmpDao {
	
	public void setEmpDeleteOne(String empNum);
	
	public void setEmpDeleteAll(int empId);
	
	public List<EmpVO> getEmpListAll(int start, int end, String words, String searchOpt);
	
	public int getEmpCount(String searchOpt, String words);
	
	public EmpVO getEmpNeedOne(EmpVO evo);

	public void setEmpConfirmChange(String empConfirm, int empId);
	
	public void setEmpAuthChange(int empAuth, int empId);
	
	public void setEmpRegOthers(EmpVO evo);
	
	/**/
	
	
	public List<TeamVO> grpGetTeam();
	
	public List<GradeVO> grpGetGrade();

}
