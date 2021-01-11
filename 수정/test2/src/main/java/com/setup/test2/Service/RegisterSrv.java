package com.setup.test2.Service;

import java.util.List;



import com.setup.test2.Model.EmpVO;
import com.setup.test2.Model.GradeVO;
import com.setup.test2.Model.TeamVO;




public interface RegisterSrv {

public List<TeamVO> getTeamList();
	
	public List<GradeVO> getGradeList();
	
	public int getEmpNumCheck(String empNum);
	
	public void setRegister(EmpVO evo);
	
	public void setRegisterOthersOne(EmpVO evo);
		
	public void setEmployeeAuthChange(String auth, String empNum);
	
	
}
